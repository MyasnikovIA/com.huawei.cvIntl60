package com.p052a.p053a.p057d.p065c;

import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.a.a.d.c.j */
/* loaded from: classes.dex */
public final class C0824j implements InterfaceC0822h {

    /* renamed from: c */
    private final Map<String, List<InterfaceC0823i>> f4538c;

    /* renamed from: d */
    private volatile Map<String, String> f4539d;

    C0824j(Map<String, List<InterfaceC0823i>> map) {
        this.f4538c = Collections.unmodifiableMap(map);
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0822h
    /* renamed from: a */
    public Map<String, String> mo4934a() {
        if (this.f4539d == null) {
            synchronized (this) {
                if (this.f4539d == null) {
                    this.f4539d = Collections.unmodifiableMap(m4936b());
                }
            }
        }
        return this.f4539d;
    }

    /* renamed from: b */
    private Map<String, String> m4936b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<InterfaceC0823i>> entry : this.f4538c.entrySet()) {
            StringBuilder sb = new StringBuilder();
            List<InterfaceC0823i> value = entry.getValue();
            int size = value.size();
            for (int i = 0; i < size; i++) {
                String mo4935a = value.get(i).mo4935a();
                if (!TextUtils.isEmpty(mo4935a)) {
                    sb.append(mo4935a);
                    if (i != value.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            if (!TextUtils.isEmpty(sb.toString())) {
                hashMap.put(entry.getKey(), sb.toString());
            }
        }
        return hashMap;
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f4538c + '}';
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0824j) {
            return this.f4538c.equals(((C0824j) obj).f4538c);
        }
        return false;
    }

    public int hashCode() {
        return this.f4538c.hashCode();
    }

    /* renamed from: com.a.a.d.c.j$a */
    public static final class a {

        /* renamed from: a */
        private static final String f4540a = m4937b();

        /* renamed from: b */
        private static final Map<String, List<InterfaceC0823i>> f4541b;

        /* renamed from: c */
        private boolean f4542c = true;

        /* renamed from: d */
        private Map<String, List<InterfaceC0823i>> f4543d = f4541b;

        /* renamed from: e */
        private boolean f4544e = true;

        static {
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(f4540a)) {
                hashMap.put("User-Agent", Collections.singletonList(new b(f4540a)));
            }
            f4541b = Collections.unmodifiableMap(hashMap);
        }

        /* renamed from: a */
        public C0824j m4938a() {
            this.f4542c = true;
            return new C0824j(this.f4543d);
        }

        @VisibleForTesting
        /* renamed from: b */
        static String m4937b() {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb = new StringBuilder(property.length());
                for (int i = 0; i < length; i++) {
                    char charAt = property.charAt(i);
                    if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                        sb.append(charAt);
                    } else {
                        sb.append('?');
                    }
                }
                return sb.toString();
            }
            return property;
        }
    }

    /* renamed from: com.a.a.d.c.j$b */
    static final class b implements InterfaceC0823i {

        /* renamed from: a */
        private final String f4545a;

        b(String str) {
            this.f4545a = str;
        }

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0823i
        /* renamed from: a */
        public String mo4935a() {
            return this.f4545a;
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f4545a + "'}";
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f4545a.equals(((b) obj).f4545a);
            }
            return false;
        }

        public int hashCode() {
            return this.f4545a.hashCode();
        }
    }
}
