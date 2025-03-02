package com.google.android.gms.internal;

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
public final class zzaps {
    private final Map<Type, zzaou<?>> bop;

    /* renamed from: com.google.android.gms.internal.zzaps$1 */
    class C12971<T> implements zzapx<T> {
        final /* synthetic */ zzaou boP;
        final /* synthetic */ Type boQ;

        C12971(zzaou zzaouVar, Type type) {
            zzaouVar = zzaouVar;
            m6629bC = type;
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            return (T) zzaouVar.zza(m6629bC);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaps$10 */
    class C129810<T> implements zzapx<T> {
        C129810() {
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            return (T) new LinkedList();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaps$11 */
    class C129911<T> implements zzapx<T> {
        C129911() {
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            return (T) new ArrayList();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaps$12 */
    class C130012<T> implements zzapx<T> {
        C130012() {
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            return (T) new TreeMap();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaps$2 */
    class C13012<T> implements zzapx<T> {
        C13012() {
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            return (T) new LinkedHashMap();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaps$3 */
    class C13023<T> implements zzapx<T> {
        C13023() {
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            return (T) new zzapw();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaps$4 */
    class C13034<T> implements zzapx<T> {
        final /* synthetic */ Type boQ;
        private final zzaqa boS = zzaqa.m6615bo();
        final /* synthetic */ Class boT;

        C13034(Class cls, Type type) {
            cls = cls;
            type = type;
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            try {
                return (T) this.boS.zzf(cls);
            } catch (Exception e) {
                String valueOf = String.valueOf(type);
                throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 116).append("Unable to invoke no-args constructor for ").append(valueOf).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaps$5 */
    class C13045<T> implements zzapx<T> {
        final /* synthetic */ Type boQ;
        final /* synthetic */ zzaou boU;

        C13045(zzaou zzaouVar, Type type) {
            zzaouVar2 = zzaouVar;
            m6629bC = type;
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            return (T) zzaouVar2.zza(m6629bC);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaps$6 */
    class C13056<T> implements zzapx<T> {
        final /* synthetic */ Constructor boV;

        C13056(Constructor constructor) {
            declaredConstructor = constructor;
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            try {
                return (T) declaredConstructor.newInstance(null);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InstantiationException e2) {
                String valueOf = String.valueOf(declaredConstructor);
                throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 30).append("Failed to invoke ").append(valueOf).append(" with no args").toString(), e2);
            } catch (InvocationTargetException e3) {
                String valueOf2 = String.valueOf(declaredConstructor);
                throw new RuntimeException(new StringBuilder(String.valueOf(valueOf2).length() + 30).append("Failed to invoke ").append(valueOf2).append(" with no args").toString(), e3.getTargetException());
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaps$7 */
    class C13067<T> implements zzapx<T> {
        C13067() {
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            return (T) new TreeSet();
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaps$8 */
    class C13078<T> implements zzapx<T> {
        final /* synthetic */ Type boQ;

        C13078(Type type) {
            type = type;
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            if (!(type instanceof ParameterizedType)) {
                String valueOf = String.valueOf(type.toString());
                throw new zzaoz(valueOf.length() != 0 ? "Invalid EnumSet type: ".concat(valueOf) : new String("Invalid EnumSet type: "));
            }
            Type type = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type instanceof Class) {
                return (T) EnumSet.noneOf((Class) type);
            }
            String valueOf2 = String.valueOf(type.toString());
            throw new zzaoz(valueOf2.length() != 0 ? "Invalid EnumSet type: ".concat(valueOf2) : new String("Invalid EnumSet type: "));
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaps$9 */
    class C13089<T> implements zzapx<T> {
        C13089() {
        }

        @Override // com.google.android.gms.internal.zzapx
        /* renamed from: bj */
        public T mo6609bj() {
            return (T) new LinkedHashSet();
        }
    }

    public zzaps(Map<Type, zzaou<?>> map) {
        this.bop = map;
    }

    private <T> zzapx<T> zzc(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.7
                C13067() {
                }

                @Override // com.google.android.gms.internal.zzapx
                /* renamed from: bj */
                public T mo6609bj() {
                    return (T) new TreeSet();
                }
            } : EnumSet.class.isAssignableFrom(cls) ? new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.8
                final /* synthetic */ Type boQ;

                C13078(Type type2) {
                    type = type2;
                }

                @Override // com.google.android.gms.internal.zzapx
                /* renamed from: bj */
                public T mo6609bj() {
                    if (!(type instanceof ParameterizedType)) {
                        String valueOf = String.valueOf(type.toString());
                        throw new zzaoz(valueOf.length() != 0 ? "Invalid EnumSet type: ".concat(valueOf) : new String("Invalid EnumSet type: "));
                    }
                    Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                    if (type2 instanceof Class) {
                        return (T) EnumSet.noneOf((Class) type2);
                    }
                    String valueOf2 = String.valueOf(type.toString());
                    throw new zzaoz(valueOf2.length() != 0 ? "Invalid EnumSet type: ".concat(valueOf2) : new String("Invalid EnumSet type: "));
                }
            } : Set.class.isAssignableFrom(cls) ? new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.9
                C13089() {
                }

                @Override // com.google.android.gms.internal.zzapx
                /* renamed from: bj */
                public T mo6609bj() {
                    return (T) new LinkedHashSet();
                }
            } : Queue.class.isAssignableFrom(cls) ? new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.10
                C129810() {
                }

                @Override // com.google.android.gms.internal.zzapx
                /* renamed from: bj */
                public T mo6609bj() {
                    return (T) new LinkedList();
                }
            } : new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.11
                C129911() {
                }

                @Override // com.google.android.gms.internal.zzapx
                /* renamed from: bj */
                public T mo6609bj() {
                    return (T) new ArrayList();
                }
            };
        }
        if (Map.class.isAssignableFrom(cls)) {
            return SortedMap.class.isAssignableFrom(cls) ? new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.12
                C130012() {
                }

                @Override // com.google.android.gms.internal.zzapx
                /* renamed from: bj */
                public T mo6609bj() {
                    return (T) new TreeMap();
                }
            } : (!(type2 instanceof ParameterizedType) || String.class.isAssignableFrom(zzaqo.zzl(((ParameterizedType) type2).getActualTypeArguments()[0]).m6628bB())) ? new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.3
                C13023() {
                }

                @Override // com.google.android.gms.internal.zzapx
                /* renamed from: bj */
                public T mo6609bj() {
                    return (T) new zzapw();
                }
            } : new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.2
                C13012() {
                }

                @Override // com.google.android.gms.internal.zzapx
                /* renamed from: bj */
                public T mo6609bj() {
                    return (T) new LinkedHashMap();
                }
            };
        }
        return null;
    }

    private <T> zzapx<T> zzd(Type type, Class<? super T> cls) {
        return new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.4
            final /* synthetic */ Type boQ;
            private final zzaqa boS = zzaqa.m6615bo();
            final /* synthetic */ Class boT;

            C13034(Class cls2, Type type2) {
                cls = cls2;
                type = type2;
            }

            @Override // com.google.android.gms.internal.zzapx
            /* renamed from: bj */
            public T mo6609bj() {
                try {
                    return (T) this.boS.zzf(cls);
                } catch (Exception e) {
                    String valueOf = String.valueOf(type);
                    throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 116).append("Unable to invoke no-args constructor for ").append(valueOf).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), e);
                }
            }
        };
    }

    private <T> zzapx<T> zzl(Class<? super T> cls) {
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.6
                final /* synthetic */ Constructor boV;

                C13056(Constructor declaredConstructor2) {
                    declaredConstructor = declaredConstructor2;
                }

                @Override // com.google.android.gms.internal.zzapx
                /* renamed from: bj */
                public T mo6609bj() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    } catch (InstantiationException e2) {
                        String valueOf = String.valueOf(declaredConstructor);
                        throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 30).append("Failed to invoke ").append(valueOf).append(" with no args").toString(), e2);
                    } catch (InvocationTargetException e3) {
                        String valueOf2 = String.valueOf(declaredConstructor);
                        throw new RuntimeException(new StringBuilder(String.valueOf(valueOf2).length() + 30).append("Failed to invoke ").append(valueOf2).append(" with no args").toString(), e3.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public String toString() {
        return this.bop.toString();
    }

    public <T> zzapx<T> zzb(zzaqo<T> zzaqoVar) {
        Type m6629bC = zzaqoVar.m6629bC();
        Class<? super T> m6628bB = zzaqoVar.m6628bB();
        zzaou<?> zzaouVar = this.bop.get(m6629bC);
        if (zzaouVar != null) {
            return new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.1
                final /* synthetic */ zzaou boP;
                final /* synthetic */ Type boQ;

                C12971(zzaou zzaouVar2, Type m6629bC2) {
                    zzaouVar = zzaouVar2;
                    m6629bC = m6629bC2;
                }

                @Override // com.google.android.gms.internal.zzapx
                /* renamed from: bj */
                public T mo6609bj() {
                    return (T) zzaouVar.zza(m6629bC);
                }
            };
        }
        zzaou<?> zzaouVar2 = this.bop.get(m6628bB);
        if (zzaouVar2 != null) {
            return new zzapx<T>() { // from class: com.google.android.gms.internal.zzaps.5
                final /* synthetic */ Type boQ;
                final /* synthetic */ zzaou boU;

                C13045(zzaou zzaouVar22, Type m6629bC2) {
                    zzaouVar2 = zzaouVar22;
                    m6629bC = m6629bC2;
                }

                @Override // com.google.android.gms.internal.zzapx
                /* renamed from: bj */
                public T mo6609bj() {
                    return (T) zzaouVar2.zza(m6629bC);
                }
            };
        }
        zzapx<T> zzl = zzl(m6628bB);
        if (zzl != null) {
            return zzl;
        }
        zzapx<T> zzc = zzc(m6629bC2, m6628bB);
        return zzc == null ? zzd(m6629bC2, m6628bB) : zzc;
    }
}
