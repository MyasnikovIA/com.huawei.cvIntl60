package com.google.api.client.util;

import com.google.api.client.repackaged.com.google.common.base.Objects;

/* loaded from: classes.dex */
public final class Objects {
    public static boolean equal(Object obj, Object obj2) {
        return com.google.api.client.repackaged.com.google.common.base.Objects.equal(obj, obj2);
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(com.google.api.client.repackaged.com.google.common.base.Objects.toStringHelper(obj));
    }

    public static final class ToStringHelper {
        private final Objects.ToStringHelper wrapped;

        ToStringHelper(Objects.ToStringHelper toStringHelper) {
            this.wrapped = toStringHelper;
        }

        public ToStringHelper omitNullValues() {
            this.wrapped.omitNullValues();
            return this;
        }

        public ToStringHelper add(String str, Object obj) {
            this.wrapped.add(str, obj);
            return this;
        }

        public String toString() {
            return this.wrapped.toString();
        }
    }

    private Objects() {
    }
}
