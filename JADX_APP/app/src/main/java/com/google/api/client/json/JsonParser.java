package com.google.api.client.json;

import com.google.api.client.json.JsonPolymorphicTypeMap;
import com.google.api.client.util.Beta;
import com.google.api.client.util.ClassInfo;
import com.google.api.client.util.Data;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Sets;
import com.google.api.client.util.Types;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public abstract class JsonParser {
    private static WeakHashMap<Class<?>, Field> cachedTypemapFields = new WeakHashMap<>();
    private static final Lock lock = new ReentrantLock();

    public abstract void close();

    public abstract BigInteger getBigIntegerValue();

    public abstract byte getByteValue();

    public abstract String getCurrentName();

    public abstract JsonToken getCurrentToken();

    public abstract BigDecimal getDecimalValue();

    public abstract double getDoubleValue();

    public abstract JsonFactory getFactory();

    public abstract float getFloatValue();

    public abstract int getIntValue();

    public abstract long getLongValue();

    public abstract short getShortValue();

    public abstract String getText();

    public abstract JsonToken nextToken();

    public abstract JsonParser skipChildren();

    public final <T> T parseAndClose(Class<T> cls) {
        return (T) parseAndClose((Class) cls, (CustomizeJsonParser) null);
    }

    @Beta
    public final <T> T parseAndClose(Class<T> cls, CustomizeJsonParser customizeJsonParser) {
        try {
            return (T) parse((Class) cls, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final void skipToKey(String str) {
        skipToKey(Collections.singleton(str));
    }

    public final String skipToKey(Set<String> set) {
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        while (startParsingObjectOrArray == JsonToken.FIELD_NAME) {
            String text = getText();
            nextToken();
            if (!set.contains(text)) {
                skipChildren();
                startParsingObjectOrArray = nextToken();
            } else {
                return text;
            }
        }
        return null;
    }

    private JsonToken startParsing() {
        JsonToken currentToken = getCurrentToken();
        JsonToken nextToken = currentToken == null ? nextToken() : currentToken;
        Preconditions.checkArgument(nextToken != null, "no JSON input found");
        return nextToken;
    }

    private JsonToken startParsingObjectOrArray() {
        JsonToken startParsing = startParsing();
        switch (startParsing) {
            case START_OBJECT:
                JsonToken nextToken = nextToken();
                Preconditions.checkArgument(nextToken == JsonToken.FIELD_NAME || nextToken == JsonToken.END_OBJECT, nextToken);
                return nextToken;
            case START_ARRAY:
                return nextToken();
            default:
                return startParsing;
        }
    }

    public final void parseAndClose(Object obj) {
        parseAndClose(obj, (CustomizeJsonParser) null);
    }

    @Beta
    public final void parseAndClose(Object obj, CustomizeJsonParser customizeJsonParser) {
        try {
            parse(obj, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final <T> T parse(Class<T> cls) {
        return (T) parse((Class) cls, (CustomizeJsonParser) null);
    }

    @Beta
    public final <T> T parse(Class<T> cls, CustomizeJsonParser customizeJsonParser) {
        return (T) parse((Type) cls, false, customizeJsonParser);
    }

    public Object parse(Type type, boolean z) {
        return parse(type, z, (CustomizeJsonParser) null);
    }

    @Beta
    public Object parse(Type type, boolean z, CustomizeJsonParser customizeJsonParser) {
        try {
            if (!Void.class.equals(type)) {
                startParsing();
            }
            return parseValue(null, type, new ArrayList<>(), null, customizeJsonParser, true);
        } finally {
            if (z) {
                close();
            }
        }
    }

    public final void parse(Object obj) {
        parse(obj, (CustomizeJsonParser) null);
    }

    @Beta
    public final void parse(Object obj, CustomizeJsonParser customizeJsonParser) {
        ArrayList<Type> arrayList = new ArrayList<>();
        arrayList.add(obj.getClass());
        parse(arrayList, obj, customizeJsonParser);
    }

    private void parse(ArrayList<Type> arrayList, Object obj, CustomizeJsonParser customizeJsonParser) {
        if (obj instanceof GenericJson) {
            ((GenericJson) obj).setFactory(getFactory());
        }
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        Class<?> cls = obj.getClass();
        ClassInfo m6680of = ClassInfo.m6680of(cls);
        boolean isAssignableFrom = GenericData.class.isAssignableFrom(cls);
        if (!isAssignableFrom && Map.class.isAssignableFrom(cls)) {
            parseMap(null, (Map) obj, Types.getMapValueParameter(cls), arrayList, customizeJsonParser);
            return;
        }
        while (startParsingObjectOrArray == JsonToken.FIELD_NAME) {
            String text = getText();
            nextToken();
            if (customizeJsonParser == null || !customizeJsonParser.stopAt(obj, text)) {
                FieldInfo fieldInfo = m6680of.getFieldInfo(text);
                if (fieldInfo != null) {
                    if (fieldInfo.isFinal() && !fieldInfo.isPrimitive()) {
                        throw new IllegalArgumentException("final array/object fields are not supported");
                    }
                    Field field = fieldInfo.getField();
                    int size = arrayList.size();
                    arrayList.add(field.getGenericType());
                    Object parseValue = parseValue(field, fieldInfo.getGenericType(), arrayList, obj, customizeJsonParser, true);
                    arrayList.remove(size);
                    fieldInfo.setValue(obj, parseValue);
                } else if (isAssignableFrom) {
                    ((GenericData) obj).set(text, parseValue(null, null, arrayList, obj, customizeJsonParser, true));
                } else {
                    if (customizeJsonParser != null) {
                        customizeJsonParser.handleUnrecognizedKey(obj, text);
                    }
                    skipChildren();
                }
                startParsingObjectOrArray = nextToken();
            } else {
                return;
            }
        }
    }

    public final <T> Collection<T> parseArrayAndClose(Class<?> cls, Class<T> cls2) {
        return parseArrayAndClose(cls, cls2, (CustomizeJsonParser) null);
    }

    @Beta
    public final <T> Collection<T> parseArrayAndClose(Class<?> cls, Class<T> cls2, CustomizeJsonParser customizeJsonParser) {
        try {
            return parseArray(cls, cls2, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final <T> void parseArrayAndClose(Collection<? super T> collection, Class<T> cls) {
        parseArrayAndClose(collection, cls, (CustomizeJsonParser) null);
    }

    @Beta
    public final <T> void parseArrayAndClose(Collection<? super T> collection, Class<T> cls, CustomizeJsonParser customizeJsonParser) {
        try {
            parseArray(collection, cls, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final <T> Collection<T> parseArray(Class<?> cls, Class<T> cls2) {
        return parseArray(cls, cls2, (CustomizeJsonParser) null);
    }

    @Beta
    public final <T> Collection<T> parseArray(Class<?> cls, Class<T> cls2, CustomizeJsonParser customizeJsonParser) {
        Collection<T> collection = (Collection<T>) Data.newCollectionInstance(cls);
        parseArray(collection, cls2, customizeJsonParser);
        return collection;
    }

    public final <T> void parseArray(Collection<? super T> collection, Class<T> cls) {
        parseArray(collection, cls, (CustomizeJsonParser) null);
    }

    @Beta
    public final <T> void parseArray(Collection<? super T> collection, Class<T> cls, CustomizeJsonParser customizeJsonParser) {
        parseArray(null, collection, cls, new ArrayList<>(), customizeJsonParser);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> void parseArray(Field field, Collection<T> collection, Type type, ArrayList<Type> arrayList, CustomizeJsonParser customizeJsonParser) {
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        while (startParsingObjectOrArray != JsonToken.END_ARRAY) {
            collection.add(parseValue(field, type, arrayList, collection, customizeJsonParser, true));
            startParsingObjectOrArray = nextToken();
        }
    }

    private void parseMap(Field field, Map<String, Object> map, Type type, ArrayList<Type> arrayList, CustomizeJsonParser customizeJsonParser) {
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        while (startParsingObjectOrArray == JsonToken.FIELD_NAME) {
            String text = getText();
            nextToken();
            if (customizeJsonParser == null || !customizeJsonParser.stopAt(map, text)) {
                map.put(text, parseValue(field, type, arrayList, map, customizeJsonParser, true));
                startParsingObjectOrArray = nextToken();
            } else {
                return;
            }
        }
    }

    private final Object parseValue(Field field, Type type, ArrayList<Type> arrayList, Object obj, CustomizeJsonParser customizeJsonParser, boolean z) {
        Type type2;
        Type resolveWildcardTypeOrTypeVariable = Data.resolveWildcardTypeOrTypeVariable(arrayList, type);
        Class<?> cls = resolveWildcardTypeOrTypeVariable instanceof Class ? (Class) resolveWildcardTypeOrTypeVariable : null;
        if (resolveWildcardTypeOrTypeVariable instanceof ParameterizedType) {
            cls = Types.getRawClass((ParameterizedType) resolveWildcardTypeOrTypeVariable);
        }
        if (cls == Void.class) {
            skipChildren();
            return null;
        }
        JsonToken currentToken = getCurrentToken();
        try {
            switch (getCurrentToken()) {
                case START_OBJECT:
                case FIELD_NAME:
                case END_OBJECT:
                    Preconditions.checkArgument(!Types.isArray(resolveWildcardTypeOrTypeVariable), "expected object or map type but got %s", resolveWildcardTypeOrTypeVariable);
                    Field cachedTypemapFieldFor = z ? getCachedTypemapFieldFor(cls) : null;
                    Object obj2 = null;
                    if (cls != null && customizeJsonParser != null) {
                        obj2 = customizeJsonParser.newInstanceForObject(obj, cls);
                    }
                    boolean z2 = cls != null && Types.isAssignableToOrFrom(cls, Map.class);
                    if (cachedTypemapFieldFor != null) {
                        obj2 = new GenericJson();
                    } else if (obj2 == null) {
                        if (z2 || cls == null) {
                            obj2 = Data.newMapInstance(cls);
                        } else {
                            obj2 = Types.newInstance(cls);
                        }
                    }
                    int size = arrayList.size();
                    if (resolveWildcardTypeOrTypeVariable != null) {
                        arrayList.add(resolveWildcardTypeOrTypeVariable);
                    }
                    if (z2 && !GenericData.class.isAssignableFrom(cls)) {
                        Type mapValueParameter = Map.class.isAssignableFrom(cls) ? Types.getMapValueParameter(resolveWildcardTypeOrTypeVariable) : null;
                        if (mapValueParameter != null) {
                            parseMap(field, (Map) obj2, mapValueParameter, arrayList, customizeJsonParser);
                            return obj2;
                        }
                    }
                    parse(arrayList, obj2, customizeJsonParser);
                    if (resolveWildcardTypeOrTypeVariable != null) {
                        arrayList.remove(size);
                    }
                    if (cachedTypemapFieldFor != null) {
                        Object obj3 = ((GenericJson) obj2).get(cachedTypemapFieldFor.getName());
                        Preconditions.checkArgument(obj3 != null, "No value specified for @JsonPolymorphicTypeMap field");
                        String obj4 = obj3.toString();
                        Class<?> cls2 = null;
                        JsonPolymorphicTypeMap.TypeDef[] typeDefinitions = ((JsonPolymorphicTypeMap) cachedTypemapFieldFor.getAnnotation(JsonPolymorphicTypeMap.class)).typeDefinitions();
                        int length = typeDefinitions.length;
                        int i = 0;
                        while (true) {
                            if (i < length) {
                                JsonPolymorphicTypeMap.TypeDef typeDef = typeDefinitions[i];
                                if (!typeDef.key().equals(obj4)) {
                                    i++;
                                } else {
                                    cls2 = typeDef.ref();
                                }
                            }
                        }
                        boolean z3 = cls2 != null;
                        String valueOf = String.valueOf(obj4);
                        Preconditions.checkArgument(z3, valueOf.length() != 0 ? "No TypeDef annotation found with key: ".concat(valueOf) : new String("No TypeDef annotation found with key: "));
                        JsonFactory factory = getFactory();
                        JsonParser createJsonParser = factory.createJsonParser(factory.toString(obj2));
                        createJsonParser.startParsing();
                        return createJsonParser.parseValue(field, cls2, arrayList, null, null, false);
                    }
                    return obj2;
                case START_ARRAY:
                case END_ARRAY:
                    boolean isArray = Types.isArray(resolveWildcardTypeOrTypeVariable);
                    Preconditions.checkArgument(resolveWildcardTypeOrTypeVariable == null || isArray || (cls != null && Types.isAssignableToOrFrom(cls, Collection.class)), "expected collection or array type but got %s", resolveWildcardTypeOrTypeVariable);
                    Collection<Object> collection = null;
                    if (customizeJsonParser != null && field != null) {
                        collection = customizeJsonParser.newInstanceForArray(obj, field);
                    }
                    if (collection == null) {
                        collection = Data.newCollectionInstance(resolveWildcardTypeOrTypeVariable);
                    }
                    if (isArray) {
                        type2 = Types.getArrayComponentType(resolveWildcardTypeOrTypeVariable);
                    } else if (cls == null || !Iterable.class.isAssignableFrom(cls)) {
                        type2 = null;
                    } else {
                        type2 = Types.getIterableParameter(resolveWildcardTypeOrTypeVariable);
                    }
                    Type resolveWildcardTypeOrTypeVariable2 = Data.resolveWildcardTypeOrTypeVariable(arrayList, type2);
                    parseArray(field, collection, resolveWildcardTypeOrTypeVariable2, arrayList, customizeJsonParser);
                    return isArray ? Types.toArray(collection, Types.getRawArrayComponentType(arrayList, resolveWildcardTypeOrTypeVariable2)) : collection;
                case VALUE_TRUE:
                case VALUE_FALSE:
                    Preconditions.checkArgument(resolveWildcardTypeOrTypeVariable == null || cls == Boolean.TYPE || (cls != null && cls.isAssignableFrom(Boolean.class)), "expected type Boolean or boolean but got %s", resolveWildcardTypeOrTypeVariable);
                    return currentToken == JsonToken.VALUE_TRUE ? Boolean.TRUE : Boolean.FALSE;
                case VALUE_NUMBER_FLOAT:
                case VALUE_NUMBER_INT:
                    Preconditions.checkArgument(field == null || field.getAnnotation(JsonString.class) == null, "number type formatted as a JSON number cannot use @JsonString annotation");
                    if (cls == null || cls.isAssignableFrom(BigDecimal.class)) {
                        return getDecimalValue();
                    }
                    if (cls == BigInteger.class) {
                        return getBigIntegerValue();
                    }
                    if (cls == Double.class || cls == Double.TYPE) {
                        return Double.valueOf(getDoubleValue());
                    }
                    if (cls == Long.class || cls == Long.TYPE) {
                        return Long.valueOf(getLongValue());
                    }
                    if (cls == Float.class || cls == Float.TYPE) {
                        return Float.valueOf(getFloatValue());
                    }
                    if (cls == Integer.class || cls == Integer.TYPE) {
                        return Integer.valueOf(getIntValue());
                    }
                    if (cls == Short.class || cls == Short.TYPE) {
                        return Short.valueOf(getShortValue());
                    }
                    if (cls == Byte.class || cls == Byte.TYPE) {
                        return Byte.valueOf(getByteValue());
                    }
                    String valueOf2 = String.valueOf(String.valueOf(resolveWildcardTypeOrTypeVariable));
                    throw new IllegalArgumentException(new StringBuilder(valueOf2.length() + 30).append("expected numeric type but got ").append(valueOf2).toString());
                case VALUE_STRING:
                    Preconditions.checkArgument((cls != null && Number.class.isAssignableFrom(cls) && (field == null || field.getAnnotation(JsonString.class) == null)) ? false : true, "number field formatted as a JSON string must use the @JsonString annotation");
                    return Data.parsePrimitiveValue(resolveWildcardTypeOrTypeVariable, getText());
                case VALUE_NULL:
                    Preconditions.checkArgument(cls == null || !cls.isPrimitive(), "primitive number field but found a JSON null");
                    if (cls != null && (cls.getModifiers() & 1536) != 0) {
                        if (Types.isAssignableToOrFrom(cls, Collection.class)) {
                            return Data.nullOf(Data.newCollectionInstance(resolveWildcardTypeOrTypeVariable).getClass());
                        }
                        if (Types.isAssignableToOrFrom(cls, Map.class)) {
                            return Data.nullOf(Data.newMapInstance(cls).getClass());
                        }
                    }
                    return Data.nullOf(Types.getRawArrayComponentType(arrayList, resolveWildcardTypeOrTypeVariable));
                default:
                    String valueOf3 = String.valueOf(String.valueOf(currentToken));
                    throw new IllegalArgumentException(new StringBuilder(valueOf3.length() + 27).append("unexpected JSON node type: ").append(valueOf3).toString());
            }
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder();
            String currentName = getCurrentName();
            if (currentName != null) {
                sb.append("key ").append(currentName);
            }
            if (field != null) {
                if (currentName != null) {
                    sb.append(", ");
                }
                sb.append("field ").append(field);
            }
            throw new IllegalArgumentException(sb.toString(), e);
        }
    }

    private static Field getCachedTypemapFieldFor(Class<?> cls) {
        Field field;
        if (cls == null) {
            return null;
        }
        lock.lock();
        try {
            if (cachedTypemapFields.containsKey(cls)) {
                return cachedTypemapFields.get(cls);
            }
            Iterator<FieldInfo> it = ClassInfo.m6680of(cls).getFieldInfos().iterator();
            Field field2 = null;
            while (it.hasNext()) {
                Field field3 = it.next().getField();
                JsonPolymorphicTypeMap jsonPolymorphicTypeMap = (JsonPolymorphicTypeMap) field3.getAnnotation(JsonPolymorphicTypeMap.class);
                if (jsonPolymorphicTypeMap != null) {
                    Preconditions.checkArgument(field2 == null, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", cls);
                    Preconditions.checkArgument(Data.isPrimitive(field3.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", cls, field3.getType());
                    JsonPolymorphicTypeMap.TypeDef[] typeDefinitions = jsonPolymorphicTypeMap.typeDefinitions();
                    HashSet newHashSet = Sets.newHashSet();
                    Preconditions.checkArgument(typeDefinitions.length > 0, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
                    for (JsonPolymorphicTypeMap.TypeDef typeDef : typeDefinitions) {
                        Preconditions.checkArgument(newHashSet.add(typeDef.key()), "Class contains two @TypeDef annotations with identical key: %s", typeDef.key());
                    }
                    field = field3;
                } else {
                    field = field2;
                }
                field2 = field;
            }
            cachedTypemapFields.put(cls, field2);
            lock.unlock();
            return field2;
        } finally {
            lock.unlock();
        }
    }
}
