package android.support.design.widget;

import android.R;
import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.C0708n;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class CheckableImageButton extends C0708n implements Checkable {

    /* renamed from: a */
    private static final int[] f1422a = {R.attr.state_checked};

    /* renamed from: b */
    private boolean f1423b;

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.support.v7.appcompat.R.attr.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegateCompat() { // from class: android.support.design.widget.CheckableImageButton.1
            C02391() {
            }

            @Override // android.support.v4.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
            }

            @Override // android.support.v4.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCheckable(true);
                accessibilityNodeInfoCompat.setChecked(CheckableImageButton.this.isChecked());
            }
        });
    }

    /* renamed from: android.support.design.widget.CheckableImageButton$1 */
    class C02391 extends AccessibilityDelegateCompat {
        C02391() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(true);
            accessibilityNodeInfoCompat.setChecked(CheckableImageButton.this.isChecked());
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f1423b != z) {
            this.f1423b = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f1423b;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f1423b);
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        return this.f1423b ? mergeDrawableStates(super.onCreateDrawableState(f1422a.length + i), f1422a) : super.onCreateDrawableState(i);
    }
}
