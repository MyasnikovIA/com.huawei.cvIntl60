package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class UnsafeAllocator {
    public abstract <T> T newInstance(Class<T> cls);

    public static UnsafeAllocator create() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.1
                final /* synthetic */ Method val$allocateInstance;
                final /* synthetic */ Object val$unsafe;

                C14951(Method method, Object obj) {
                    method = method;
                    obj = obj;
                }

                @Override // com.google.gson.internal.UnsafeAllocator
                public <T> T newInstance(Class<T> cls2) {
                    return (T) method.invoke(obj, cls2);
                }
            };
        } catch (Exception e) {
            try {
                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                declaredMethod.setAccessible(true);
                int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                declaredMethod2.setAccessible(true);
                return new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.2
                    final /* synthetic */ int val$constructorId;
                    final /* synthetic */ Method val$newInstance;

                    C14962(Method declaredMethod22, int intValue2) {
                        declaredMethod2 = declaredMethod22;
                        intValue = intValue2;
                    }

                    @Override // com.google.gson.internal.UnsafeAllocator
                    public <T> T newInstance(Class<T> cls2) {
                        return (T) declaredMethod2.invoke(null, cls2, Integer.valueOf(intValue));
                    }
                };
            } catch (Exception e2) {
                try {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.3
                        final /* synthetic */ Method val$newInstance;

                        C14973(Method declaredMethod32) {
                            declaredMethod3 = declaredMethod32;
                        }

                        @Override // com.google.gson.internal.UnsafeAllocator
                        public <T> T newInstance(Class<T> cls2) {
                            return (T) declaredMethod3.invoke(null, cls2, Object.class);
                        }
                    };
                } catch (Exception e3) {
                    return new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.4
                        C14984() {
                        }

                        @Override // com.google.gson.internal.UnsafeAllocator
                        public <T> T newInstance(Class<T> cls2) {
                            throw new UnsupportedOperationException("Cannot allocate " + cls2);
                        }
                    };
                }
            }
        }
    }

    /* renamed from: com.google.gson.internal.UnsafeAllocator$1 */
    static class C14951 extends UnsafeAllocator {
        final /* synthetic */ Method val$allocateInstance;
        final /* synthetic */ Object val$unsafe;

        C14951(Method method, Object obj) {
            method = method;
            obj = obj;
        }

        @Override // com.google.gson.internal.UnsafeAllocator
        public <T> T newInstance(Class<T> cls2) {
            return (T) method.invoke(obj, cls2);
        }
    }

    /* renamed from: com.google.gson.internal.UnsafeAllocator$2 */
    static class C14962 extends UnsafeAllocator {
        final /* synthetic */ int val$constructorId;
        final /* synthetic */ Method val$newInstance;

        C14962(Method declaredMethod22, int intValue2) {
            declaredMethod2 = declaredMethod22;
            intValue = intValue2;
        }

        @Override // com.google.gson.internal.UnsafeAllocator
        public <T> T newInstance(Class<T> cls2) {
            return (T) declaredMethod2.invoke(null, cls2, Integer.valueOf(intValue));
        }
    }

    /* renamed from: com.google.gson.internal.UnsafeAllocator$3 */
    static class C14973 extends UnsafeAllocator {
        final /* synthetic */ Method val$newInstance;

        C14973(Method declaredMethod32) {
            declaredMethod3 = declaredMethod32;
        }

        @Override // com.google.gson.internal.UnsafeAllocator
        public <T> T newInstance(Class<T> cls2) {
            return (T) declaredMethod3.invoke(null, cls2, Object.class);
        }
    }

    /* renamed from: com.google.gson.internal.UnsafeAllocator$4 */
    static class C14984 extends UnsafeAllocator {
        C14984() {
        }

        @Override // com.google.gson.internal.UnsafeAllocator
        public <T> T newInstance(Class<T> cls2) {
            throw new UnsupportedOperationException("Cannot allocate " + cls2);
        }
    }
}
