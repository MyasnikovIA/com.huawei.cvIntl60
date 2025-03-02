package com.google.android.gms.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class zzaqa {

    /* renamed from: com.google.android.gms.internal.zzaqa$1 */
    static class C13141 extends zzaqa {
        final /* synthetic */ Method bpC;
        final /* synthetic */ Object bpD;

        C13141(Method method, Object obj) {
            method = method;
            obj = obj;
        }

        @Override // com.google.android.gms.internal.zzaqa
        public <T> T zzf(Class<T> cls) {
            return (T) method.invoke(obj, cls);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqa$2 */
    static class C13152 extends zzaqa {
        final /* synthetic */ Method bpE;
        final /* synthetic */ int bpF;

        C13152(Method method, int i) {
            declaredMethod2 = method;
            intValue = i;
        }

        @Override // com.google.android.gms.internal.zzaqa
        public <T> T zzf(Class<T> cls) {
            return (T) declaredMethod2.invoke(null, cls, Integer.valueOf(intValue));
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqa$3 */
    static class C13163 extends zzaqa {
        final /* synthetic */ Method bpE;

        C13163(Method method) {
            declaredMethod3 = method;
        }

        @Override // com.google.android.gms.internal.zzaqa
        public <T> T zzf(Class<T> cls) {
            return (T) declaredMethod3.invoke(null, cls, Object.class);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqa$4 */
    static class C13174 extends zzaqa {
        C13174() {
        }

        @Override // com.google.android.gms.internal.zzaqa
        public <T> T zzf(Class<T> cls) {
            String valueOf = String.valueOf(cls);
            throw new UnsupportedOperationException(new StringBuilder(String.valueOf(valueOf).length() + 16).append("Cannot allocate ").append(valueOf).toString());
        }
    }

    /* renamed from: bo */
    public static zzaqa m6615bo() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new zzaqa() { // from class: com.google.android.gms.internal.zzaqa.1
                final /* synthetic */ Method bpC;
                final /* synthetic */ Object bpD;

                C13141(Method method, Object obj) {
                    method = method;
                    obj = obj;
                }

                @Override // com.google.android.gms.internal.zzaqa
                public <T> T zzf(Class<T> cls2) {
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
                return new zzaqa() { // from class: com.google.android.gms.internal.zzaqa.2
                    final /* synthetic */ Method bpE;
                    final /* synthetic */ int bpF;

                    C13152(Method declaredMethod22, int intValue2) {
                        declaredMethod2 = declaredMethod22;
                        intValue = intValue2;
                    }

                    @Override // com.google.android.gms.internal.zzaqa
                    public <T> T zzf(Class<T> cls2) {
                        return (T) declaredMethod2.invoke(null, cls2, Integer.valueOf(intValue));
                    }
                };
            } catch (Exception e2) {
                try {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new zzaqa() { // from class: com.google.android.gms.internal.zzaqa.3
                        final /* synthetic */ Method bpE;

                        C13163(Method declaredMethod32) {
                            declaredMethod3 = declaredMethod32;
                        }

                        @Override // com.google.android.gms.internal.zzaqa
                        public <T> T zzf(Class<T> cls2) {
                            return (T) declaredMethod3.invoke(null, cls2, Object.class);
                        }
                    };
                } catch (Exception e3) {
                    return new zzaqa() { // from class: com.google.android.gms.internal.zzaqa.4
                        C13174() {
                        }

                        @Override // com.google.android.gms.internal.zzaqa
                        public <T> T zzf(Class<T> cls2) {
                            String valueOf = String.valueOf(cls2);
                            throw new UnsupportedOperationException(new StringBuilder(String.valueOf(valueOf).length() + 16).append("Cannot allocate ").append(valueOf).toString());
                        }
                    };
                }
            }
        }
    }

    public abstract <T> T zzf(Class<T> cls);
}
