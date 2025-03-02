package android.arch.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.arch.lifecycle.AbstractC0136c;
import android.content.ComponentCallbacks2;
import android.os.Bundle;
import android.support.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.arch.lifecycle.m */
/* loaded from: classes.dex */
public class FragmentC0146m extends Fragment {

    /* renamed from: a */
    private a f1017a;

    /* renamed from: android.arch.lifecycle.m$a */
    interface a {
        /* renamed from: a */
        void m1344a();

        /* renamed from: b */
        void m1345b();

        /* renamed from: c */
        void m1346c();
    }

    /* renamed from: a */
    public static void m1339a(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC0146m(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: a */
    private void m1341a(a aVar) {
        if (aVar != null) {
            aVar.m1344a();
        }
    }

    /* renamed from: b */
    private void m1342b(a aVar) {
        if (aVar != null) {
            aVar.m1345b();
        }
    }

    /* renamed from: c */
    private void m1343c(a aVar) {
        if (aVar != null) {
            aVar.m1346c();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m1341a(this.f1017a);
        m1340a(AbstractC0136c.a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        m1342b(this.f1017a);
        m1340a(AbstractC0136c.a.ON_START);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        m1343c(this.f1017a);
        m1340a(AbstractC0136c.a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m1340a(AbstractC0136c.a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m1340a(AbstractC0136c.a.ON_STOP);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m1340a(AbstractC0136c.a.ON_DESTROY);
        this.f1017a = null;
    }

    /* renamed from: a */
    private void m1340a(AbstractC0136c.a aVar) {
        ComponentCallbacks2 activity = getActivity();
        if (activity instanceof InterfaceC0140g) {
            ((InterfaceC0140g) activity).m1330a().m1327a(aVar);
        } else if (activity instanceof InterfaceC0138e) {
            AbstractC0136c lifecycle = ((InterfaceC0138e) activity).getLifecycle();
            if (lifecycle instanceof C0139f) {
                ((C0139f) lifecycle).m1327a(aVar);
            }
        }
    }
}
