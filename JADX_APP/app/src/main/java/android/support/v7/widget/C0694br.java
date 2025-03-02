package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.Pools;
import android.support.v7.widget.RecyclerView;

/* renamed from: android.support.v7.widget.br */
/* loaded from: classes.dex */
class C0694br {

    /* renamed from: a */
    @VisibleForTesting
    final ArrayMap<RecyclerView.AbstractC0617w, a> f3807a = new ArrayMap<>();

    /* renamed from: b */
    @VisibleForTesting
    final LongSparseArray<RecyclerView.AbstractC0617w> f3808b = new LongSparseArray<>();

    /* renamed from: android.support.v7.widget.br$b */
    interface b {
        /* renamed from: a */
        void mo3306a(RecyclerView.AbstractC0617w abstractC0617w);

        /* renamed from: a */
        void mo3307a(RecyclerView.AbstractC0617w abstractC0617w, @NonNull RecyclerView.AbstractC0600f.c cVar, @Nullable RecyclerView.AbstractC0600f.c cVar2);

        /* renamed from: b */
        void mo3308b(RecyclerView.AbstractC0617w abstractC0617w, @Nullable RecyclerView.AbstractC0600f.c cVar, RecyclerView.AbstractC0600f.c cVar2);

        /* renamed from: c */
        void mo3309c(RecyclerView.AbstractC0617w abstractC0617w, @NonNull RecyclerView.AbstractC0600f.c cVar, @NonNull RecyclerView.AbstractC0600f.c cVar2);
    }

    C0694br() {
    }

    /* renamed from: a */
    void m4226a() {
        this.f3807a.clear();
        this.f3808b.clear();
    }

    /* renamed from: a */
    void m4228a(RecyclerView.AbstractC0617w abstractC0617w, RecyclerView.AbstractC0600f.c cVar) {
        a aVar = this.f3807a.get(abstractC0617w);
        if (aVar == null) {
            aVar = a.m4241a();
            this.f3807a.put(abstractC0617w, aVar);
        }
        aVar.f3811b = cVar;
        aVar.f3810a |= 4;
    }

    /* renamed from: a */
    boolean m4230a(RecyclerView.AbstractC0617w abstractC0617w) {
        a aVar = this.f3807a.get(abstractC0617w);
        return (aVar == null || (aVar.f3810a & 1) == 0) ? false : true;
    }

    @Nullable
    /* renamed from: b */
    RecyclerView.AbstractC0600f.c m4231b(RecyclerView.AbstractC0617w abstractC0617w) {
        return m4224a(abstractC0617w, 4);
    }

    @Nullable
    /* renamed from: c */
    RecyclerView.AbstractC0600f.c m4234c(RecyclerView.AbstractC0617w abstractC0617w) {
        return m4224a(abstractC0617w, 8);
    }

    /* renamed from: a */
    private RecyclerView.AbstractC0600f.c m4224a(RecyclerView.AbstractC0617w abstractC0617w, int i) {
        a valueAt;
        RecyclerView.AbstractC0600f.c cVar = null;
        int indexOfKey = this.f3807a.indexOfKey(abstractC0617w);
        if (indexOfKey >= 0 && (valueAt = this.f3807a.valueAt(indexOfKey)) != null && (valueAt.f3810a & i) != 0) {
            valueAt.f3810a &= i ^ (-1);
            if (i == 4) {
                cVar = valueAt.f3811b;
            } else if (i == 8) {
                cVar = valueAt.f3812c;
            } else {
                throw new IllegalArgumentException("Must provide flag PRE or POST");
            }
            if ((valueAt.f3810a & 12) == 0) {
                this.f3807a.removeAt(indexOfKey);
                a.m4242a(valueAt);
            }
        }
        return cVar;
    }

    /* renamed from: a */
    void m4227a(long j, RecyclerView.AbstractC0617w abstractC0617w) {
        this.f3808b.put(j, abstractC0617w);
    }

    /* renamed from: b */
    void m4233b(RecyclerView.AbstractC0617w abstractC0617w, RecyclerView.AbstractC0600f.c cVar) {
        a aVar = this.f3807a.get(abstractC0617w);
        if (aVar == null) {
            aVar = a.m4241a();
            this.f3807a.put(abstractC0617w, aVar);
        }
        aVar.f3810a |= 2;
        aVar.f3811b = cVar;
    }

    /* renamed from: d */
    boolean m4236d(RecyclerView.AbstractC0617w abstractC0617w) {
        a aVar = this.f3807a.get(abstractC0617w);
        return (aVar == null || (aVar.f3810a & 4) == 0) ? false : true;
    }

    /* renamed from: a */
    RecyclerView.AbstractC0617w m4225a(long j) {
        return this.f3808b.get(j);
    }

    /* renamed from: c */
    void m4235c(RecyclerView.AbstractC0617w abstractC0617w, RecyclerView.AbstractC0600f.c cVar) {
        a aVar = this.f3807a.get(abstractC0617w);
        if (aVar == null) {
            aVar = a.m4241a();
            this.f3807a.put(abstractC0617w, aVar);
        }
        aVar.f3812c = cVar;
        aVar.f3810a |= 8;
    }

    /* renamed from: e */
    void m4237e(RecyclerView.AbstractC0617w abstractC0617w) {
        a aVar = this.f3807a.get(abstractC0617w);
        if (aVar == null) {
            aVar = a.m4241a();
            this.f3807a.put(abstractC0617w, aVar);
        }
        aVar.f3810a |= 1;
    }

    /* renamed from: f */
    void m4238f(RecyclerView.AbstractC0617w abstractC0617w) {
        a aVar = this.f3807a.get(abstractC0617w);
        if (aVar != null) {
            aVar.f3810a &= -2;
        }
    }

    /* renamed from: a */
    void m4229a(b bVar) {
        for (int size = this.f3807a.size() - 1; size >= 0; size--) {
            RecyclerView.AbstractC0617w keyAt = this.f3807a.keyAt(size);
            a removeAt = this.f3807a.removeAt(size);
            if ((removeAt.f3810a & 3) == 3) {
                bVar.mo3306a(keyAt);
            } else if ((removeAt.f3810a & 1) != 0) {
                if (removeAt.f3811b == null) {
                    bVar.mo3306a(keyAt);
                } else {
                    bVar.mo3307a(keyAt, removeAt.f3811b, removeAt.f3812c);
                }
            } else if ((removeAt.f3810a & 14) == 14) {
                bVar.mo3308b(keyAt, removeAt.f3811b, removeAt.f3812c);
            } else if ((removeAt.f3810a & 12) == 12) {
                bVar.mo3309c(keyAt, removeAt.f3811b, removeAt.f3812c);
            } else if ((removeAt.f3810a & 4) != 0) {
                bVar.mo3307a(keyAt, removeAt.f3811b, null);
            } else if ((removeAt.f3810a & 8) != 0) {
                bVar.mo3308b(keyAt, removeAt.f3811b, removeAt.f3812c);
            } else if ((removeAt.f3810a & 2) != 0) {
            }
            a.m4242a(removeAt);
        }
    }

    /* renamed from: g */
    void m4239g(RecyclerView.AbstractC0617w abstractC0617w) {
        int size = this.f3808b.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            if (abstractC0617w != this.f3808b.valueAt(size)) {
                size--;
            } else {
                this.f3808b.removeAt(size);
                break;
            }
        }
        a remove = this.f3807a.remove(abstractC0617w);
        if (remove != null) {
            a.m4242a(remove);
        }
    }

    /* renamed from: b */
    void m4232b() {
        a.m4243b();
    }

    /* renamed from: h */
    public void m4240h(RecyclerView.AbstractC0617w abstractC0617w) {
        m4238f(abstractC0617w);
    }

    /* renamed from: android.support.v7.widget.br$a */
    static class a {

        /* renamed from: d */
        static Pools.Pool<a> f3809d = new Pools.SimplePool(20);

        /* renamed from: a */
        int f3810a;

        /* renamed from: b */
        @Nullable
        RecyclerView.AbstractC0600f.c f3811b;

        /* renamed from: c */
        @Nullable
        RecyclerView.AbstractC0600f.c f3812c;

        private a() {
        }

        /* renamed from: a */
        static a m4241a() {
            a acquire = f3809d.acquire();
            return acquire == null ? new a() : acquire;
        }

        /* renamed from: a */
        static void m4242a(a aVar) {
            aVar.f3810a = 0;
            aVar.f3811b = null;
            aVar.f3812c = null;
            f3809d.release(aVar);
        }

        /* renamed from: b */
        static void m4243b() {
            while (f3809d.acquire() != null) {
            }
        }
    }
}
