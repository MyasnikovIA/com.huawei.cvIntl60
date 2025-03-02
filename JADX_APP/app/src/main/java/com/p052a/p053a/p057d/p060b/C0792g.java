package com.p052a.p053a.p057d.p060b;

import android.support.v4.util.Pools;
import android.util.Log;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0887k;
import com.p052a.p053a.p057d.p058a.InterfaceC0749c;
import com.p052a.p053a.p057d.p067d.p073f.InterfaceC0878d;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.a.a.d.b.g */
/* loaded from: classes.dex */
public class C0792g<DataType, ResourceType, Transcode> {

    /* renamed from: a */
    private final Class<DataType> f4377a;

    /* renamed from: b */
    private final List<? extends InterfaceC0887k<DataType, ResourceType>> f4378b;

    /* renamed from: c */
    private final InterfaceC0878d<ResourceType, Transcode> f4379c;

    /* renamed from: d */
    private final Pools.Pool<List<Exception>> f4380d;

    /* renamed from: e */
    private final String f4381e;

    /* renamed from: com.a.a.d.b.g$a */
    interface a<ResourceType> {
        /* renamed from: a */
        InterfaceC0804s<ResourceType> mo4830a(InterfaceC0804s<ResourceType> interfaceC0804s);
    }

    public C0792g(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends InterfaceC0887k<DataType, ResourceType>> list, InterfaceC0878d<ResourceType, Transcode> interfaceC0878d, Pools.Pool<List<Exception>> pool) {
        this.f4377a = cls;
        this.f4378b = list;
        this.f4379c = interfaceC0878d;
        this.f4380d = pool;
        this.f4381e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* renamed from: a */
    public InterfaceC0804s<Transcode> m4843a(InterfaceC0749c<DataType> interfaceC0749c, int i, int i2, C0886j c0886j, a<ResourceType> aVar) {
        return this.f4379c.mo5096a(aVar.mo4830a(m4841a(interfaceC0749c, i, i2, c0886j)), c0886j);
    }

    /* renamed from: a */
    private InterfaceC0804s<ResourceType> m4841a(InterfaceC0749c<DataType> interfaceC0749c, int i, int i2, C0886j c0886j) {
        List<Exception> acquire = this.f4380d.acquire();
        try {
            return m4842a(interfaceC0749c, i, i2, c0886j, acquire);
        } finally {
            this.f4380d.release(acquire);
        }
    }

    /* renamed from: a */
    private InterfaceC0804s<ResourceType> m4842a(InterfaceC0749c<DataType> interfaceC0749c, int i, int i2, C0886j c0886j, List<Exception> list) {
        InterfaceC0804s<ResourceType> interfaceC0804s = null;
        int size = this.f4378b.size();
        for (int i3 = 0; i3 < size; i3++) {
            InterfaceC0887k<DataType, ResourceType> interfaceC0887k = this.f4378b.get(i3);
            try {
                interfaceC0804s = interfaceC0887k.mo4970a(interfaceC0749c.mo4632a(), c0886j) ? interfaceC0887k.mo4969a(interfaceC0749c.mo4632a(), i, i2, c0886j) : interfaceC0804s;
            } catch (IOException | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + interfaceC0887k, e);
                }
                list.add(e);
            }
            if (interfaceC0804s != null) {
                break;
            }
        }
        if (interfaceC0804s == null) {
            throw new C0800o(this.f4381e, new ArrayList(list));
        }
        return interfaceC0804s;
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f4377a + ", decoders=" + this.f4378b + ", transcoder=" + this.f4379c + '}';
    }
}
