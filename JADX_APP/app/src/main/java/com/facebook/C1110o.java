package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.facebook.o */
/* loaded from: classes.dex */
public class C1110o extends AbstractList<GraphRequest> {

    /* renamed from: a */
    private static AtomicInteger f5753a = new AtomicInteger();

    /* renamed from: b */
    private Handler f5754b;

    /* renamed from: c */
    private List<GraphRequest> f5755c;

    /* renamed from: d */
    private int f5756d = 0;

    /* renamed from: e */
    private final String f5757e = Integer.valueOf(f5753a.incrementAndGet()).toString();

    /* renamed from: f */
    private List<a> f5758f = new ArrayList();

    /* renamed from: g */
    private String f5759g;

    /* renamed from: com.facebook.o$a */
    public interface a {
        /* renamed from: a */
        void mo5906a(C1110o c1110o);
    }

    /* renamed from: com.facebook.o$b */
    public interface b extends a {
        /* renamed from: a */
        void m6412a(C1110o c1110o, long j, long j2);
    }

    public C1110o() {
        this.f5755c = new ArrayList();
        this.f5755c = new ArrayList();
    }

    public C1110o(Collection<GraphRequest> collection) {
        this.f5755c = new ArrayList();
        this.f5755c = new ArrayList(collection);
    }

    public C1110o(GraphRequest... graphRequestArr) {
        this.f5755c = new ArrayList();
        this.f5755c = Arrays.asList(graphRequestArr);
    }

    /* renamed from: a */
    public int m6395a() {
        return this.f5756d;
    }

    /* renamed from: a */
    public void m6399a(a aVar) {
        if (!this.f5758f.contains(aVar)) {
            this.f5758f.add(aVar);
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: a */
    public final boolean add(GraphRequest graphRequest) {
        return this.f5755c.add(graphRequest);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public final void add(int i, GraphRequest graphRequest) {
        this.f5755c.add(i, graphRequest);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f5755c.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public final GraphRequest get(int i) {
        return this.f5755c.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: b */
    public final GraphRequest remove(int i) {
        return this.f5755c.remove(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: b */
    public final GraphRequest set(int i, GraphRequest graphRequest) {
        return this.f5755c.set(i, graphRequest);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5755c.size();
    }

    /* renamed from: b */
    final String m6403b() {
        return this.f5757e;
    }

    /* renamed from: c */
    final Handler m6404c() {
        return this.f5754b;
    }

    /* renamed from: a */
    final void m6398a(Handler handler) {
        this.f5754b = handler;
    }

    /* renamed from: d */
    final List<GraphRequest> m6405d() {
        return this.f5755c;
    }

    /* renamed from: e */
    final List<a> m6406e() {
        return this.f5758f;
    }

    /* renamed from: f */
    public final String m6407f() {
        return this.f5759g;
    }

    /* renamed from: g */
    public final List<C1111p> m6408g() {
        return m6410i();
    }

    /* renamed from: h */
    public final AsyncTaskC1109n m6409h() {
        return m6411j();
    }

    /* renamed from: i */
    List<C1111p> m6410i() {
        return GraphRequest.m5559b(this);
    }

    /* renamed from: j */
    AsyncTaskC1109n m6411j() {
        return GraphRequest.m5562c(this);
    }
}
