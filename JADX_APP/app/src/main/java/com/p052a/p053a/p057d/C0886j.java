package com.p052a.p053a.p057d;

import android.support.v4.util.ArrayMap;
import android.support.v4.util.SimpleArrayMap;
import java.security.MessageDigest;
import java.util.Map;

/* renamed from: com.a.a.d.j */
/* loaded from: classes.dex */
public final class C0886j implements InterfaceC0884h {

    /* renamed from: b */
    private final ArrayMap<C0885i<?>, Object> f4745b = new ArrayMap<>();

    /* renamed from: a */
    public void m5116a(C0886j c0886j) {
        this.f4745b.putAll((SimpleArrayMap<? extends C0885i<?>, ? extends Object>) c0886j.f4745b);
    }

    /* renamed from: a */
    public <T> C0886j m5114a(C0885i<T> c0885i, T t) {
        this.f4745b.put(c0885i, t);
        return this;
    }

    /* renamed from: a */
    public <T> T m5115a(C0885i<T> c0885i) {
        return this.f4745b.containsKey(c0885i) ? (T) this.f4745b.get(c0885i) : c0885i.m5111a();
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public boolean equals(Object obj) {
        if (obj instanceof C0886j) {
            return this.f4745b.equals(((C0886j) obj).f4745b);
        }
        return false;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    public int hashCode() {
        return this.f4745b.hashCode();
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0884h
    /* renamed from: a */
    public void mo4726a(MessageDigest messageDigest) {
        for (Map.Entry<C0885i<?>, Object> entry : this.f4745b.entrySet()) {
            m5113a(entry.getKey(), entry.getValue(), messageDigest);
        }
    }

    public String toString() {
        return "Options{values=" + this.f4745b + '}';
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <T> void m5113a(C0885i<T> c0885i, Object obj, MessageDigest messageDigest) {
        c0885i.m5112a((C0885i<T>) obj, messageDigest);
    }
}
