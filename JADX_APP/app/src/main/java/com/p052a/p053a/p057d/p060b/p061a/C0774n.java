package com.p052a.p053a.p057d.p060b.p061a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import com.p052a.p053a.p081j.C0955i;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

@TargetApi(19)
/* renamed from: com.a.a.d.b.a.n */
/* loaded from: classes.dex */
public class C0774n implements InterfaceC0772l {

    /* renamed from: a */
    private static final Bitmap.Config[] f4241a = {Bitmap.Config.ARGB_8888, null};

    /* renamed from: b */
    private static final Bitmap.Config[] f4242b = {Bitmap.Config.RGB_565};

    /* renamed from: c */
    private static final Bitmap.Config[] f4243c = {Bitmap.Config.ARGB_4444};

    /* renamed from: d */
    private static final Bitmap.Config[] f4244d = {Bitmap.Config.ALPHA_8};

    /* renamed from: e */
    private final b f4245e = new b();

    /* renamed from: f */
    private final C0768h<a, Bitmap> f4246f = new C0768h<>();

    /* renamed from: g */
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f4247g = new HashMap();

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    /* renamed from: a */
    public void mo4665a(Bitmap bitmap) {
        a m4725a = this.f4245e.m4725a(C0955i.m5418a(bitmap), bitmap.getConfig());
        this.f4246f.m4688a(m4725a, bitmap);
        NavigableMap<Integer, Integer> m4719a = m4719a(bitmap.getConfig());
        Integer num = (Integer) m4719a.get(Integer.valueOf(m4725a.f4249a));
        m4719a.put(Integer.valueOf(m4725a.f4249a), Integer.valueOf(num == null ? 1 : num.intValue() + 1));
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    @Nullable
    /* renamed from: a */
    public Bitmap mo4664a(int i, int i2, Bitmap.Config config) {
        a m4721b = m4721b(C0955i.m5416a(i, i2, config), config);
        Bitmap m4687a = this.f4246f.m4687a((C0768h<a, Bitmap>) m4721b);
        if (m4687a != null) {
            m4720a(Integer.valueOf(m4721b.f4249a), m4687a);
            m4687a.reconfigure(i, i2, m4687a.getConfig() != null ? m4687a.getConfig() : Bitmap.Config.ARGB_8888);
        }
        return m4687a;
    }

    /* renamed from: b */
    private a m4721b(int i, Bitmap.Config config) {
        a m4725a = this.f4245e.m4725a(i, config);
        Bitmap.Config[] m4722b = m4722b(config);
        int length = m4722b.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            Bitmap.Config config2 = m4722b[i2];
            Integer ceilingKey = m4719a(config2).ceilingKey(Integer.valueOf(i));
            if (ceilingKey == null || ceilingKey.intValue() > i * 8) {
                i2++;
            } else if (ceilingKey.intValue() != i || (config2 != null ? !config2.equals(config) : config != null)) {
                this.f4245e.m4674a(m4725a);
                return this.f4245e.m4725a(ceilingKey.intValue(), config2);
            }
        }
        return m4725a;
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    @Nullable
    /* renamed from: a */
    public Bitmap mo4663a() {
        Bitmap m4686a = this.f4246f.m4686a();
        if (m4686a != null) {
            m4720a(Integer.valueOf(C0955i.m5418a(m4686a)), m4686a);
        }
        return m4686a;
    }

    /* renamed from: a */
    private void m4720a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> m4719a = m4719a(bitmap.getConfig());
        Integer num2 = (Integer) m4719a.get(num);
        if (num2 == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + mo4667b(bitmap) + ", this: " + this);
        }
        if (num2.intValue() == 1) {
            m4719a.remove(num);
        } else {
            m4719a.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    /* renamed from: a */
    private NavigableMap<Integer, Integer> m4719a(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f4247g.get(config);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f4247g.put(config, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    /* renamed from: b */
    public String mo4667b(Bitmap bitmap) {
        return m4718a(C0955i.m5418a(bitmap), bitmap.getConfig());
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    /* renamed from: b */
    public String mo4666b(int i, int i2, Bitmap.Config config) {
        return m4718a(C0955i.m5416a(i, i2, config), config);
    }

    @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0772l
    /* renamed from: c */
    public int mo4668c(Bitmap bitmap) {
        return C0955i.m5418a(bitmap);
    }

    public String toString() {
        StringBuilder append = new StringBuilder().append("SizeConfigStrategy{groupedMap=").append(this.f4246f).append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f4247g.entrySet()) {
            append.append(entry.getKey()).append('[').append(entry.getValue()).append("], ");
        }
        if (!this.f4247g.isEmpty()) {
            append.replace(append.length() - 2, append.length(), "");
        }
        return append.append(")}").toString();
    }

    /* renamed from: com.a.a.d.b.a.n$b */
    static class b extends AbstractC0764d<a> {
        b() {
        }

        /* renamed from: a */
        public a m4725a(int i, Bitmap.Config config) {
            a c = m4675c();
            c.m4723a(i, config);
            return c;
        }

        @Override // com.p052a.p053a.p057d.p060b.p061a.AbstractC0764d
        /* renamed from: a */
        public a mo4673b() {
            return new a(this);
        }
    }

    /* renamed from: com.a.a.d.b.a.n$a */
    static final class a implements InterfaceC0773m {

        /* renamed from: a */
        int f4249a;

        /* renamed from: b */
        private final b f4250b;

        /* renamed from: c */
        private Bitmap.Config f4251c;

        public a(b bVar) {
            this.f4250b = bVar;
        }

        /* renamed from: a */
        public void m4723a(int i, Bitmap.Config config) {
            this.f4249a = i;
            this.f4251c = config;
        }

        @Override // com.p052a.p053a.p057d.p060b.p061a.InterfaceC0773m
        /* renamed from: a */
        public void mo4669a() {
            this.f4250b.m4674a(this);
        }

        public String toString() {
            return C0774n.m4718a(this.f4249a, this.f4251c);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f4249a == aVar.f4249a && C0955i.m5427a(this.f4251c, aVar.f4251c);
        }

        public int hashCode() {
            return (this.f4251c != null ? this.f4251c.hashCode() : 0) + (this.f4249a * 31);
        }
    }

    /* renamed from: a */
    static String m4718a(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    /* renamed from: com.a.a.d.b.a.n$1 */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4248a = new int[Bitmap.Config.values().length];

        static {
            try {
                f4248a[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4248a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4248a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4248a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: b */
    private static Bitmap.Config[] m4722b(Bitmap.Config config) {
        switch (AnonymousClass1.f4248a[config.ordinal()]) {
            case 1:
                return f4241a;
            case 2:
                return f4242b;
            case 3:
                return f4243c;
            case 4:
                return f4244d;
            default:
                return new Bitmap.Config[]{config};
        }
    }
}
