package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import com.google.gson.JsonIOException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes.dex */
public final class ConstructorConstructor {
    private final Map<Type, InstanceCreator<?>> instanceCreators;

    public ConstructorConstructor(Map<Type, InstanceCreator<?>> map) {
        this.instanceCreators = map;
    }

    public <T> ObjectConstructor<T> get(TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        Class<? super T> rawType = typeToken.getRawType();
        InstanceCreator<?> instanceCreator = this.instanceCreators.get(type);
        if (instanceCreator != null) {
            return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.1
                final /* synthetic */ Type val$type;
                final /* synthetic */ InstanceCreator val$typeCreator;

                C14751(InstanceCreator instanceCreator2, Type type2) {
                    instanceCreator = instanceCreator2;
                    type = type2;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) instanceCreator.createInstance(type);
                }
            };
        }
        InstanceCreator<?> instanceCreator2 = this.instanceCreators.get(rawType);
        if (instanceCreator2 != null) {
            return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.2
                final /* synthetic */ InstanceCreator val$rawTypeCreator;
                final /* synthetic */ Type val$type;

                C14792(InstanceCreator instanceCreator22, Type type2) {
                    instanceCreator2 = instanceCreator22;
                    type = type2;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) instanceCreator2.createInstance(type);
                }
            };
        }
        ObjectConstructor<T> newDefaultConstructor = newDefaultConstructor(rawType);
        if (newDefaultConstructor == null) {
            ObjectConstructor<T> newDefaultImplementationConstructor = newDefaultImplementationConstructor(type2, rawType);
            return newDefaultImplementationConstructor == null ? newUnsafeAllocator(type2, rawType) : newDefaultImplementationConstructor;
        }
        return newDefaultConstructor;
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$1 */
    class C14751<T> implements ObjectConstructor<T> {
        final /* synthetic */ Type val$type;
        final /* synthetic */ InstanceCreator val$typeCreator;

        C14751(InstanceCreator instanceCreator2, Type type2) {
            instanceCreator = instanceCreator2;
            type = type2;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) instanceCreator.createInstance(type);
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$2 */
    class C14792<T> implements ObjectConstructor<T> {
        final /* synthetic */ InstanceCreator val$rawTypeCreator;
        final /* synthetic */ Type val$type;

        C14792(InstanceCreator instanceCreator22, Type type2) {
            instanceCreator2 = instanceCreator22;
            type = type2;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) instanceCreator2.createInstance(type);
        }
    }

    private <T> ObjectConstructor<T> newDefaultConstructor(Class<? super T> cls) {
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.3
                final /* synthetic */ Constructor val$constructor;

                C14803(Constructor declaredConstructor2) {
                    declaredConstructor = declaredConstructor2;
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    } catch (InstantiationException e2) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e2);
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e3.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$3 */
    class C14803<T> implements ObjectConstructor<T> {
        final /* synthetic */ Constructor val$constructor;

        C14803(Constructor declaredConstructor2) {
            declaredConstructor = declaredConstructor2;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            try {
                return (T) declaredConstructor.newInstance(null);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e3.getTargetException());
            }
        }
    }

    private <T> ObjectConstructor<T> newDefaultImplementationConstructor(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.4
                    C14814() {
                    }

                    @Override // com.google.gson.internal.ObjectConstructor
                    public T construct() {
                        return (T) new TreeSet();
                    }
                };
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.5
                    final /* synthetic */ Type val$type;

                    C14825(Type type2) {
                        type = type2;
                    }

                    @Override // com.google.gson.internal.ObjectConstructor
                    public T construct() {
                        if (type instanceof ParameterizedType) {
                            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                            if (type2 instanceof Class) {
                                return (T) EnumSet.noneOf((Class) type2);
                            }
                            throw new JsonIOException("Invalid EnumSet type: " + type.toString());
                        }
                        throw new JsonIOException("Invalid EnumSet type: " + type.toString());
                    }
                };
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.6
                    C14836() {
                    }

                    @Override // com.google.gson.internal.ObjectConstructor
                    public T construct() {
                        return (T) new LinkedHashSet();
                    }
                };
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.7
                    C14847() {
                    }

                    @Override // com.google.gson.internal.ObjectConstructor
                    public T construct() {
                        return (T) new LinkedList();
                    }
                };
            }
            return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.8
                C14858() {
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new ArrayList();
                }
            };
        }
        if (Map.class.isAssignableFrom(cls)) {
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.9
                    C14869() {
                    }

                    @Override // com.google.gson.internal.ObjectConstructor
                    public T construct() {
                        return (T) new TreeMap();
                    }
                };
            }
            if ((type2 instanceof ParameterizedType) && !String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type2).getActualTypeArguments()[0]).getRawType())) {
                return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.10
                    C147610() {
                    }

                    @Override // com.google.gson.internal.ObjectConstructor
                    public T construct() {
                        return (T) new LinkedHashMap();
                    }
                };
            }
            return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.11
                C147711() {
                }

                @Override // com.google.gson.internal.ObjectConstructor
                public T construct() {
                    return (T) new LinkedTreeMap();
                }
            };
        }
        return null;
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$4 */
    class C14814<T> implements ObjectConstructor<T> {
        C14814() {
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new TreeSet();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$5 */
    class C14825<T> implements ObjectConstructor<T> {
        final /* synthetic */ Type val$type;

        C14825(Type type2) {
            type = type2;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            if (type instanceof ParameterizedType) {
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof Class) {
                    return (T) EnumSet.noneOf((Class) type2);
                }
                throw new JsonIOException("Invalid EnumSet type: " + type.toString());
            }
            throw new JsonIOException("Invalid EnumSet type: " + type.toString());
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$6 */
    class C14836<T> implements ObjectConstructor<T> {
        C14836() {
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedHashSet();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$7 */
    class C14847<T> implements ObjectConstructor<T> {
        C14847() {
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedList();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$8 */
    class C14858<T> implements ObjectConstructor<T> {
        C14858() {
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new ArrayList();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$9 */
    class C14869<T> implements ObjectConstructor<T> {
        C14869() {
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new TreeMap();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$10 */
    class C147610<T> implements ObjectConstructor<T> {
        C147610() {
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedHashMap();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$11 */
    class C147711<T> implements ObjectConstructor<T> {
        C147711() {
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedTreeMap();
        }
    }

    /* renamed from: com.google.gson.internal.ConstructorConstructor$12 */
    class C147812<T> implements ObjectConstructor<T> {
        private final UnsafeAllocator unsafeAllocator = UnsafeAllocator.create();
        final /* synthetic */ Class val$rawType;
        final /* synthetic */ Type val$type;

        C147812(Class cls, Type type) {
            cls = cls;
            type = type;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            try {
                return (T) this.unsafeAllocator.newInstance(cls);
            } catch (Exception e) {
                throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Register an InstanceCreator with Gson for this type may fix this problem.", e);
            }
        }
    }

    private <T> ObjectConstructor<T> newUnsafeAllocator(Type type, Class<? super T> cls) {
        return new ObjectConstructor<T>() { // from class: com.google.gson.internal.ConstructorConstructor.12
            private final UnsafeAllocator unsafeAllocator = UnsafeAllocator.create();
            final /* synthetic */ Class val$rawType;
            final /* synthetic */ Type val$type;

            C147812(Class cls2, Type type2) {
                cls = cls2;
                type = type2;
            }

            @Override // com.google.gson.internal.ObjectConstructor
            public T construct() {
                try {
                    return (T) this.unsafeAllocator.newInstance(cls);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Register an InstanceCreator with Gson for this type may fix this problem.", e);
                }
            }
        };
    }

    public String toString() {
        return this.instanceCreators.toString();
    }
}
