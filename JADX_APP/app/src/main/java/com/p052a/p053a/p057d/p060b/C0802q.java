package com.p052a.p053a.p057d.p060b;

import android.support.v4.util.Pools;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p058a.InterfaceC0749c;
import com.p052a.p053a.p057d.p060b.C0792g;
import com.p052a.p053a.p081j.C0954h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.a.a.d.b.q */
/* loaded from: classes.dex */
public class C0802q<Data, ResourceType, Transcode> {

    /* renamed from: a */
    private final Class<Data> f4457a;

    /* renamed from: b */
    private final Pools.Pool<List<Exception>> f4458b;

    /* renamed from: c */
    private final List<? extends C0792g<Data, ResourceType, Transcode>> f4459c;

    /* renamed from: d */
    private final String f4460d;

    public C0802q(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<C0792g<Data, ResourceType, Transcode>> list, Pools.Pool<List<Exception>> pool) {
        this.f4457a = cls;
        this.f4458b = pool;
        this.f4459c = (List) C0954h.m5412a(list);
        this.f4460d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: a */
    public InterfaceC0804s<Transcode> m4898a(InterfaceC0749c<Data> interfaceC0749c, C0886j c0886j, int i, int i2, C0792g.a<ResourceType> aVar) {
        List<Exception> acquire = this.f4458b.acquire();
        try {
            return m4897a(interfaceC0749c, c0886j, i, i2, aVar, acquire);
        } finally {
            this.f4458b.release(acquire);
        }
    }

    /* renamed from: a */
    private InterfaceC0804s<Transcode> m4897a(InterfaceC0749c<Data> interfaceC0749c, C0886j c0886j, int i, int i2, C0792g.a<ResourceType> aVar, List<Exception> list) {
        InterfaceC0804s<Transcode> interfaceC0804s;
        int size = this.f4459c.size();
        InterfaceC0804s<Transcode> interfaceC0804s2 = null;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                interfaceC0804s = interfaceC0804s2;
                break;
            }
            try {
                interfaceC0804s = this.f4459c.get(i3).m4843a(interfaceC0749c, i, i2, c0886j, aVar);
            } catch (C0800o e) {
                list.add(e);
                interfaceC0804s = interfaceC0804s2;
            }
            if (interfaceC0804s != null) {
                break;
            }
            i3++;
            interfaceC0804s2 = interfaceC0804s;
        }
        if (interfaceC0804s == null) {
            throw new C0800o(this.f4460d, new ArrayList(list));
        }
        return interfaceC0804s;
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f4459c.toArray(new C0792g[this.f4459c.size()])) + '}';
    }
}
