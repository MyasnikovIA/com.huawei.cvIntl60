package GeneralFunction;

import java.util.Timer;
import java.util.TimerTask;
import p026a.p032c.C0121a;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* renamed from: GeneralFunction.g */
/* loaded from: classes.dex */
public class C0068g {

    /* renamed from: a */
    private static C0087m[] f555a = null;

    /* renamed from: b */
    private static Timer f556b = null;

    /* renamed from: c */
    private static UI_ModeMain f557c = null;

    /* renamed from: a */
    public static void m633a(int i, int i2) {
        C0052d.m465a("IsrTimer", "UI_SetIsrTimer:" + i + " " + i2, 4);
        f555a[i].f678a = 1;
        f555a[i].f680c = 1;
        f555a[i].f679b = i2 / 20;
    }

    /* renamed from: a */
    public static void m632a(int i) {
        C0052d.m465a("IsrTimer", "UI_DeleteIsrTimer:" + i, 4);
        f555a[i].f678a = 0;
    }

    /* renamed from: a */
    public static void m634a(UI_ModeMain uI_ModeMain) {
        f557c = uI_ModeMain;
        f555a = new C0087m[9];
        for (int i = 0; i < 9; i++) {
            f555a[i] = new C0087m();
        }
        m637d();
    }

    /* renamed from: a */
    public static void m631a() {
        if (f556b != null) {
            f556b.cancel();
            f556b = null;
        }
        m637d();
    }

    /* renamed from: GeneralFunction.g$1 */
    static class AnonymousClass1 extends TimerTask {
        AnonymousClass1() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            for (int i = 0; i < 9; i++) {
                if (C0068g.f555a[i].f680c == 1 && C0068g.f555a[i].f678a > 0) {
                    C0087m c0087m = C0068g.f555a[i];
                    int i2 = c0087m.f678a + 1;
                    c0087m.f678a = i2;
                    if (i2 > C0068g.f555a[i].f679b) {
                        C0068g.f557c.m7980a(new C0121a(61440 + i));
                        C0068g.f555a[i].f678a = 1;
                    }
                }
            }
        }
    }

    /* renamed from: d */
    private static void m637d() {
        f556b = new Timer();
        f556b.scheduleAtFixedRate(new TimerTask() { // from class: GeneralFunction.g.1
            AnonymousClass1() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                for (int i = 0; i < 9; i++) {
                    if (C0068g.f555a[i].f680c == 1 && C0068g.f555a[i].f678a > 0) {
                        C0087m c0087m = C0068g.f555a[i];
                        int i2 = c0087m.f678a + 1;
                        c0087m.f678a = i2;
                        if (i2 > C0068g.f555a[i].f679b) {
                            C0068g.f557c.m7980a(new C0121a(61440 + i));
                            C0068g.f555a[i].f678a = 1;
                        }
                    }
                }
            }
        }, 20L, 20L);
    }
}
