package com.google.api.client.repackaged.com.google.common.base;

import com.google.api.client.repackaged.com.google.common.annotations.Beta;
import com.google.api.client.repackaged.com.google.common.annotations.GwtCompatible;
import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

@GwtCompatible
/* loaded from: classes.dex */
public class Joiner {
    private final String separator;

    /* synthetic */ Joiner(Joiner joiner, C14461 c14461) {
        this(joiner);
    }

    /* renamed from: on */
    public static Joiner m6678on(String str) {
        return new Joiner(str);
    }

    /* renamed from: on */
    public static Joiner m6677on(char c) {
        return new Joiner(String.valueOf(c));
    }

    private Joiner(String str) {
        this.separator = (String) Preconditions.checkNotNull(str);
    }

    private Joiner(Joiner joiner) {
        this.separator = joiner.separator;
    }

    @Beta
    @Deprecated
    public final <A extends Appendable, I extends Iterable<?> & Iterator<?>> A appendTo(A a2, I i) {
        return (A) appendTo((Joiner) a2, i);
    }

    public <A extends Appendable> A appendTo(A a2, Iterable<?> iterable) {
        return (A) appendTo((Joiner) a2, iterable.iterator());
    }

    public <A extends Appendable> A appendTo(A a2, Iterator<?> it) {
        Preconditions.checkNotNull(a2);
        if (it.hasNext()) {
            a2.append(toString(it.next()));
            while (it.hasNext()) {
                a2.append(this.separator);
                a2.append(toString(it.next()));
            }
        }
        return a2;
    }

    public final <A extends Appendable> A appendTo(A a2, Object[] objArr) {
        return (A) appendTo((Joiner) a2, (Iterable<?>) Arrays.asList(objArr));
    }

    public final <A extends Appendable> A appendTo(A a2, Object obj, Object obj2, Object... objArr) {
        return (A) appendTo((Joiner) a2, iterable(obj, obj2, objArr));
    }

    @Beta
    @Deprecated
    public final <I extends Iterable<?> & Iterator<?>> StringBuilder appendTo(StringBuilder sb, I i) {
        return appendTo(sb, i);
    }

    public final StringBuilder appendTo(StringBuilder sb, Iterable<?> iterable) {
        return appendTo(sb, iterable.iterator());
    }

    public final StringBuilder appendTo(StringBuilder sb, Iterator<?> it) {
        try {
            appendTo((Joiner) sb, it);
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final StringBuilder appendTo(StringBuilder sb, Object[] objArr) {
        return appendTo(sb, (Iterable<?>) Arrays.asList(objArr));
    }

    public final StringBuilder appendTo(StringBuilder sb, Object obj, Object obj2, Object... objArr) {
        return appendTo(sb, iterable(obj, obj2, objArr));
    }

    @Beta
    @Deprecated
    public final <I extends Iterable<?> & Iterator<?>> String join(I i) {
        return join(i);
    }

    public final String join(Iterable<?> iterable) {
        return join(iterable.iterator());
    }

    public final String join(Iterator<?> it) {
        return appendTo(new StringBuilder(), it).toString();
    }

    public final String join(Object[] objArr) {
        return join((Iterable<?>) Arrays.asList(objArr));
    }

    public final String join(Object obj, Object obj2, Object... objArr) {
        return join(iterable(obj, obj2, objArr));
    }

    /* renamed from: com.google.api.client.repackaged.com.google.common.base.Joiner$1 */
    class C14461 extends Joiner {
        final /* synthetic */ String val$nullText;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14461(Joiner joiner, String str) {
            super();
            str = str;
        }

        @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
        CharSequence toString(Object obj) {
            return obj == null ? str : Joiner.this.toString(obj);
        }

        @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
        public Joiner useForNull(String str) {
            Preconditions.checkNotNull(str);
            throw new UnsupportedOperationException("already specified useForNull");
        }

        @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
        public Joiner skipNulls() {
            throw new UnsupportedOperationException("already specified useForNull");
        }
    }

    public Joiner useForNull(String str) {
        Preconditions.checkNotNull(str);
        return new Joiner(this) { // from class: com.google.api.client.repackaged.com.google.common.base.Joiner.1
            final /* synthetic */ String val$nullText;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14461(Joiner this, String str2) {
                super();
                str = str2;
            }

            @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
            CharSequence toString(Object obj) {
                return obj == null ? str : Joiner.this.toString(obj);
            }

            @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
            public Joiner useForNull(String str2) {
                Preconditions.checkNotNull(str2);
                throw new UnsupportedOperationException("already specified useForNull");
            }

            @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
            public Joiner skipNulls() {
                throw new UnsupportedOperationException("already specified useForNull");
            }
        };
    }

    /* renamed from: com.google.api.client.repackaged.com.google.common.base.Joiner$2 */
    class C14472 extends Joiner {
        C14472(Joiner joiner) {
            super();
        }

        @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
        public <A extends Appendable> A appendTo(A a2, Iterator<?> it) {
            Preconditions.checkNotNull(a2, "appendable");
            Preconditions.checkNotNull(it, "parts");
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (next != null) {
                    a2.append(Joiner.this.toString(next));
                    break;
                }
            }
            while (it.hasNext()) {
                Object next2 = it.next();
                if (next2 != null) {
                    a2.append(Joiner.this.separator);
                    a2.append(Joiner.this.toString(next2));
                }
            }
            return a2;
        }

        @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
        public Joiner useForNull(String str) {
            Preconditions.checkNotNull(str);
            throw new UnsupportedOperationException("already specified skipNulls");
        }

        @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
        public MapJoiner withKeyValueSeparator(String str) {
            Preconditions.checkNotNull(str);
            throw new UnsupportedOperationException("can't use .skipNulls() with maps");
        }
    }

    public Joiner skipNulls() {
        return new Joiner(this) { // from class: com.google.api.client.repackaged.com.google.common.base.Joiner.2
            C14472(Joiner this) {
                super();
            }

            @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
            public <A extends Appendable> A appendTo(A a2, Iterator<?> it) {
                Preconditions.checkNotNull(a2, "appendable");
                Preconditions.checkNotNull(it, "parts");
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (next != null) {
                        a2.append(Joiner.this.toString(next));
                        break;
                    }
                }
                while (it.hasNext()) {
                    Object next2 = it.next();
                    if (next2 != null) {
                        a2.append(Joiner.this.separator);
                        a2.append(Joiner.this.toString(next2));
                    }
                }
                return a2;
            }

            @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
            public Joiner useForNull(String str) {
                Preconditions.checkNotNull(str);
                throw new UnsupportedOperationException("already specified skipNulls");
            }

            @Override // com.google.api.client.repackaged.com.google.common.base.Joiner
            public MapJoiner withKeyValueSeparator(String str) {
                Preconditions.checkNotNull(str);
                throw new UnsupportedOperationException("can't use .skipNulls() with maps");
            }
        };
    }

    public MapJoiner withKeyValueSeparator(String str) {
        return new MapJoiner(str);
    }

    public static final class MapJoiner {
        private final Joiner joiner;
        private final String keyValueSeparator;

        /* synthetic */ MapJoiner(Joiner joiner, String str, C14461 c14461) {
            this(joiner, str);
        }

        private MapJoiner(Joiner joiner, String str) {
            this.joiner = joiner;
            this.keyValueSeparator = (String) Preconditions.checkNotNull(str);
        }

        public <A extends Appendable> A appendTo(A a2, Map<?, ?> map) {
            return (A) appendTo((MapJoiner) a2, (Iterable<? extends Map.Entry<?, ?>>) map.entrySet());
        }

        public StringBuilder appendTo(StringBuilder sb, Map<?, ?> map) {
            return appendTo(sb, (Iterable<? extends Map.Entry<?, ?>>) map.entrySet());
        }

        public String join(Map<?, ?> map) {
            return join((Iterable<? extends Map.Entry<?, ?>>) map.entrySet());
        }

        @Beta
        @Deprecated
        public <A extends Appendable, I extends Iterable<? extends Map.Entry<?, ?>> & Iterator<? extends Map.Entry<?, ?>>> A appendTo(A a2, I i) {
            return (A) appendTo((MapJoiner) a2, i);
        }

        @Beta
        public <A extends Appendable> A appendTo(A a2, Iterable<? extends Map.Entry<?, ?>> iterable) {
            return (A) appendTo((MapJoiner) a2, iterable.iterator());
        }

        @Beta
        public <A extends Appendable> A appendTo(A a2, Iterator<? extends Map.Entry<?, ?>> it) {
            Preconditions.checkNotNull(a2);
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                a2.append(this.joiner.toString(next.getKey()));
                a2.append(this.keyValueSeparator);
                a2.append(this.joiner.toString(next.getValue()));
                while (it.hasNext()) {
                    a2.append(this.joiner.separator);
                    Map.Entry<?, ?> next2 = it.next();
                    a2.append(this.joiner.toString(next2.getKey()));
                    a2.append(this.keyValueSeparator);
                    a2.append(this.joiner.toString(next2.getValue()));
                }
            }
            return a2;
        }

        @Beta
        @Deprecated
        public <I extends Iterable<? extends Map.Entry<?, ?>> & Iterator<? extends Map.Entry<?, ?>>> StringBuilder appendTo(StringBuilder sb, I i) {
            return appendTo(sb, i);
        }

        @Beta
        public StringBuilder appendTo(StringBuilder sb, Iterable<? extends Map.Entry<?, ?>> iterable) {
            return appendTo(sb, iterable.iterator());
        }

        @Beta
        public StringBuilder appendTo(StringBuilder sb, Iterator<? extends Map.Entry<?, ?>> it) {
            try {
                appendTo((MapJoiner) sb, it);
                return sb;
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Beta
        @Deprecated
        public <I extends Iterable<? extends Map.Entry<?, ?>> & Iterator<? extends Map.Entry<?, ?>>> String join(I i) {
            return join(i);
        }

        @Beta
        public String join(Iterable<? extends Map.Entry<?, ?>> iterable) {
            return join(iterable.iterator());
        }

        @Beta
        public String join(Iterator<? extends Map.Entry<?, ?>> it) {
            return appendTo(new StringBuilder(), it).toString();
        }

        public MapJoiner useForNull(String str) {
            return new MapJoiner(this.joiner.useForNull(str), this.keyValueSeparator);
        }
    }

    CharSequence toString(Object obj) {
        Preconditions.checkNotNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    /* renamed from: com.google.api.client.repackaged.com.google.common.base.Joiner$3 */
    static class C14483 extends AbstractList<Object> {
        final /* synthetic */ Object val$first;
        final /* synthetic */ Object[] val$rest;
        final /* synthetic */ Object val$second;

        C14483(Object[] objArr, Object obj, Object obj2) {
            objArr = objArr;
            obj = obj;
            obj2 = obj2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return objArr.length + 2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Object get(int i) {
            switch (i) {
                case 0:
                    return obj;
                case 1:
                    return obj2;
                default:
                    return objArr[i - 2];
            }
        }
    }

    private static Iterable<Object> iterable(Object obj, Object obj2, Object[] objArr) {
        Preconditions.checkNotNull(objArr);
        return new AbstractList<Object>() { // from class: com.google.api.client.repackaged.com.google.common.base.Joiner.3
            final /* synthetic */ Object val$first;
            final /* synthetic */ Object[] val$rest;
            final /* synthetic */ Object val$second;

            C14483(Object[] objArr2, Object obj3, Object obj22) {
                objArr = objArr2;
                obj = obj3;
                obj2 = obj22;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return objArr.length + 2;
            }

            @Override // java.util.AbstractList, java.util.List
            public Object get(int i) {
                switch (i) {
                    case 0:
                        return obj;
                    case 1:
                        return obj2;
                    default:
                        return objArr[i - 2];
                }
            }
        };
    }
}
