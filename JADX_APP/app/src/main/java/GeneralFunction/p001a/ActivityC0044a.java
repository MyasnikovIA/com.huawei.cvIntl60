package GeneralFunction.p001a;

import android.app.Activity;
import android.content.Context;
import android.os.Message;
import java.util.Locale;
import p026a.p032c.C0121a;

/* renamed from: GeneralFunction.a.a */
/* loaded from: classes.dex */
public class ActivityC0044a extends Activity {

    /* renamed from: a */
    public static Locale f421a = null;

    /* renamed from: b */
    private int f422b = 0;

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f422b = 0;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f422b = 1;
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f422b = 2;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f422b = 3;
    }

    /* renamed from: a */
    public int m406a() {
        return this.f422b;
    }

    /* renamed from: a */
    public void m407a(int i) {
        mo408a(i, 0L);
    }

    /* renamed from: a */
    public void mo408a(int i, long j) {
    }

    /* renamed from: a */
    public void m409a(C0121a c0121a) {
        mo410a(c0121a, 0L);
    }

    /* renamed from: a */
    public void mo410a(C0121a c0121a, long j) {
    }

    /* renamed from: a */
    public void mo411a(Message message) {
    }

    /* renamed from: b */
    public void mo416b(Message message) {
    }

    /* renamed from: b */
    public void m412b(int i) {
        mo413b(i, 0L);
    }

    /* renamed from: b */
    public void mo413b(int i, long j) {
    }

    /* renamed from: b */
    public void m414b(C0121a c0121a) {
        mo415b(c0121a, 0L);
    }

    /* renamed from: b */
    public void mo415b(C0121a c0121a, long j) {
    }

    /* renamed from: b */
    public boolean mo417b() {
        return true;
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }
}
