package ui_Controller.ui_StartMode;

import GeneralFunction.C0052d;
import GeneralFunction.p002b.C0046a;
import GeneralFunction.p018o.C0092a;
import android.content.Context;
import android.os.Process;
import java.lang.Thread;

/* renamed from: ui_Controller.ui_StartMode.d */
/* loaded from: classes.dex */
public class C1865d implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private Context f8820a;

    /* renamed from: b */
    private C0046a f8821b;

    /* renamed from: c */
    private int f8822c;

    /* renamed from: a */
    public static void m8025a(Context context, C0046a c0046a, int i) {
        Thread.setDefaultUncaughtExceptionHandler(new C1865d(context, c0046a, i));
    }

    private C1865d(Context context, C0046a c0046a, int i) {
        this.f8820a = null;
        this.f8821b = null;
        this.f8822c = -1;
        this.f8821b = c0046a;
        this.f8820a = context;
        this.f8822c = i;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        C0052d.m465a("UI_UncaughtException", "FATAL uncaughtException!", 0);
        th.printStackTrace();
        if (this.f8821b != null) {
            new C0092a().m902a(this.f8822c);
            this.f8821b.m427a(true, true);
            this.f8821b.m426a();
        }
        Process.killProcess(Process.myPid());
        System.exit(10);
    }
}
