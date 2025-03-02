package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {
    private final ConstructorConstructor constructorConstructor;
    private final Excluder excluder;
    private final FieldNamingStrategy fieldNamingPolicy;

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder) {
        this.constructorConstructor = constructorConstructor;
        this.fieldNamingPolicy = fieldNamingStrategy;
        this.excluder = excluder;
    }

    public boolean excludeField(Field field, boolean z) {
        return excludeField(field, z, this.excluder);
    }

    static boolean excludeField(Field field, boolean z, Excluder excluder) {
        return (excluder.excludeClass(field.getType(), z) || excluder.excludeField(field, z)) ? false : true;
    }

    private List<String> getFieldNames(Field field) {
        return getFieldName(this.fieldNamingPolicy, field);
    }

    static List<String> getFieldName(FieldNamingStrategy fieldNamingStrategy, Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        LinkedList linkedList = new LinkedList();
        if (serializedName == null) {
            linkedList.add(fieldNamingStrategy.translateName(field));
        } else {
            linkedList.add(serializedName.value());
            String[] alternate = serializedName.alternate();
            for (String str : alternate) {
                linkedList.add(str);
            }
        }
        return linkedList;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (Object.class.isAssignableFrom(rawType)) {
            return new Adapter(this.constructorConstructor.get(typeToken), getBoundFields(gson, typeToken, rawType));
        }
        return null;
    }

    private BoundField createBoundField(Gson gson, Field field, String str, TypeToken<?> typeToken, boolean z, boolean z2) {
        return new BoundField(str, z, z2) { // from class: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.1
            final TypeAdapter<?> typeAdapter;
            final /* synthetic */ Gson val$context;
            final /* synthetic */ Field val$field;
            final /* synthetic */ TypeToken val$fieldType;
            final /* synthetic */ boolean val$isPrimitive;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C15051(String str2, boolean z3, boolean z22, Gson gson2, Field field2, TypeToken typeToken2, boolean z4) {
                super(str2, z3, z22);
                gson = gson2;
                field = field2;
                typeToken = typeToken2;
                isPrimitive = z4;
                this.typeAdapter = ReflectiveTypeAdapterFactory.this.getFieldAdapter(gson, field, typeToken);
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            void write(JsonWriter jsonWriter, Object obj) {
                new TypeAdapterRuntimeTypeWrapper(gson, this.typeAdapter, typeToken.getType()).write(jsonWriter, field.get(obj));
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            void read(JsonReader jsonReader, Object obj) {
                Object read = this.typeAdapter.read(jsonReader);
                if (read != null || !isPrimitive) {
                    field.set(obj, read);
                }
            }

            @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
            public boolean writeField(Object obj) {
                return this.serialized && field.get(obj) != obj;
            }
        };
    }

    /* renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$1 */
    class C15051 extends BoundField {
        final TypeAdapter<?> typeAdapter;
        final /* synthetic */ Gson val$context;
        final /* synthetic */ Field val$field;
        final /* synthetic */ TypeToken val$fieldType;
        final /* synthetic */ boolean val$isPrimitive;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C15051(String str2, boolean z3, boolean z22, Gson gson2, Field field2, TypeToken typeToken2, boolean z4) {
            super(str2, z3, z22);
            gson = gson2;
            field = field2;
            typeToken = typeToken2;
            isPrimitive = z4;
            this.typeAdapter = ReflectiveTypeAdapterFactory.this.getFieldAdapter(gson, field, typeToken);
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
        void write(JsonWriter jsonWriter, Object obj) {
            new TypeAdapterRuntimeTypeWrapper(gson, this.typeAdapter, typeToken.getType()).write(jsonWriter, field.get(obj));
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
        void read(JsonReader jsonReader, Object obj) {
            Object read = this.typeAdapter.read(jsonReader);
            if (read != null || !isPrimitive) {
                field.set(obj, read);
            }
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.BoundField
        public boolean writeField(Object obj) {
            return this.serialized && field.get(obj) != obj;
        }
    }

    public TypeAdapter<?> getFieldAdapter(Gson gson, Field field, TypeToken<?> typeToken) {
        TypeAdapter<?> typeAdapter;
        JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
        return (jsonAdapter == null || (typeAdapter = JsonAdapterAnnotationTypeAdapterFactory.getTypeAdapter(this.constructorConstructor, gson, typeToken, jsonAdapter)) == null) ? gson.getAdapter(typeToken) : typeAdapter;
    }

    private Map<String, BoundField> getBoundFields(Gson gson, TypeToken<?> typeToken, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type = typeToken.getType();
        while (cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                boolean excludeField = excludeField(field, true);
                boolean excludeField2 = excludeField(field, false);
                if (excludeField || excludeField2) {
                    field.setAccessible(true);
                    Type resolve = C$Gson$Types.resolve(typeToken.getType(), cls, field.getGenericType());
                    List<String> fieldNames = getFieldNames(field);
                    BoundField boundField = null;
                    int i = 0;
                    while (i < fieldNames.size()) {
                        String str = fieldNames.get(i);
                        if (i != 0) {
                            excludeField = false;
                        }
                        BoundField boundField2 = (BoundField) linkedHashMap.put(str, createBoundField(gson, field, str, TypeToken.get(resolve), excludeField, excludeField2));
                        if (boundField != null) {
                            boundField2 = boundField;
                        }
                        i++;
                        boundField = boundField2;
                    }
                    if (boundField != null) {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + boundField.name);
                    }
                }
            }
            typeToken = TypeToken.get(C$Gson$Types.resolve(typeToken.getType(), cls, cls.getGenericSuperclass()));
            cls = typeToken.getRawType();
        }
        return linkedHashMap;
    }

    static abstract class BoundField {
        final boolean deserialized;
        final String name;
        final boolean serialized;

        abstract void read(JsonReader jsonReader, Object obj);

        abstract void write(JsonWriter jsonWriter, Object obj);

        abstract boolean writeField(Object obj);

        protected BoundField(String str, boolean z, boolean z2) {
            this.name = str;
            this.serialized = z;
            this.deserialized = z2;
        }
    }

    public static final class Adapter<T> extends TypeAdapter<T> {
        private final Map<String, BoundField> boundFields;
        private final ObjectConstructor<T> constructor;

        /* synthetic */ Adapter(ObjectConstructor objectConstructor, Map map, C15051 c15051) {
            this(objectConstructor, map);
        }

        private Adapter(ObjectConstructor<T> objectConstructor, Map<String, BoundField> map) {
            this.constructor = objectConstructor;
            this.boundFields = map;
        }

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T construct = this.constructor.construct();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    BoundField boundField = this.boundFields.get(jsonReader.nextName());
                    if (boundField == null || !boundField.deserialized) {
                        jsonReader.skipValue();
                    } else {
                        boundField.read(jsonReader, construct);
                    }
                }
                jsonReader.endObject();
                return construct;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                for (BoundField boundField : this.boundFields.values()) {
                    if (boundField.writeField(t)) {
                        jsonWriter.name(boundField.name);
                        boundField.write(jsonWriter, t);
                    }
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            }
        }
    }
}
