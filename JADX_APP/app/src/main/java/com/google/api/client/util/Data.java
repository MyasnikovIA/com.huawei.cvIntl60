package com.google.api.client.util;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class Data {
    public static final Boolean NULL_BOOLEAN = new Boolean(true);
    public static final String NULL_STRING = new String();
    public static final Character NULL_CHARACTER = new Character(0);
    public static final Byte NULL_BYTE = new Byte((byte) 0);
    public static final Short NULL_SHORT = new Short((short) 0);
    public static final Integer NULL_INTEGER = new Integer(0);
    public static final Float NULL_FLOAT = new Float(0.0f);
    public static final Long NULL_LONG = new Long(0);
    public static final Double NULL_DOUBLE = new Double(0.0d);
    public static final BigInteger NULL_BIG_INTEGER = new BigInteger("0");
    public static final BigDecimal NULL_BIG_DECIMAL = new BigDecimal("0");
    public static final DateTime NULL_DATE_TIME = new DateTime(0);
    private static final ConcurrentHashMap<Class<?>, Object> NULL_CACHE = new ConcurrentHashMap<>();

    static {
        NULL_CACHE.put(Boolean.class, NULL_BOOLEAN);
        NULL_CACHE.put(String.class, NULL_STRING);
        NULL_CACHE.put(Character.class, NULL_CHARACTER);
        NULL_CACHE.put(Byte.class, NULL_BYTE);
        NULL_CACHE.put(Short.class, NULL_SHORT);
        NULL_CACHE.put(Integer.class, NULL_INTEGER);
        NULL_CACHE.put(Float.class, NULL_FLOAT);
        NULL_CACHE.put(Long.class, NULL_LONG);
        NULL_CACHE.put(Double.class, NULL_DOUBLE);
        NULL_CACHE.put(BigInteger.class, NULL_BIG_INTEGER);
        NULL_CACHE.put(BigDecimal.class, NULL_BIG_DECIMAL);
        NULL_CACHE.put(DateTime.class, NULL_DATE_TIME);
    }

    public static <T> T nullOf(Class<?> cls) {
        int i = 0;
        Object obj = (T) NULL_CACHE.get(cls);
        if (obj == null) {
            synchronized (NULL_CACHE) {
                obj = NULL_CACHE.get(cls);
                if (obj == null) {
                    if (cls.isArray()) {
                        Class<?> cls2 = cls;
                        do {
                            cls2 = cls2.getComponentType();
                            i++;
                        } while (cls2.isArray());
                        obj = (T) Array.newInstance(cls2, new int[i]);
                    } else if (cls.isEnum()) {
                        FieldInfo fieldInfo = ClassInfo.m6680of(cls).getFieldInfo(null);
                        Preconditions.checkNotNull(fieldInfo, "enum missing constant with @NullValue annotation: %s", cls);
                        obj = fieldInfo.enumValue();
                    } else {
                        obj = Types.newInstance(cls);
                    }
                    NULL_CACHE.put(cls, obj);
                }
            }
        }
        return (T) obj;
    }

    public static boolean isNull(Object obj) {
        return obj != null && obj == NULL_CACHE.get(obj.getClass());
    }

    public static Map<String, Object> mapOf(Object obj) {
        if (obj == null || isNull(obj)) {
            return Collections.emptyMap();
        }
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return new DataMap(obj, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T clone(T t) {
        T t2;
        if (t == 0 || isPrimitive(t.getClass())) {
            return t;
        }
        if (t instanceof GenericData) {
            return (T) ((GenericData) t).clone();
        }
        Class<?> cls = t.getClass();
        if (cls.isArray()) {
            t2 = (T) Array.newInstance(cls.getComponentType(), Array.getLength(t));
        } else if (t instanceof ArrayMap) {
            t2 = (T) ((ArrayMap) t).clone();
        } else {
            t2 = (T) Types.newInstance(cls);
        }
        deepCopy(t, t2);
        return t2;
    }

    public static void deepCopy(Object obj, Object obj2) {
        int i = 0;
        Class<?> cls = obj.getClass();
        Preconditions.checkArgument(cls == obj2.getClass());
        if (cls.isArray()) {
            Preconditions.checkArgument(Array.getLength(obj) == Array.getLength(obj2));
            Iterator it = Types.iterableOf(obj).iterator();
            while (it.hasNext()) {
                Array.set(obj2, i, clone(it.next()));
                i++;
            }
            return;
        }
        if (Collection.class.isAssignableFrom(cls)) {
            Collection collection = (Collection) obj;
            if (ArrayList.class.isAssignableFrom(cls)) {
                ((ArrayList) obj2).ensureCapacity(collection.size());
            }
            Collection collection2 = (Collection) obj2;
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                collection2.add(clone(it2.next()));
            }
            return;
        }
        boolean isAssignableFrom = GenericData.class.isAssignableFrom(cls);
        if (isAssignableFrom || !Map.class.isAssignableFrom(cls)) {
            ClassInfo m6680of = isAssignableFrom ? ((GenericData) obj).classInfo : ClassInfo.m6680of(cls);
            Iterator<String> it3 = m6680of.names.iterator();
            while (it3.hasNext()) {
                FieldInfo fieldInfo = m6680of.getFieldInfo(it3.next());
                if (!fieldInfo.isFinal() && (!isAssignableFrom || !fieldInfo.isPrimitive())) {
                    Object value = fieldInfo.getValue(obj);
                    if (value != null) {
                        fieldInfo.setValue(obj2, clone(value));
                    }
                }
            }
            return;
        }
        if (ArrayMap.class.isAssignableFrom(cls)) {
            ArrayMap arrayMap = (ArrayMap) obj2;
            ArrayMap arrayMap2 = (ArrayMap) obj;
            int size = arrayMap2.size();
            while (i < size) {
                arrayMap.set(i, clone(arrayMap2.getValue(i)));
                i++;
            }
            return;
        }
        Map map = (Map) obj2;
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            map.put(entry.getKey(), clone(entry.getValue()));
        }
    }

    public static boolean isPrimitive(Type type) {
        Type bound = type instanceof WildcardType ? Types.getBound((WildcardType) type) : type;
        if (!(bound instanceof Class)) {
            return false;
        }
        Class cls = (Class) bound;
        return cls.isPrimitive() || cls == Character.class || cls == String.class || cls == Integer.class || cls == Long.class || cls == Short.class || cls == Byte.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == DateTime.class || cls == Boolean.class;
    }

    public static boolean isValueOfPrimitiveType(Object obj) {
        return obj == null || isPrimitive(obj.getClass());
    }

    public static Object parsePrimitiveValue(Type type, String str) {
        Class cls = type instanceof Class ? (Class) type : null;
        if (type == null || cls != null) {
            if (cls == Void.class) {
                return null;
            }
            if (str != null && cls != null && !cls.isAssignableFrom(String.class)) {
                if (cls == Character.class || cls == Character.TYPE) {
                    if (str.length() != 1) {
                        String valueOf = String.valueOf(String.valueOf(cls));
                        throw new IllegalArgumentException(new StringBuilder(valueOf.length() + 37).append("expected type Character/char but got ").append(valueOf).toString());
                    }
                    return Character.valueOf(str.charAt(0));
                }
                if (cls == Boolean.class || cls == Boolean.TYPE) {
                    return Boolean.valueOf(str);
                }
                if (cls == Byte.class || cls == Byte.TYPE) {
                    return Byte.valueOf(str);
                }
                if (cls == Short.class || cls == Short.TYPE) {
                    return Short.valueOf(str);
                }
                if (cls == Integer.class || cls == Integer.TYPE) {
                    return Integer.valueOf(str);
                }
                if (cls == Long.class || cls == Long.TYPE) {
                    return Long.valueOf(str);
                }
                if (cls == Float.class || cls == Float.TYPE) {
                    return Float.valueOf(str);
                }
                if (cls == Double.class || cls == Double.TYPE) {
                    return Double.valueOf(str);
                }
                if (cls == DateTime.class) {
                    return DateTime.parseRfc3339(str);
                }
                if (cls == BigInteger.class) {
                    return new BigInteger(str);
                }
                if (cls == BigDecimal.class) {
                    return new BigDecimal(str);
                }
                if (cls.isEnum()) {
                    return ClassInfo.m6680of(cls).getFieldInfo(str).enumValue();
                }
            } else {
                return str;
            }
        }
        String valueOf2 = String.valueOf(String.valueOf(type));
        throw new IllegalArgumentException(new StringBuilder(valueOf2.length() + 35).append("expected primitive class, but got: ").append(valueOf2).toString());
    }

    public static Collection<Object> newCollectionInstance(Type type) {
        Type bound = type instanceof WildcardType ? Types.getBound((WildcardType) type) : type;
        Type rawType = bound instanceof ParameterizedType ? ((ParameterizedType) bound).getRawType() : bound;
        Class cls = rawType instanceof Class ? (Class) rawType : null;
        if (rawType == null || (rawType instanceof GenericArrayType) || (cls != null && (cls.isArray() || cls.isAssignableFrom(ArrayList.class)))) {
            return new ArrayList();
        }
        if (cls == null) {
            String valueOf = String.valueOf(String.valueOf(rawType));
            throw new IllegalArgumentException(new StringBuilder(valueOf.length() + 39).append("unable to create new instance of type: ").append(valueOf).toString());
        }
        if (cls.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        }
        if (cls.isAssignableFrom(TreeSet.class)) {
            return new TreeSet();
        }
        return (Collection) Types.newInstance(cls);
    }

    public static Map<String, Object> newMapInstance(Class<?> cls) {
        if (cls == null || cls.isAssignableFrom(ArrayMap.class)) {
            return ArrayMap.create();
        }
        if (cls.isAssignableFrom(TreeMap.class)) {
            return new TreeMap();
        }
        return (Map) Types.newInstance(cls);
    }

    public static Type resolveWildcardTypeOrTypeVariable(List<Type> list, Type type) {
        Type bound = type instanceof WildcardType ? Types.getBound((WildcardType) type) : type;
        while (bound instanceof TypeVariable) {
            Type resolveTypeVariable = Types.resolveTypeVariable(list, (TypeVariable) bound);
            if (resolveTypeVariable == null) {
                resolveTypeVariable = bound;
            }
            bound = resolveTypeVariable instanceof TypeVariable ? ((TypeVariable) resolveTypeVariable).getBounds()[0] : resolveTypeVariable;
        }
        return bound;
    }
}
