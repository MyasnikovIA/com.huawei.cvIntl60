package ui_Controller.p110b;

import GeneralFunction.p005e.C0062f;
import GeneralFunction.p005e.C0063g;
import android.database.sqlite.SQLiteDatabase;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* renamed from: ui_Controller.b.g */
/* loaded from: classes.dex */
public class C1665g {

    /* renamed from: a */
    public C0063g f7626a;

    /* renamed from: b */
    public SQLiteDatabase f7627b;

    /* renamed from: c */
    public C0062f f7628c = new C0062f();

    public C1665g() {
        m7098a();
        this.f7627b = this.f7626a.getWritableDatabase();
    }

    /* renamed from: a */
    private void m7098a() {
        this.f7626a = new C0063g(UI_ModeMain.m7971s(), "VS80102W_DB", null, 1);
    }
}
