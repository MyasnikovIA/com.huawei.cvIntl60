package com.p086c.p087a.p088a;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* renamed from: com.c.a.a.d */
/* loaded from: classes.dex */
public class C0975d<E> extends AbstractList<E> {

    /* renamed from: c */
    private static final AbstractC0976e f5009c = AbstractC0976e.m5479a(C0975d.class);

    /* renamed from: a */
    List<E> f5010a;

    /* renamed from: b */
    Iterator<E> f5011b;

    public C0975d(List<E> list, Iterator<E> it) {
        this.f5010a = list;
        this.f5011b = it;
    }

    /* renamed from: a */
    private void m5478a() {
        f5009c.mo5475a("blowup running");
        while (this.f5011b.hasNext()) {
            this.f5010a.add(this.f5011b.next());
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        if (this.f5010a.size() > i) {
            return this.f5010a.get(i);
        }
        if (this.f5011b.hasNext()) {
            this.f5010a.add(this.f5011b.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new Iterator<E>() { // from class: com.c.a.a.d.1

            /* renamed from: a */
            int f5012a = 0;

            AnonymousClass1() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f5012a < C0975d.this.f5010a.size() || C0975d.this.f5011b.hasNext();
            }

            @Override // java.util.Iterator
            public E next() {
                if (this.f5012a < C0975d.this.f5010a.size()) {
                    List<E> list = C0975d.this.f5010a;
                    int i = this.f5012a;
                    this.f5012a = i + 1;
                    return list.get(i);
                }
                C0975d.this.f5010a.add(C0975d.this.f5011b.next());
                return (E) next();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    /* renamed from: com.c.a.a.d$1 */
    class AnonymousClass1 implements Iterator<E> {

        /* renamed from: a */
        int f5012a = 0;

        AnonymousClass1() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f5012a < C0975d.this.f5010a.size() || C0975d.this.f5011b.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f5012a < C0975d.this.f5010a.size()) {
                List<E> list = C0975d.this.f5010a;
                int i = this.f5012a;
                this.f5012a = i + 1;
                return list.get(i);
            }
            C0975d.this.f5010a.add(C0975d.this.f5011b.next());
            return (E) next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        f5009c.mo5475a("potentially expensive size() call");
        m5478a();
        return this.f5010a.size();
    }
}
