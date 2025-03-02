package android.support.v7.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ActionProvider;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.android.exoplayer.C1167C;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: a */
    final C0577a f2930a;

    /* renamed from: b */
    final FrameLayout f2931b;

    /* renamed from: c */
    final FrameLayout f2932c;

    /* renamed from: d */
    ActionProvider f2933d;

    /* renamed from: e */
    final DataSetObserver f2934e;

    /* renamed from: f */
    PopupWindow.OnDismissListener f2935f;

    /* renamed from: g */
    boolean f2936g;

    /* renamed from: h */
    int f2937h;

    /* renamed from: i */
    private final ViewOnClickListenerC0578b f2938i;

    /* renamed from: j */
    private final View f2939j;

    /* renamed from: k */
    private final ImageView f2940k;

    /* renamed from: l */
    private final int f2941l;

    /* renamed from: m */
    private final ViewTreeObserver.OnGlobalLayoutListener f2942m;

    /* renamed from: n */
    private C0667ar f2943n;

    /* renamed from: o */
    private boolean f2944o;

    /* renamed from: p */
    private int f2945p;

    public void setActivityChooserModel(C0697c c0697c) {
        this.f2930a.m3031a(c0697c);
        if (m3028c()) {
            m3027b();
            m3026a();
        }
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f2940k.setImageDrawable(drawable);
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f2940k.setContentDescription(getContext().getString(i));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setProvider(ActionProvider actionProvider) {
        this.f2933d = actionProvider;
    }

    /* renamed from: a */
    public boolean m3026a() {
        if (m3028c() || !this.f2944o) {
            return false;
        }
        this.f2936g = false;
        m3025a(this.f2937h);
        return true;
    }

    /* renamed from: a */
    void m3025a(int i) {
        if (this.f2930a.m3036d() == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.f2942m);
        boolean z = this.f2932c.getVisibility() == 0;
        int m3035c = this.f2930a.m3035c();
        int i2 = z ? 1 : 0;
        if (i != Integer.MAX_VALUE && m3035c > i2 + i) {
            this.f2930a.m3032a(true);
            this.f2930a.m3030a(i - 1);
        } else {
            this.f2930a.m3032a(false);
            this.f2930a.m3030a(i);
        }
        C0667ar listPopupWindow = getListPopupWindow();
        if (!listPopupWindow.mo2822f()) {
            if (this.f2936g || !z) {
                this.f2930a.m3033a(true, z);
            } else {
                this.f2930a.m3033a(false, false);
            }
            listPopupWindow.m4030g(Math.min(this.f2930a.m3029a(), this.f2941l));
            listPopupWindow.mo2820d();
            if (this.f2933d != null) {
                this.f2933d.subUiVisibilityChanged(true);
            }
            listPopupWindow.mo2823g().setContentDescription(getContext().getString(R.string.abc_activitychooserview_choose_application));
            listPopupWindow.mo2823g().setSelector(new ColorDrawable(0));
        }
    }

    /* renamed from: b */
    public boolean m3027b() {
        if (m3028c()) {
            getListPopupWindow().mo2821e();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.f2942m);
                return true;
            }
            return true;
        }
        return true;
    }

    /* renamed from: c */
    public boolean m3028c() {
        return getListPopupWindow().mo2822f();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C0697c m3036d = this.f2930a.m3036d();
        if (m3036d != null) {
            m3036d.registerObserver(this.f2934e);
        }
        this.f2944o = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0697c m3036d = this.f2930a.m3036d();
        if (m3036d != null) {
            m3036d.unregisterObserver(this.f2934e);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f2942m);
        }
        if (m3028c()) {
            m3027b();
        }
        this.f2944o = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.f2939j;
        if (this.f2932c.getVisibility() != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), C1167C.ENCODING_PCM_32BIT);
        }
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f2939j.layout(0, 0, i3 - i, i4 - i2);
        if (!m3028c()) {
            m3027b();
        }
    }

    public C0697c getDataModel() {
        return this.f2930a.m3036d();
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f2935f = onDismissListener;
    }

    public void setInitialActivityCount(int i) {
        this.f2937h = i;
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.f2945p = i;
    }

    C0667ar getListPopupWindow() {
        if (this.f2943n == null) {
            this.f2943n = new C0667ar(getContext());
            this.f2943n.mo4019a(this.f2930a);
            this.f2943n.m4023b(this);
            this.f2943n.m4021a(true);
            this.f2943n.m4018a((AdapterView.OnItemClickListener) this.f2938i);
            this.f2943n.m4020a((PopupWindow.OnDismissListener) this.f2938i);
        }
        return this.f2943n;
    }

    /* renamed from: android.support.v7.widget.ActivityChooserView$b */
    private class ViewOnClickListenerC0578b implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {

        /* renamed from: a */
        final /* synthetic */ ActivityChooserView f2953a;

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            switch (((C0577a) adapterView.getAdapter()).getItemViewType(i)) {
                case 0:
                    this.f2953a.m3027b();
                    if (this.f2953a.f2936g) {
                        if (i > 0) {
                            this.f2953a.f2930a.m3036d().m4261c(i);
                            return;
                        }
                        return;
                    }
                    if (!this.f2953a.f2930a.m3037e()) {
                        i++;
                    }
                    Intent m4259b = this.f2953a.f2930a.m3036d().m4259b(i);
                    if (m4259b != null) {
                        m4259b.addFlags(524288);
                        this.f2953a.getContext().startActivity(m4259b);
                        return;
                    }
                    return;
                case 1:
                    this.f2953a.m3025a(Integer.MAX_VALUE);
                    return;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == this.f2953a.f2932c) {
                this.f2953a.m3027b();
                Intent m4259b = this.f2953a.f2930a.m3036d().m4259b(this.f2953a.f2930a.m3036d().m4257a(this.f2953a.f2930a.m3034b()));
                if (m4259b != null) {
                    m4259b.addFlags(524288);
                    this.f2953a.getContext().startActivity(m4259b);
                    return;
                }
                return;
            }
            if (view == this.f2953a.f2931b) {
                this.f2953a.f2936g = false;
                this.f2953a.m3025a(this.f2953a.f2937h);
                return;
            }
            throw new IllegalArgumentException();
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (view == this.f2953a.f2932c) {
                if (this.f2953a.f2930a.getCount() > 0) {
                    this.f2953a.f2936g = true;
                    this.f2953a.m3025a(this.f2953a.f2937h);
                }
                return true;
            }
            throw new IllegalArgumentException();
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            m3038a();
            if (this.f2953a.f2933d != null) {
                this.f2953a.f2933d.subUiVisibilityChanged(false);
            }
        }

        /* renamed from: a */
        private void m3038a() {
            if (this.f2953a.f2935f != null) {
                this.f2953a.f2935f.onDismiss();
            }
        }
    }

    /* renamed from: android.support.v7.widget.ActivityChooserView$a */
    private class C0577a extends BaseAdapter {

        /* renamed from: a */
        final /* synthetic */ ActivityChooserView f2947a;

        /* renamed from: b */
        private C0697c f2948b;

        /* renamed from: c */
        private int f2949c;

        /* renamed from: d */
        private boolean f2950d;

        /* renamed from: e */
        private boolean f2951e;

        /* renamed from: f */
        private boolean f2952f;

        /* renamed from: a */
        public void m3031a(C0697c c0697c) {
            C0697c m3036d = this.f2947a.f2930a.m3036d();
            if (m3036d != null && this.f2947a.isShown()) {
                m3036d.unregisterObserver(this.f2947a.f2934e);
            }
            this.f2948b = c0697c;
            if (c0697c != null && this.f2947a.isShown()) {
                c0697c.registerObserver(this.f2947a.f2934e);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return (this.f2952f && i == getCount() + (-1)) ? 1 : 0;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int m4256a = this.f2948b.m4256a();
            if (!this.f2950d && this.f2948b.m4260b() != null) {
                m4256a--;
            }
            int min = Math.min(m4256a, this.f2949c);
            if (this.f2952f) {
                return min + 1;
            }
            return min;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            switch (getItemViewType(i)) {
                case 0:
                    if (!this.f2950d && this.f2948b.m4260b() != null) {
                        i++;
                    }
                    return this.f2948b.m4258a(i);
                case 1:
                    return null;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            switch (getItemViewType(i)) {
                case 0:
                    if (view == null || view.getId() != R.id.list_item) {
                        view = LayoutInflater.from(this.f2947a.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                    }
                    PackageManager packageManager = this.f2947a.getContext().getPackageManager();
                    ImageView imageView = (ImageView) view.findViewById(R.id.icon);
                    ResolveInfo resolveInfo = (ResolveInfo) getItem(i);
                    imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
                    ((TextView) view.findViewById(R.id.title)).setText(resolveInfo.loadLabel(packageManager));
                    if (this.f2950d && i == 0 && this.f2951e) {
                        view.setActivated(true);
                        return view;
                    }
                    view.setActivated(false);
                    return view;
                case 1:
                    if (view == null || view.getId() != 1) {
                        View inflate = LayoutInflater.from(this.f2947a.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                        inflate.setId(1);
                        ((TextView) inflate.findViewById(R.id.title)).setText(this.f2947a.getContext().getString(R.string.abc_activity_chooser_view_see_all));
                        return inflate;
                    }
                    return view;
                default:
                    throw new IllegalArgumentException();
            }
        }

        /* renamed from: a */
        public int m3029a() {
            int i = this.f2949c;
            this.f2949c = Integer.MAX_VALUE;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            int i2 = 0;
            View view = null;
            int i3 = 0;
            while (i2 < count) {
                View view2 = getView(i2, view, null);
                view2.measure(makeMeasureSpec, makeMeasureSpec2);
                i3 = Math.max(i3, view2.getMeasuredWidth());
                i2++;
                view = view2;
            }
            this.f2949c = i;
            return i3;
        }

        /* renamed from: a */
        public void m3030a(int i) {
            if (this.f2949c != i) {
                this.f2949c = i;
                notifyDataSetChanged();
            }
        }

        /* renamed from: b */
        public ResolveInfo m3034b() {
            return this.f2948b.m4260b();
        }

        /* renamed from: a */
        public void m3032a(boolean z) {
            if (this.f2952f != z) {
                this.f2952f = z;
                notifyDataSetChanged();
            }
        }

        /* renamed from: c */
        public int m3035c() {
            return this.f2948b.m4256a();
        }

        /* renamed from: d */
        public C0697c m3036d() {
            return this.f2948b;
        }

        /* renamed from: a */
        public void m3033a(boolean z, boolean z2) {
            if (this.f2950d != z || this.f2951e != z2) {
                this.f2950d = z;
                this.f2951e = z2;
                notifyDataSetChanged();
            }
        }

        /* renamed from: e */
        public boolean m3037e() {
            return this.f2950d;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class InnerLayout extends LinearLayout {

        /* renamed from: a */
        private static final int[] f2946a = {android.R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            C0687bk m4166a = C0687bk.m4166a(context, attributeSet, f2946a);
            setBackgroundDrawable(m4166a.m4171a(0));
            m4166a.m4172a();
        }
    }
}
