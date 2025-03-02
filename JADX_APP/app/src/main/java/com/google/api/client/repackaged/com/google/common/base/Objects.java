package com.google.api.client.repackaged.com.google.common.base;

import com.google.api.client.repackaged.com.google.common.annotations.Beta;
import com.google.api.client.repackaged.com.google.common.annotations.GwtCompatible;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@GwtCompatible
/* loaded from: classes.dex */
public final class Objects {
    private Objects() {
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(simpleName(obj.getClass()));
    }

    public static ToStringHelper toStringHelper(Class<?> cls) {
        return new ToStringHelper(simpleName(cls));
    }

    public static ToStringHelper toStringHelper(String str) {
        return new ToStringHelper(str);
    }

    private static String simpleName(Class<?> cls) {
        String replaceAll = cls.getName().replaceAll("\\$[0-9]+", "\\$");
        int lastIndexOf = replaceAll.lastIndexOf(36);
        if (lastIndexOf == -1) {
            lastIndexOf = replaceAll.lastIndexOf(46);
        }
        return replaceAll.substring(lastIndexOf + 1);
    }

    public static <T> T firstNonNull(T t, T t2) {
        return t != null ? t : (T) Preconditions.checkNotNull(t2);
    }

    public static final class ToStringHelper {
        private final String className;
        private boolean omitNullValues;
        private final List<ValueHolder> valueHolders;

        /* synthetic */ ToStringHelper(String str, C14491 c14491) {
            this(str);
        }

        private ToStringHelper(String str) {
            this.valueHolders = new LinkedList();
            this.omitNullValues = false;
            this.className = (String) Preconditions.checkNotNull(str);
        }

        @Beta
        public ToStringHelper omitNullValues() {
            this.omitNullValues = true;
            return this;
        }

        public ToStringHelper add(String str, Object obj) {
            Preconditions.checkNotNull(str);
            addHolder(obj).builder.append(str).append('=').append(obj);
            return this;
        }

        public ToStringHelper add(String str, boolean z) {
            checkNameAndAppend(str).append(z);
            return this;
        }

        public ToStringHelper add(String str, char c) {
            checkNameAndAppend(str).append(c);
            return this;
        }

        public ToStringHelper add(String str, double d) {
            checkNameAndAppend(str).append(d);
            return this;
        }

        public ToStringHelper add(String str, float f) {
            checkNameAndAppend(str).append(f);
            return this;
        }

        public ToStringHelper add(String str, int i) {
            checkNameAndAppend(str).append(i);
            return this;
        }

        public ToStringHelper add(String str, long j) {
            checkNameAndAppend(str).append(j);
            return this;
        }

        private StringBuilder checkNameAndAppend(String str) {
            Preconditions.checkNotNull(str);
            return addHolder().builder.append(str).append('=');
        }

        public ToStringHelper addValue(Object obj) {
            addHolder(obj).builder.append(obj);
            return this;
        }

        public ToStringHelper addValue(boolean z) {
            addHolder().builder.append(z);
            return this;
        }

        public ToStringHelper addValue(char c) {
            addHolder().builder.append(c);
            return this;
        }

        public ToStringHelper addValue(double d) {
            addHolder().builder.append(d);
            return this;
        }

        public ToStringHelper addValue(float f) {
            addHolder().builder.append(f);
            return this;
        }

        public ToStringHelper addValue(int i) {
            addHolder().builder.append(i);
            return this;
        }

        public ToStringHelper addValue(long j) {
            addHolder().builder.append(j);
            return this;
        }

        public String toString() {
            boolean z = this.omitNullValues;
            boolean z2 = false;
            StringBuilder append = new StringBuilder(32).append(this.className).append('{');
            Iterator<ValueHolder> it = this.valueHolders.iterator();
            while (true) {
                boolean z3 = z2;
                if (it.hasNext()) {
                    ValueHolder next = it.next();
                    if (!z || !next.isNull) {
                        if (z3) {
                            append.append(", ");
                        } else {
                            z3 = true;
                        }
                        append.append((CharSequence) next.builder);
                    }
                    z2 = z3;
                } else {
                    return append.append('}').toString();
                }
            }
        }

        private ValueHolder addHolder() {
            ValueHolder valueHolder = new ValueHolder();
            this.valueHolders.add(valueHolder);
            return valueHolder;
        }

        private ValueHolder addHolder(Object obj) {
            ValueHolder addHolder = addHolder();
            addHolder.isNull = obj == null;
            return addHolder;
        }

        private static final class ValueHolder {
            final StringBuilder builder;
            boolean isNull;

            private ValueHolder() {
                this.builder = new StringBuilder();
            }

            /* synthetic */ ValueHolder(C14491 c14491) {
                this();
            }
        }
    }
}
