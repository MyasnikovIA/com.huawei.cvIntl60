package android.support.v7.widget;

import android.support.v4.util.Pools;
import android.support.v7.widget.C0670au;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* renamed from: android.support.v7.widget.d */
/* loaded from: classes.dex */
class C0698d implements C0670au.a {

    /* renamed from: a */
    final ArrayList<b> f3836a;

    /* renamed from: b */
    final ArrayList<b> f3837b;

    /* renamed from: c */
    final a f3838c;

    /* renamed from: d */
    Runnable f3839d;

    /* renamed from: e */
    final boolean f3840e;

    /* renamed from: f */
    final C0670au f3841f;

    /* renamed from: g */
    private Pools.Pool<b> f3842g;

    /* renamed from: h */
    private int f3843h;

    /* renamed from: android.support.v7.widget.d$a */
    interface a {
        /* renamed from: a */
        RecyclerView.AbstractC0617w mo3321a(int i);

        /* renamed from: a */
        void mo3322a(int i, int i2);

        /* renamed from: a */
        void mo3323a(int i, int i2, Object obj);

        /* renamed from: a */
        void mo3324a(b bVar);

        /* renamed from: b */
        void mo3325b(int i, int i2);

        /* renamed from: b */
        void mo3326b(b bVar);

        /* renamed from: c */
        void mo3327c(int i, int i2);

        /* renamed from: d */
        void mo3329d(int i, int i2);
    }

    C0698d(a aVar) {
        this(aVar, false);
    }

    C0698d(a aVar, boolean z) {
        this.f3842g = new Pools.SimplePool(30);
        this.f3836a = new ArrayList<>();
        this.f3837b = new ArrayList<>();
        this.f3843h = 0;
        this.f3838c = aVar;
        this.f3840e = z;
        this.f3841f = new C0670au(this);
    }

    /* renamed from: a */
    void m4275a() {
        m4277a(this.f3836a);
        m4277a(this.f3837b);
        this.f3843h = 0;
    }

    /* renamed from: b */
    void m4280b() {
        this.f3841f.m4047a(this.f3836a);
        int size = this.f3836a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f3836a.get(i);
            switch (bVar.f3844a) {
                case 1:
                    m4272f(bVar);
                    break;
                case 2:
                    m4268c(bVar);
                    break;
                case 4:
                    m4269d(bVar);
                    break;
                case 8:
                    m4267b(bVar);
                    break;
            }
            if (this.f3839d != null) {
                this.f3839d.run();
            }
        }
        this.f3836a.clear();
    }

    /* renamed from: c */
    void m4282c() {
        int size = this.f3837b.size();
        for (int i = 0; i < size; i++) {
            this.f3838c.mo3326b(this.f3837b.get(i));
        }
        m4277a(this.f3837b);
        this.f3843h = 0;
    }

    /* renamed from: b */
    private void m4267b(b bVar) {
        m4273g(bVar);
    }

    /* renamed from: c */
    private void m4268c(b bVar) {
        boolean z;
        int i;
        int i2 = bVar.f3845b;
        int i3 = bVar.f3845b + bVar.f3847d;
        char c = 65535;
        int i4 = bVar.f3845b;
        int i5 = 0;
        while (i4 < i3) {
            if (this.f3838c.mo3321a(i4) != null || m4270d(i4)) {
                if (c == 0) {
                    m4271e(mo4050a(2, i2, i5, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 1;
            } else {
                if (c == 1) {
                    m4273g(mo4050a(2, i2, i5, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 0;
            }
            if (z) {
                i = i4 - i5;
                i3 -= i5;
                i5 = 1;
            } else {
                i5++;
                i = i4;
            }
            i4 = i + 1;
        }
        if (i5 != bVar.f3847d) {
            mo4051a(bVar);
            bVar = mo4050a(2, i2, i5, null);
        }
        if (c == 0) {
            m4271e(bVar);
        } else {
            m4273g(bVar);
        }
    }

    /* renamed from: d */
    private void m4269d(b bVar) {
        int i = bVar.f3845b;
        int i2 = bVar.f3845b + bVar.f3847d;
        char c = 65535;
        int i3 = 0;
        for (int i4 = bVar.f3845b; i4 < i2; i4++) {
            if (this.f3838c.mo3321a(i4) != null || m4270d(i4)) {
                if (c == 0) {
                    m4271e(mo4050a(4, i, i3, bVar.f3846c));
                    i3 = 0;
                    i = i4;
                }
                c = 1;
            } else {
                if (c == 1) {
                    m4273g(mo4050a(4, i, i3, bVar.f3846c));
                    i3 = 0;
                    i = i4;
                }
                c = 0;
            }
            i3++;
        }
        if (i3 != bVar.f3847d) {
            Object obj = bVar.f3846c;
            mo4051a(bVar);
            bVar = mo4050a(4, i, i3, obj);
        }
        if (c == 0) {
            m4271e(bVar);
        } else {
            m4273g(bVar);
        }
    }

    /* renamed from: e */
    private void m4271e(b bVar) {
        int i;
        boolean z;
        if (bVar.f3844a == 1 || bVar.f3844a == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m4266b = m4266b(bVar.f3845b, bVar.f3844a);
        int i2 = bVar.f3845b;
        switch (bVar.f3844a) {
            case 2:
                i = 0;
                break;
            case 3:
            default:
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            case 4:
                i = 1;
                break;
        }
        int i3 = 1;
        for (int i4 = 1; i4 < bVar.f3847d; i4++) {
            int m4266b2 = m4266b(bVar.f3845b + (i * i4), bVar.f3844a);
            switch (bVar.f3844a) {
                case 2:
                    if (m4266b2 == m4266b) {
                        z = true;
                        break;
                    } else {
                        z = false;
                        break;
                    }
                case 3:
                default:
                    z = false;
                    break;
                case 4:
                    if (m4266b2 == m4266b + 1) {
                        z = true;
                        break;
                    } else {
                        z = false;
                        break;
                    }
            }
            if (z) {
                i3++;
            } else {
                b mo4050a = mo4050a(bVar.f3844a, m4266b, i3, bVar.f3846c);
                m4276a(mo4050a, i2);
                mo4051a(mo4050a);
                if (bVar.f3844a == 4) {
                    i2 += i3;
                }
                i3 = 1;
                m4266b = m4266b2;
            }
        }
        Object obj = bVar.f3846c;
        mo4051a(bVar);
        if (i3 > 0) {
            b mo4050a2 = mo4050a(bVar.f3844a, m4266b, i3, obj);
            m4276a(mo4050a2, i2);
            mo4051a(mo4050a2);
        }
    }

    /* renamed from: a */
    void m4276a(b bVar, int i) {
        this.f3838c.mo3324a(bVar);
        switch (bVar.f3844a) {
            case 2:
                this.f3838c.mo3322a(i, bVar.f3847d);
                return;
            case 3:
            default:
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            case 4:
                this.f3838c.mo3323a(i, bVar.f3847d, bVar.f3846c);
                return;
        }
    }

    /* renamed from: b */
    private int m4266b(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6 = i;
        for (int size = this.f3837b.size() - 1; size >= 0; size--) {
            b bVar = this.f3837b.get(size);
            if (bVar.f3844a == 8) {
                if (bVar.f3845b < bVar.f3847d) {
                    i3 = bVar.f3845b;
                    i4 = bVar.f3847d;
                } else {
                    i3 = bVar.f3847d;
                    i4 = bVar.f3845b;
                }
                if (i6 >= i3 && i6 <= i4) {
                    if (i3 == bVar.f3845b) {
                        if (i2 == 1) {
                            bVar.f3847d++;
                        } else if (i2 == 2) {
                            bVar.f3847d--;
                        }
                        i5 = i6 + 1;
                    } else {
                        if (i2 == 1) {
                            bVar.f3845b++;
                        } else if (i2 == 2) {
                            bVar.f3845b--;
                        }
                        i5 = i6 - 1;
                    }
                } else {
                    if (i6 < bVar.f3845b) {
                        if (i2 == 1) {
                            bVar.f3845b++;
                            bVar.f3847d++;
                            i5 = i6;
                        } else if (i2 == 2) {
                            bVar.f3845b--;
                            bVar.f3847d--;
                        }
                    }
                    i5 = i6;
                }
                i6 = i5;
            } else if (bVar.f3845b <= i6) {
                if (bVar.f3844a == 1) {
                    i6 -= bVar.f3847d;
                } else if (bVar.f3844a == 2) {
                    i6 += bVar.f3847d;
                }
            } else if (i2 == 1) {
                bVar.f3845b++;
            } else if (i2 == 2) {
                bVar.f3845b--;
            }
        }
        for (int size2 = this.f3837b.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f3837b.get(size2);
            if (bVar2.f3844a == 8) {
                if (bVar2.f3847d == bVar2.f3845b || bVar2.f3847d < 0) {
                    this.f3837b.remove(size2);
                    mo4051a(bVar2);
                }
            } else if (bVar2.f3847d <= 0) {
                this.f3837b.remove(size2);
                mo4051a(bVar2);
            }
        }
        return i6;
    }

    /* renamed from: d */
    private boolean m4270d(int i) {
        int size = this.f3837b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f3837b.get(i2);
            if (bVar.f3844a == 8) {
                if (m4274a(bVar.f3847d, i2 + 1) == i) {
                    return true;
                }
            } else if (bVar.f3844a == 1) {
                int i3 = bVar.f3845b + bVar.f3847d;
                for (int i4 = bVar.f3845b; i4 < i3; i4++) {
                    if (m4274a(i4, i2 + 1) == i) {
                        return true;
                    }
                }
            } else {
                continue;
            }
        }
        return false;
    }

    /* renamed from: f */
    private void m4272f(b bVar) {
        m4273g(bVar);
    }

    /* renamed from: g */
    private void m4273g(b bVar) {
        this.f3837b.add(bVar);
        switch (bVar.f3844a) {
            case 1:
                this.f3838c.mo3327c(bVar.f3845b, bVar.f3847d);
                return;
            case 2:
                this.f3838c.mo3325b(bVar.f3845b, bVar.f3847d);
                return;
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                throw new IllegalArgumentException("Unknown update op type for " + bVar);
            case 4:
                this.f3838c.mo3323a(bVar.f3845b, bVar.f3847d, bVar.f3846c);
                return;
            case 8:
                this.f3838c.mo3329d(bVar.f3845b, bVar.f3847d);
                return;
        }
    }

    /* renamed from: d */
    boolean m4283d() {
        return this.f3836a.size() > 0;
    }

    /* renamed from: a */
    boolean m4278a(int i) {
        return (this.f3843h & i) != 0;
    }

    /* renamed from: b */
    int m4279b(int i) {
        return m4274a(i, 0);
    }

    /* renamed from: a */
    int m4274a(int i, int i2) {
        int size = this.f3837b.size();
        int i3 = i;
        while (i2 < size) {
            b bVar = this.f3837b.get(i2);
            if (bVar.f3844a == 8) {
                if (bVar.f3845b == i3) {
                    i3 = bVar.f3847d;
                } else {
                    if (bVar.f3845b < i3) {
                        i3--;
                    }
                    if (bVar.f3847d <= i3) {
                        i3++;
                    }
                }
            } else if (bVar.f3845b > i3) {
                continue;
            } else if (bVar.f3844a == 2) {
                if (i3 < bVar.f3845b + bVar.f3847d) {
                    return -1;
                }
                i3 -= bVar.f3847d;
            } else if (bVar.f3844a == 1) {
                i3 += bVar.f3847d;
            }
            i2++;
        }
        return i3;
    }

    /* renamed from: e */
    void m4284e() {
        m4282c();
        int size = this.f3836a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f3836a.get(i);
            switch (bVar.f3844a) {
                case 1:
                    this.f3838c.mo3326b(bVar);
                    this.f3838c.mo3327c(bVar.f3845b, bVar.f3847d);
                    break;
                case 2:
                    this.f3838c.mo3326b(bVar);
                    this.f3838c.mo3322a(bVar.f3845b, bVar.f3847d);
                    break;
                case 4:
                    this.f3838c.mo3326b(bVar);
                    this.f3838c.mo3323a(bVar.f3845b, bVar.f3847d, bVar.f3846c);
                    break;
                case 8:
                    this.f3838c.mo3326b(bVar);
                    this.f3838c.mo3329d(bVar.f3845b, bVar.f3847d);
                    break;
            }
            if (this.f3839d != null) {
                this.f3839d.run();
            }
        }
        m4277a(this.f3836a);
        this.f3843h = 0;
    }

    /* renamed from: c */
    public int m4281c(int i) {
        int size = this.f3836a.size();
        int i2 = i;
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f3836a.get(i3);
            switch (bVar.f3844a) {
                case 1:
                    if (bVar.f3845b <= i2) {
                        i2 += bVar.f3847d;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (bVar.f3845b <= i2) {
                        if (bVar.f3845b + bVar.f3847d > i2) {
                            return -1;
                        }
                        i2 -= bVar.f3847d;
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if (bVar.f3845b == i2) {
                        i2 = bVar.f3847d;
                        break;
                    } else {
                        if (bVar.f3845b < i2) {
                            i2--;
                        }
                        if (bVar.f3847d <= i2) {
                            i2++;
                            break;
                        } else {
                            break;
                        }
                    }
            }
        }
        return i2;
    }

    /* renamed from: f */
    boolean m4285f() {
        return (this.f3837b.isEmpty() || this.f3836a.isEmpty()) ? false : true;
    }

    /* renamed from: android.support.v7.widget.d$b */
    static class b {

        /* renamed from: a */
        int f3844a;

        /* renamed from: b */
        int f3845b;

        /* renamed from: c */
        Object f3846c;

        /* renamed from: d */
        int f3847d;

        b(int i, int i2, int i3, Object obj) {
            this.f3844a = i;
            this.f3845b = i2;
            this.f3847d = i3;
            this.f3846c = obj;
        }

        /* renamed from: a */
        String m4286a() {
            switch (this.f3844a) {
                case 1:
                    return "add";
                case 2:
                    return "rm";
                case 3:
                case 5:
                case 6:
                case 7:
                default:
                    return "??";
                case 4:
                    return "up";
                case 8:
                    return "mv";
            }
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + m4286a() + ",s:" + this.f3845b + "c:" + this.f3847d + ",p:" + this.f3846c + "]";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f3844a != bVar.f3844a) {
                return false;
            }
            if (this.f3844a == 8 && Math.abs(this.f3847d - this.f3845b) == 1 && this.f3847d == bVar.f3845b && this.f3845b == bVar.f3847d) {
                return true;
            }
            if (this.f3847d == bVar.f3847d && this.f3845b == bVar.f3845b) {
                return this.f3846c != null ? this.f3846c.equals(bVar.f3846c) : bVar.f3846c == null;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f3844a * 31) + this.f3845b) * 31) + this.f3847d;
        }
    }

    @Override // android.support.v7.widget.C0670au.a
    /* renamed from: a */
    public b mo4050a(int i, int i2, int i3, Object obj) {
        b acquire = this.f3842g.acquire();
        if (acquire == null) {
            return new b(i, i2, i3, obj);
        }
        acquire.f3844a = i;
        acquire.f3845b = i2;
        acquire.f3847d = i3;
        acquire.f3846c = obj;
        return acquire;
    }

    @Override // android.support.v7.widget.C0670au.a
    /* renamed from: a */
    public void mo4051a(b bVar) {
        if (!this.f3840e) {
            bVar.f3846c = null;
            this.f3842g.release(bVar);
        }
    }

    /* renamed from: a */
    void m4277a(List<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            mo4051a(list.get(i));
        }
        list.clear();
    }
}
