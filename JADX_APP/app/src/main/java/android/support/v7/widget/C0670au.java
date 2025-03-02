package android.support.v7.widget;

import android.support.v7.widget.C0698d;
import java.util.List;

/* renamed from: android.support.v7.widget.au */
/* loaded from: classes.dex */
class C0670au {

    /* renamed from: a */
    final a f3647a;

    /* renamed from: android.support.v7.widget.au$a */
    interface a {
        /* renamed from: a */
        C0698d.b mo4050a(int i, int i2, int i3, Object obj);

        /* renamed from: a */
        void mo4051a(C0698d.b bVar);
    }

    C0670au(a aVar) {
        this.f3647a = aVar;
    }

    /* renamed from: a */
    void m4047a(List<C0698d.b> list) {
        while (true) {
            int m4045b = m4045b(list);
            if (m4045b != -1) {
                m4044a(list, m4045b, m4045b + 1);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m4044a(List<C0698d.b> list, int i, int i2) {
        C0698d.b bVar = list.get(i);
        C0698d.b bVar2 = list.get(i2);
        switch (bVar2.f3844a) {
            case 1:
                m4046c(list, i, bVar, i2, bVar2);
                break;
            case 2:
                m4048a(list, i, bVar, i2, bVar2);
                break;
            case 4:
                m4049b(list, i, bVar, i2, bVar2);
                break;
        }
    }

    /* renamed from: a */
    void m4048a(List<C0698d.b> list, int i, C0698d.b bVar, int i2, C0698d.b bVar2) {
        boolean z;
        boolean z2;
        C0698d.b bVar3;
        if (bVar.f3845b < bVar.f3847d) {
            if (bVar2.f3845b == bVar.f3845b && bVar2.f3847d == bVar.f3847d - bVar.f3845b) {
                z = false;
                z2 = true;
            } else {
                z = false;
                z2 = false;
            }
        } else if (bVar2.f3845b == bVar.f3847d + 1 && bVar2.f3847d == bVar.f3845b - bVar.f3847d) {
            z = true;
            z2 = true;
        } else {
            z = true;
            z2 = false;
        }
        if (bVar.f3847d < bVar2.f3845b) {
            bVar2.f3845b--;
        } else if (bVar.f3847d < bVar2.f3845b + bVar2.f3847d) {
            bVar2.f3847d--;
            bVar.f3844a = 2;
            bVar.f3847d = 1;
            if (bVar2.f3847d == 0) {
                list.remove(i2);
                this.f3647a.mo4051a(bVar2);
                return;
            }
            return;
        }
        if (bVar.f3845b <= bVar2.f3845b) {
            bVar2.f3845b++;
            bVar3 = null;
        } else if (bVar.f3845b < bVar2.f3845b + bVar2.f3847d) {
            bVar3 = this.f3647a.mo4050a(2, bVar.f3845b + 1, (bVar2.f3845b + bVar2.f3847d) - bVar.f3845b, null);
            bVar2.f3847d = bVar.f3845b - bVar2.f3845b;
        } else {
            bVar3 = null;
        }
        if (z2) {
            list.set(i, bVar2);
            list.remove(i2);
            this.f3647a.mo4051a(bVar);
            return;
        }
        if (z) {
            if (bVar3 != null) {
                if (bVar.f3845b > bVar3.f3845b) {
                    bVar.f3845b -= bVar3.f3847d;
                }
                if (bVar.f3847d > bVar3.f3845b) {
                    bVar.f3847d -= bVar3.f3847d;
                }
            }
            if (bVar.f3845b > bVar2.f3845b) {
                bVar.f3845b -= bVar2.f3847d;
            }
            if (bVar.f3847d > bVar2.f3845b) {
                bVar.f3847d -= bVar2.f3847d;
            }
        } else {
            if (bVar3 != null) {
                if (bVar.f3845b >= bVar3.f3845b) {
                    bVar.f3845b -= bVar3.f3847d;
                }
                if (bVar.f3847d >= bVar3.f3845b) {
                    bVar.f3847d -= bVar3.f3847d;
                }
            }
            if (bVar.f3845b >= bVar2.f3845b) {
                bVar.f3845b -= bVar2.f3847d;
            }
            if (bVar.f3847d >= bVar2.f3845b) {
                bVar.f3847d -= bVar2.f3847d;
            }
        }
        list.set(i, bVar2);
        if (bVar.f3845b != bVar.f3847d) {
            list.set(i2, bVar);
        } else {
            list.remove(i2);
        }
        if (bVar3 != null) {
            list.add(i, bVar3);
        }
    }

    /* renamed from: c */
    private void m4046c(List<C0698d.b> list, int i, C0698d.b bVar, int i2, C0698d.b bVar2) {
        int i3 = 0;
        if (bVar.f3847d < bVar2.f3845b) {
            i3 = -1;
        }
        if (bVar.f3845b < bVar2.f3845b) {
            i3++;
        }
        if (bVar2.f3845b <= bVar.f3845b) {
            bVar.f3845b += bVar2.f3847d;
        }
        if (bVar2.f3845b <= bVar.f3847d) {
            bVar.f3847d += bVar2.f3847d;
        }
        bVar2.f3845b = i3 + bVar2.f3845b;
        list.set(i, bVar2);
        list.set(i2, bVar);
    }

    /* renamed from: b */
    void m4049b(List<C0698d.b> list, int i, C0698d.b bVar, int i2, C0698d.b bVar2) {
        C0698d.b bVar3;
        C0698d.b bVar4 = null;
        if (bVar.f3847d < bVar2.f3845b) {
            bVar2.f3845b--;
            bVar3 = null;
        } else if (bVar.f3847d < bVar2.f3845b + bVar2.f3847d) {
            bVar2.f3847d--;
            bVar3 = this.f3647a.mo4050a(4, bVar.f3845b, 1, bVar2.f3846c);
        } else {
            bVar3 = null;
        }
        if (bVar.f3845b <= bVar2.f3845b) {
            bVar2.f3845b++;
        } else if (bVar.f3845b < bVar2.f3845b + bVar2.f3847d) {
            int i3 = (bVar2.f3845b + bVar2.f3847d) - bVar.f3845b;
            bVar4 = this.f3647a.mo4050a(4, bVar.f3845b + 1, i3, bVar2.f3846c);
            bVar2.f3847d -= i3;
        }
        list.set(i2, bVar);
        if (bVar2.f3847d > 0) {
            list.set(i, bVar2);
        } else {
            list.remove(i);
            this.f3647a.mo4051a(bVar2);
        }
        if (bVar3 != null) {
            list.add(i, bVar3);
        }
        if (bVar4 != null) {
            list.add(i, bVar4);
        }
    }

    /* renamed from: b */
    private int m4045b(List<C0698d.b> list) {
        boolean z;
        boolean z2 = false;
        int size = list.size() - 1;
        while (size >= 0) {
            if (list.get(size).f3844a == 8) {
                if (z2) {
                    return size;
                }
                z = z2;
            } else {
                z = true;
            }
            size--;
            z2 = z;
        }
        return -1;
    }
}
