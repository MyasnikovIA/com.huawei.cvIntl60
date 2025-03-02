package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT = new Excluder();
    private static final double IGNORE_VERSIONS = -1.0d;
    private boolean requireExpose;
    private double version = IGNORE_VERSIONS;
    private int modifiers = 136;
    private boolean serializeInnerClasses = true;
    private List<ExclusionStrategy> serializationStrategies = Collections.emptyList();
    private List<ExclusionStrategy> deserializationStrategies = Collections.emptyList();

    /* renamed from: clone */
    public Excluder m8194clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public Excluder withVersion(double d) {
        Excluder m8194clone = m8194clone();
        m8194clone.version = d;
        return m8194clone;
    }

    public Excluder withModifiers(int... iArr) {
        Excluder m8194clone = m8194clone();
        m8194clone.modifiers = 0;
        for (int i : iArr) {
            m8194clone.modifiers = i | m8194clone.modifiers;
        }
        return m8194clone;
    }

    public Excluder disableInnerClassSerialization() {
        Excluder m8194clone = m8194clone();
        m8194clone.serializeInnerClasses = false;
        return m8194clone;
    }

    public Excluder excludeFieldsWithoutExposeAnnotation() {
        Excluder m8194clone = m8194clone();
        m8194clone.requireExpose = true;
        return m8194clone;
    }

    public Excluder withExclusionStrategy(ExclusionStrategy exclusionStrategy, boolean z, boolean z2) {
        Excluder m8194clone = m8194clone();
        if (z) {
            m8194clone.serializationStrategies = new ArrayList(this.serializationStrategies);
            m8194clone.serializationStrategies.add(exclusionStrategy);
        }
        if (z2) {
            m8194clone.deserializationStrategies = new ArrayList(this.deserializationStrategies);
            m8194clone.deserializationStrategies.add(exclusionStrategy);
        }
        return m8194clone;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        boolean excludeClass = excludeClass(rawType, true);
        boolean excludeClass2 = excludeClass(rawType, false);
        if (excludeClass || excludeClass2) {
            return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1
                private TypeAdapter<T> delegate;
                final /* synthetic */ Gson val$gson;
                final /* synthetic */ boolean val$skipDeserialize;
                final /* synthetic */ boolean val$skipSerialize;
                final /* synthetic */ TypeToken val$type;

                C14871(boolean excludeClass22, boolean excludeClass3, Gson gson2, TypeToken typeToken2) {
                    excludeClass2 = excludeClass22;
                    excludeClass = excludeClass3;
                    gson = gson2;
                    typeToken = typeToken2;
                }

                @Override // com.google.gson.TypeAdapter
                public T read(JsonReader jsonReader) {
                    if (!excludeClass2) {
                        return delegate().read(jsonReader);
                    }
                    jsonReader.skipValue();
                    return null;
                }

                @Override // com.google.gson.TypeAdapter
                public void write(JsonWriter jsonWriter, T t) {
                    if (excludeClass) {
                        jsonWriter.nullValue();
                    } else {
                        delegate().write(jsonWriter, t);
                    }
                }

                private TypeAdapter<T> delegate() {
                    TypeAdapter<T> typeAdapter = this.delegate;
                    if (typeAdapter != null) {
                        return typeAdapter;
                    }
                    TypeAdapter<T> delegateAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                    this.delegate = delegateAdapter;
                    return delegateAdapter;
                }
            };
        }
        return null;
    }

    /* renamed from: com.google.gson.internal.Excluder$1 */
    class C14871<T> extends TypeAdapter<T> {
        private TypeAdapter<T> delegate;
        final /* synthetic */ Gson val$gson;
        final /* synthetic */ boolean val$skipDeserialize;
        final /* synthetic */ boolean val$skipSerialize;
        final /* synthetic */ TypeToken val$type;

        C14871(boolean excludeClass22, boolean excludeClass3, Gson gson2, TypeToken typeToken2) {
            excludeClass2 = excludeClass22;
            excludeClass = excludeClass3;
            gson = gson2;
            typeToken = typeToken2;
        }

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) {
            if (!excludeClass2) {
                return delegate().read(jsonReader);
            }
            jsonReader.skipValue();
            return null;
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) {
            if (excludeClass) {
                jsonWriter.nullValue();
            } else {
                delegate().write(jsonWriter, t);
            }
        }

        private TypeAdapter<T> delegate() {
            TypeAdapter<T> typeAdapter = this.delegate;
            if (typeAdapter != null) {
                return typeAdapter;
            }
            TypeAdapter<T> delegateAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
            this.delegate = delegateAdapter;
            return delegateAdapter;
        }
    }

    public boolean excludeField(Field field, boolean z) {
        Expose expose;
        if ((this.modifiers & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.version == IGNORE_VERSIONS || isValidVersion((Since) field.getAnnotation(Since.class), (Until) field.getAnnotation(Until.class))) && !field.isSynthetic()) {
            if (this.requireExpose && ((expose = (Expose) field.getAnnotation(Expose.class)) == null || (!z ? expose.deserialize() : expose.serialize()))) {
                return true;
            }
            if ((this.serializeInnerClasses || !isInnerClass(field.getType())) && !isAnonymousOrLocal(field.getType())) {
                List<ExclusionStrategy> list = z ? this.serializationStrategies : this.deserializationStrategies;
                if (!list.isEmpty()) {
                    FieldAttributes fieldAttributes = new FieldAttributes(field);
                    Iterator<ExclusionStrategy> it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next().shouldSkipField(fieldAttributes)) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    public boolean excludeClass(Class<?> cls, boolean z) {
        if (this.version != IGNORE_VERSIONS && !isValidVersion((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            return true;
        }
        if ((this.serializeInnerClasses || !isInnerClass(cls)) && !isAnonymousOrLocal(cls)) {
            Iterator<ExclusionStrategy> it = (z ? this.serializationStrategies : this.deserializationStrategies).iterator();
            while (it.hasNext()) {
                if (it.next().shouldSkipClass(cls)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    private boolean isAnonymousOrLocal(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean isInnerClass(Class<?> cls) {
        return cls.isMemberClass() && !isStatic(cls);
    }

    private boolean isStatic(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    private boolean isValidVersion(Since since, Until until) {
        return isValidSince(since) && isValidUntil(until);
    }

    private boolean isValidSince(Since since) {
        return since == null || since.value() <= this.version;
    }

    private boolean isValidUntil(Until until) {
        return until == null || until.value() > this.version;
    }
}
