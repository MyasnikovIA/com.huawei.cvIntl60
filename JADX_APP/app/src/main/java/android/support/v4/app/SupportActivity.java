package android.support.v4.app;

import android.app.Activity;
import android.arch.lifecycle.AbstractC0136c;
import android.arch.lifecycle.C0139f;
import android.arch.lifecycle.FragmentC0146m;
import android.arch.lifecycle.InterfaceC0138e;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.util.SimpleArrayMap;
import android.support.v4.view.KeyEventDispatcher;
import android.view.KeyEvent;
import android.view.View;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SupportActivity extends Activity implements InterfaceC0138e, KeyEventDispatcher.Component {
    private SimpleArrayMap<Class<? extends ExtraData>, ExtraData> mExtraDataMap = new SimpleArrayMap<>();
    private C0139f mLifecycleRegistry = new C0139f(this);

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class ExtraData {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void putExtraData(ExtraData extraData) {
        this.mExtraDataMap.put(extraData.getClass(), extraData);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        FragmentC0146m.m1339a(this);
    }

    @Override // android.app.Activity
    @CallSuper
    protected void onSaveInstanceState(Bundle bundle) {
        this.mLifecycleRegistry.m1328a(AbstractC0136c.b.CREATED);
        super.onSaveInstanceState(bundle);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public <T extends ExtraData> T getExtraData(Class<T> cls) {
        return (T) this.mExtraDataMap.get(cls);
    }

    public AbstractC0136c getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // android.support.v4.view.KeyEventDispatcher.Component
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return KeyEventDispatcher.dispatchKeyEvent(this, decorView, this, keyEvent);
        }
        return true;
    }
}
