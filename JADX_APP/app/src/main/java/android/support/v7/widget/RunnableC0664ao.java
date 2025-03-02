package android.support.v7.widget;

import android.support.annotation.Nullable;
import android.support.v4.os.TraceCompat;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* renamed from: android.support.v7.widget.ao */
/* loaded from: classes.dex */
final class RunnableC0664ao implements Runnable {

    /* renamed from: a */
    static final ThreadLocal<RunnableC0664ao> f3557a = new ThreadLocal<>();

    /* renamed from: e */
    static Comparator<b> f3558e = new Comparator<b>() { // from class: android.support.v7.widget.ao.1
        AnonymousClass1() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(b bVar, b bVar2) {
            if ((bVar.f3570d == null) != (bVar2.f3570d == null)) {
                return bVar.f3570d == null ? 1 : -1;
            }
            if (bVar.f3567a != bVar2.f3567a) {
                return bVar.f3567a ? -1 : 1;
            }
            int i = bVar2.f3568b - bVar.f3568b;
            if (i == 0) {
                int i2 = bVar.f3569c - bVar2.f3569c;
                if (i2 == 0) {
                    return 0;
                }
                return i2;
            }
            return i;
        }
    };

    /* renamed from: c */
    long f3560c;

    /* renamed from: d */
    long f3561d;

    /* renamed from: b */
    ArrayList<RecyclerView> f3559b = new ArrayList<>();

    /* renamed from: f */
    private ArrayList<b> f3562f = new ArrayList<>();

    RunnableC0664ao() {
    }

    /* renamed from: android.support.v7.widget.ao$b */
    static class b {

        /* renamed from: a */
        public boolean f3567a;

        /* renamed from: b */
        public int f3568b;

        /* renamed from: c */
        public int f3569c;

        /* renamed from: d */
        public RecyclerView f3570d;

        /* renamed from: e */
        public int f3571e;

        b() {
        }

        /* renamed from: a */
        public void m3989a() {
            this.f3567a = false;
            this.f3568b = 0;
            this.f3569c = 0;
            this.f3570d = null;
            this.f3571e = 0;
        }
    }

    /* renamed from: android.support.v7.widget.ao$a */
    static class a implements RecyclerView.AbstractC0603i.a {

        /* renamed from: a */
        int f3563a;

        /* renamed from: b */
        int f3564b;

        /* renamed from: c */
        int[] f3565c;

        /* renamed from: d */
        int f3566d;

        a() {
        }

        /* renamed from: a */
        void m3986a(int i, int i2) {
            this.f3563a = i;
            this.f3564b = i2;
        }

        /* renamed from: a */
        void m3987a(RecyclerView recyclerView, boolean z) {
            this.f3566d = 0;
            if (this.f3565c != null) {
                Arrays.fill(this.f3565c, -1);
            }
            RecyclerView.AbstractC0603i abstractC0603i = recyclerView.f3102n;
            if (recyclerView.f3101m != null && abstractC0603i != null && abstractC0603i.m3471p()) {
                if (z) {
                    if (!recyclerView.f3094f.m4283d()) {
                        abstractC0603i.mo3139a(recyclerView.f3101m.mo1587a(), this);
                    }
                } else if (!recyclerView.m3303v()) {
                    abstractC0603i.mo3138a(this.f3563a, this.f3564b, recyclerView.f3044D, this);
                }
                if (this.f3566d > abstractC0603i.f3150x) {
                    abstractC0603i.f3150x = this.f3566d;
                    abstractC0603i.f3151y = z;
                    recyclerView.f3093e.m3531b();
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.AbstractC0603i.a
        /* renamed from: b */
        public void mo3487b(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.f3566d * 2;
            if (this.f3565c == null) {
                this.f3565c = new int[4];
                Arrays.fill(this.f3565c, -1);
            } else if (i3 >= this.f3565c.length) {
                int[] iArr = this.f3565c;
                this.f3565c = new int[i3 * 2];
                System.arraycopy(iArr, 0, this.f3565c, 0, iArr.length);
            }
            this.f3565c[i3] = i;
            this.f3565c[i3 + 1] = i2;
            this.f3566d++;
        }

        /* renamed from: a */
        boolean m3988a(int i) {
            if (this.f3565c == null) {
                return false;
            }
            int i2 = this.f3566d * 2;
            for (int i3 = 0; i3 < i2; i3 += 2) {
                if (this.f3565c[i3] == i) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: a */
        void m3985a() {
            if (this.f3565c != null) {
                Arrays.fill(this.f3565c, -1);
            }
            this.f3566d = 0;
        }
    }

    /* renamed from: a */
    public void m3981a(RecyclerView recyclerView) {
        this.f3559b.add(recyclerView);
    }

    /* renamed from: b */
    public void m3983b(RecyclerView recyclerView) {
        this.f3559b.remove(recyclerView);
    }

    /* renamed from: a */
    void m3982a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f3560c == 0) {
            this.f3560c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.f3043C.m3986a(i, i2);
    }

    /* renamed from: android.support.v7.widget.ao$1 */
    static class AnonymousClass1 implements Comparator<b> {
        AnonymousClass1() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(b bVar, b bVar2) {
            if ((bVar.f3570d == null) != (bVar2.f3570d == null)) {
                return bVar.f3570d == null ? 1 : -1;
            }
            if (bVar.f3567a != bVar2.f3567a) {
                return bVar.f3567a ? -1 : 1;
            }
            int i = bVar2.f3568b - bVar.f3568b;
            if (i == 0) {
                int i2 = bVar.f3569c - bVar2.f3569c;
                if (i2 == 0) {
                    return 0;
                }
                return i2;
            }
            return i;
        }
    }

    /* renamed from: a */
    private void m3975a() {
        b bVar;
        int i;
        int size = this.f3559b.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            RecyclerView recyclerView = this.f3559b.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.f3043C.m3987a(recyclerView, false);
                i = recyclerView.f3043C.f3566d + i3;
            } else {
                i = i3;
            }
            i2++;
            i3 = i;
        }
        this.f3562f.ensureCapacity(i3);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView2 = this.f3559b.get(i5);
            if (recyclerView2.getWindowVisibility() == 0) {
                a aVar = recyclerView2.f3043C;
                int abs = Math.abs(aVar.f3563a) + Math.abs(aVar.f3564b);
                int i6 = i4;
                for (int i7 = 0; i7 < aVar.f3566d * 2; i7 += 2) {
                    if (i6 >= this.f3562f.size()) {
                        bVar = new b();
                        this.f3562f.add(bVar);
                    } else {
                        bVar = this.f3562f.get(i6);
                    }
                    int i8 = aVar.f3565c[i7 + 1];
                    bVar.f3567a = i8 <= abs;
                    bVar.f3568b = abs;
                    bVar.f3569c = i8;
                    bVar.f3570d = recyclerView2;
                    bVar.f3571e = aVar.f3565c[i7];
                    i6++;
                }
                i4 = i6;
            }
        }
        Collections.sort(this.f3562f, f3558e);
    }

    /* renamed from: a */
    static boolean m3978a(RecyclerView recyclerView, int i) {
        int m3869c = recyclerView.f3095g.m3869c();
        for (int i2 = 0; i2 < m3869c; i2++) {
            RecyclerView.AbstractC0617w m3220e = RecyclerView.m3220e(recyclerView.f3095g.m3872d(i2));
            if (m3220e.f3219c == i && !m3220e.m3612n()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private RecyclerView.AbstractC0617w m3974a(RecyclerView recyclerView, int i, long j) {
        if (m3978a(recyclerView, i)) {
            return null;
        }
        RecyclerView.C0610p c0610p = recyclerView.f3093e;
        try {
            recyclerView.m3292l();
            RecyclerView.AbstractC0617w m3516a = c0610p.m3516a(i, false, j);
            if (m3516a != null) {
                if (m3516a.m3614p() && !m3516a.m3612n()) {
                    c0610p.m3527a(m3516a.f3217a);
                } else {
                    c0610p.m3526a(m3516a, false);
                }
            }
            return m3516a;
        } finally {
            recyclerView.m3259b(false);
        }
    }

    /* renamed from: a */
    private void m3976a(@Nullable RecyclerView recyclerView, long j) {
        if (recyclerView != null) {
            if (recyclerView.f3112x && recyclerView.f3095g.m3869c() != 0) {
                recyclerView.m3264c();
            }
            a aVar = recyclerView.f3043C;
            aVar.m3987a(recyclerView, true);
            if (aVar.f3566d != 0) {
                try {
                    TraceCompat.beginSection("RV Nested Prefetch");
                    recyclerView.f3044D.m3569a(recyclerView.f3101m);
                    for (int i = 0; i < aVar.f3566d * 2; i += 2) {
                        m3974a(recyclerView, aVar.f3565c[i], j);
                    }
                } finally {
                    TraceCompat.endSection();
                }
            }
        }
    }

    /* renamed from: a */
    private void m3977a(b bVar, long j) {
        RecyclerView.AbstractC0617w m3974a = m3974a(bVar.f3570d, bVar.f3571e, bVar.f3567a ? Long.MAX_VALUE : j);
        if (m3974a != null && m3974a.f3218b != null && m3974a.m3614p() && !m3974a.m3612n()) {
            m3976a(m3974a.f3218b.get(), j);
        }
    }

    /* renamed from: b */
    private void m3979b(long j) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f3562f.size()) {
                b bVar = this.f3562f.get(i2);
                if (bVar.f3570d != null) {
                    m3977a(bVar, j);
                    bVar.m3989a();
                    i = i2 + 1;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    void m3980a(long j) {
        m3975a();
        m3979b(j);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            TraceCompat.beginSection("RV Prefetch");
            if (this.f3559b.isEmpty()) {
                return;
            }
            int size = this.f3559b.size();
            int i = 0;
            long j = 0;
            while (i < size) {
                RecyclerView recyclerView = this.f3559b.get(i);
                i++;
                j = recyclerView.getWindowVisibility() == 0 ? Math.max(recyclerView.getDrawingTime(), j) : j;
            }
            if (j == 0) {
                return;
            }
            m3980a(TimeUnit.MILLISECONDS.toNanos(j) + this.f3561d);
        } finally {
            this.f3560c = 0L;
            TraceCompat.endSection();
        }
    }
}
