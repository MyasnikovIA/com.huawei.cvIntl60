package android.support.p036a.p037a;

import android.app.Activity;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;

/* renamed from: android.support.a.a.a */
/* loaded from: classes.dex */
public final class C0151a {

    /* renamed from: a */
    private Object f1021a;

    private C0151a(Object obj) {
        this.f1021a = obj;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public static C0151a m1352a(Activity activity, DragEvent dragEvent) {
        DragAndDropPermissions requestDragAndDropPermissions;
        if (Build.VERSION.SDK_INT < 24 || (requestDragAndDropPermissions = activity.requestDragAndDropPermissions(dragEvent)) == null) {
            return null;
        }
        return new C0151a(requestDragAndDropPermissions);
    }
}
