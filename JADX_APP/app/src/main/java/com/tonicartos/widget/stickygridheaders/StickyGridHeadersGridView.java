package com.tonicartos.widget.stickygridheaders;

import android.R;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.google.android.exoplayer.C1167C;
import com.tonicartos.widget.stickygridheaders.C1572b;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class StickyGridHeadersGridView extends GridView implements AbsListView.OnScrollListener, AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener, AdapterView.OnItemSelectedListener {

    /* renamed from: A */
    private AdapterView.OnItemClickListener f7068A;

    /* renamed from: B */
    private AdapterView.OnItemLongClickListener f7069B;

    /* renamed from: C */
    private AdapterView.OnItemSelectedListener f7070C;

    /* renamed from: D */
    private RunnableC1568e f7071D;

    /* renamed from: E */
    private AbsListView.OnScrollListener f7072E;

    /* renamed from: F */
    private int f7073F;

    /* renamed from: G */
    private View f7074G;

    /* renamed from: H */
    private Runnable f7075H;

    /* renamed from: I */
    private int f7076I;

    /* renamed from: J */
    private int f7077J;

    /* renamed from: b */
    public RunnableC1564a f7078b;

    /* renamed from: c */
    public RunnableC1565b f7079c;

    /* renamed from: d */
    protected C1572b f7080d;

    /* renamed from: e */
    protected boolean f7081e;

    /* renamed from: f */
    protected int f7082f;

    /* renamed from: g */
    protected int f7083g;

    /* renamed from: h */
    boolean f7084h;

    /* renamed from: j */
    private boolean f7085j;

    /* renamed from: k */
    private final Rect f7086k;

    /* renamed from: l */
    private boolean f7087l;

    /* renamed from: m */
    private boolean f7088m;

    /* renamed from: n */
    private int f7089n;

    /* renamed from: o */
    private long f7090o;

    /* renamed from: p */
    private DataSetObserver f7091p;

    /* renamed from: q */
    private int f7092q;

    /* renamed from: r */
    private boolean f7093r;

    /* renamed from: s */
    private int f7094s;

    /* renamed from: t */
    private boolean f7095t;

    /* renamed from: u */
    private float f7096u;

    /* renamed from: v */
    private int f7097v;

    /* renamed from: w */
    private boolean f7098w;

    /* renamed from: x */
    private int f7099x;

    /* renamed from: y */
    private InterfaceC1566c f7100y;

    /* renamed from: z */
    private InterfaceC1567d f7101z;

    /* renamed from: i */
    private static final String f7067i = "Error supporting platform " + Build.VERSION.SDK_INT + ".";

    /* renamed from: a */
    static final String f7066a = StickyGridHeadersGridView.class.getSimpleName();

    /* renamed from: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView$c */
    public interface InterfaceC1566c {
        /* renamed from: a */
        void mo6707a(AdapterView<?> adapterView, View view, long j);
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView$d */
    public interface InterfaceC1567d {
        /* renamed from: a */
        boolean m6708a(AdapterView<?> adapterView, View view, long j);
    }

    /* renamed from: a */
    private static MotionEvent.PointerCoords[] m6691a(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerCount];
        for (int i = 0; i < pointerCount; i++) {
            pointerCoordsArr[i] = new MotionEvent.PointerCoords();
            motionEvent.getPointerCoords(i, pointerCoordsArr[i]);
        }
        return pointerCoordsArr;
    }

    /* renamed from: b */
    private static int[] m6695b(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        int[] iArr = new int[pointerCount];
        for (int i = 0; i < pointerCount; i++) {
            iArr[i] = motionEvent.getPointerId(i);
        }
        return iArr;
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView$1 */
    class C15601 extends DataSetObserver {
        C15601() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            StickyGridHeadersGridView.this.m6697c();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            StickyGridHeadersGridView.this.m6697c();
        }
    }

    public StickyGridHeadersGridView(Context context) {
        this(context, null);
    }

    public StickyGridHeadersGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.gridViewStyle);
    }

    public StickyGridHeadersGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7085j = true;
        this.f7086k = new Rect();
        this.f7090o = -1L;
        this.f7091p = new DataSetObserver() { // from class: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView.1
            C15601() {
            }

            @Override // android.database.DataSetObserver
            public void onChanged() {
                StickyGridHeadersGridView.this.m6697c();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                StickyGridHeadersGridView.this.m6697c();
            }
        };
        this.f7095t = true;
        this.f7099x = 1;
        this.f7073F = 0;
        this.f7084h = false;
        super.setOnScrollListener(this);
        setVerticalFadingEdgeEnabled(false);
        if (!this.f7098w) {
            this.f7097v = -1;
        }
        this.f7076I = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    /* renamed from: a */
    public View m6700a(int i) {
        if (i == -2) {
            return this.f7074G;
        }
        try {
            return (View) getChildAt(i).getTag();
        } catch (Exception e) {
            return null;
        }
    }

    public View getStickiedHeader() {
        return this.f7074G;
    }

    public boolean getStickyHeaderIsTranscluent() {
        return !this.f7095t;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f7068A.onItemClick(adapterView, view, this.f7080d.m6723c(i).f7131b, j);
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        return this.f7069B.onItemLongClick(adapterView, view, this.f7080d.m6723c(i).f7131b, j);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.f7070C.onItemSelected(adapterView, view, this.f7080d.m6723c(i).f7131b, j);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
        this.f7070C.onNothingSelected(adapterView);
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f7085j = savedState.f7108a;
        requestLayout();
    }

    @Override // android.widget.AbsListView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f7108a = this.f7085j;
        return savedState;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.f7072E != null) {
            this.f7072E.onScroll(absListView, i, i2, i3);
        }
        if (Build.VERSION.SDK_INT >= 8) {
            m6698c(i);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (this.f7072E != null) {
            this.f7072E.onScrollStateChanged(absListView, i);
        }
        this.f7073F = i;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z = this.f7084h;
        if (this.f7084h) {
            View m6700a = m6700a(this.f7082f);
            View childAt = this.f7082f == -2 ? m6700a : getChildAt(this.f7082f);
            if (action == 1 || action == 3) {
                this.f7084h = false;
            }
            if (m6700a != null) {
                m6700a.dispatchTouchEvent(m6687a(motionEvent, this.f7082f));
                m6700a.invalidate();
                m6700a.postDelayed(new Runnable() { // from class: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView.2

                    /* renamed from: a */
                    final /* synthetic */ View f7103a;

                    RunnableC15612(View childAt2) {
                        childAt = childAt2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        StickyGridHeadersGridView.this.invalidate(0, childAt.getTop(), StickyGridHeadersGridView.this.getWidth(), childAt.getTop() + childAt.getHeight());
                    }
                }, ViewConfiguration.getPressedStateDuration());
                invalidate(0, childAt2.getTop(), getWidth(), childAt2.getHeight() + childAt2.getTop());
            }
        }
        switch (action & 255) {
            case 0:
                if (this.f7079c == null) {
                    this.f7079c = new RunnableC1565b();
                }
                postDelayed(this.f7079c, ViewConfiguration.getTapTimeout());
                int y = (int) motionEvent.getY();
                this.f7096u = y;
                this.f7082f = m6685a(y);
                if (this.f7082f != -1 && this.f7073F != 2) {
                    View m6700a2 = m6700a(this.f7082f);
                    if (m6700a2 != null) {
                        if (m6700a2.dispatchTouchEvent(m6687a(motionEvent, this.f7082f))) {
                            this.f7084h = true;
                            m6700a2.setPressed(true);
                        }
                        m6700a2.invalidate();
                        if (this.f7082f != -2) {
                            m6700a2 = getChildAt(this.f7082f);
                        }
                        invalidate(0, m6700a2.getTop(), getWidth(), m6700a2.getHeight() + m6700a2.getTop());
                    }
                    this.f7083g = 0;
                    return true;
                }
                break;
            case 1:
                if (this.f7083g == -2) {
                    this.f7083g = -1;
                    return true;
                }
                if (this.f7083g != -1 && this.f7082f != -1) {
                    View m6700a3 = m6700a(this.f7082f);
                    if (!z && m6700a3 != null) {
                        if (this.f7083g != 0) {
                            m6700a3.setPressed(false);
                        }
                        if (this.f7071D == null) {
                            this.f7071D = new RunnableC1568e();
                        }
                        RunnableC1568e runnableC1568e = this.f7071D;
                        runnableC1568e.f7111a = this.f7082f;
                        runnableC1568e.m6709a();
                        if (this.f7083g == 0 || this.f7083g == 1) {
                            Handler handler = getHandler();
                            if (handler != null) {
                                handler.removeCallbacks(this.f7083g == 0 ? this.f7079c : this.f7078b);
                            }
                            if (!this.f7081e) {
                                this.f7083g = 1;
                                m6700a3.setPressed(true);
                                setPressed(true);
                                if (this.f7075H != null) {
                                    removeCallbacks(this.f7075H);
                                }
                                this.f7075H = new Runnable() { // from class: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView.3

                                    /* renamed from: a */
                                    final /* synthetic */ View f7105a;

                                    /* renamed from: b */
                                    final /* synthetic */ RunnableC1568e f7106b;

                                    RunnableC15623(View m6700a32, RunnableC1568e runnableC1568e2) {
                                        m6700a3 = m6700a32;
                                        runnableC1568e = runnableC1568e2;
                                    }

                                    @Override // java.lang.Runnable
                                    public void run() {
                                        StickyGridHeadersGridView.this.f7082f = -1;
                                        StickyGridHeadersGridView.this.f7075H = null;
                                        StickyGridHeadersGridView.this.f7083g = -1;
                                        m6700a3.setPressed(false);
                                        StickyGridHeadersGridView.this.setPressed(false);
                                        m6700a3.invalidate();
                                        StickyGridHeadersGridView.this.invalidate(0, m6700a3.getTop(), StickyGridHeadersGridView.this.getWidth(), m6700a3.getHeight());
                                        if (!StickyGridHeadersGridView.this.f7081e) {
                                            runnableC1568e.run();
                                        }
                                    }
                                };
                                postDelayed(this.f7075H, ViewConfiguration.getPressedStateDuration());
                            } else {
                                this.f7083g = -1;
                            }
                        } else if (!this.f7081e) {
                            runnableC1568e2.run();
                        }
                    }
                    this.f7083g = -1;
                    return true;
                }
                break;
            case 2:
                if (this.f7082f != -1 && Math.abs(motionEvent.getY() - this.f7096u) > this.f7076I) {
                    this.f7083g = -1;
                    View m6700a4 = m6700a(this.f7082f);
                    if (m6700a4 != null) {
                        m6700a4.setPressed(false);
                        m6700a4.invalidate();
                    }
                    Handler handler2 = getHandler();
                    if (handler2 != null) {
                        handler2.removeCallbacks(this.f7078b);
                    }
                    this.f7082f = -1;
                    break;
                }
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView$2 */
    class RunnableC15612 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ View f7103a;

        RunnableC15612(View childAt2) {
            childAt = childAt2;
        }

        @Override // java.lang.Runnable
        public void run() {
            StickyGridHeadersGridView.this.invalidate(0, childAt.getTop(), StickyGridHeadersGridView.this.getWidth(), childAt.getTop() + childAt.getHeight());
        }
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView$3 */
    class RunnableC15623 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ View f7105a;

        /* renamed from: b */
        final /* synthetic */ RunnableC1568e f7106b;

        RunnableC15623(View m6700a32, RunnableC1568e runnableC1568e2) {
            m6700a3 = m6700a32;
            runnableC1568e = runnableC1568e2;
        }

        @Override // java.lang.Runnable
        public void run() {
            StickyGridHeadersGridView.this.f7082f = -1;
            StickyGridHeadersGridView.this.f7075H = null;
            StickyGridHeadersGridView.this.f7083g = -1;
            m6700a3.setPressed(false);
            StickyGridHeadersGridView.this.setPressed(false);
            m6700a3.invalidate();
            StickyGridHeadersGridView.this.invalidate(0, m6700a3.getTop(), StickyGridHeadersGridView.this.getWidth(), m6700a3.getHeight());
            if (!StickyGridHeadersGridView.this.f7081e) {
                runnableC1568e.run();
            }
        }
    }

    /* renamed from: a */
    public boolean m6702a(View view, long j) {
        if (this.f7100y == null) {
            return false;
        }
        playSoundEffect(0);
        if (view != null) {
            view.sendAccessibilityEvent(1);
        }
        this.f7100y.mo6707a(this, view, j);
        return true;
    }

    /* renamed from: b */
    public boolean m6704b(View view, long j) {
        boolean m6708a = this.f7101z != null ? this.f7101z.m6708a(this, view, j) : false;
        if (m6708a) {
            if (view != null) {
                view.sendAccessibilityEvent(2);
            }
            performHapticFeedback(0);
        }
        return m6708a;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        InterfaceC1571a c1573c;
        if (this.f7080d != null && this.f7091p != null) {
            this.f7080d.unregisterDataSetObserver(this.f7091p);
        }
        if (!this.f7088m) {
            this.f7087l = true;
        }
        if (listAdapter instanceof InterfaceC1571a) {
            c1573c = (InterfaceC1571a) listAdapter;
        } else if (listAdapter instanceof InterfaceC1574d) {
            c1573c = new C1575e((InterfaceC1574d) listAdapter);
        } else {
            c1573c = new C1573c(listAdapter);
        }
        this.f7080d = new C1572b(getContext(), this, c1573c);
        this.f7080d.registerDataSetObserver(this.f7091p);
        m6697c();
        super.setAdapter((ListAdapter) this.f7080d);
    }

    public void setAreHeadersSticky(boolean z) {
        if (z != this.f7085j) {
            this.f7085j = z;
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        super.setClipToPadding(z);
        this.f7087l = z;
        this.f7088m = true;
    }

    @Override // android.widget.GridView
    public void setColumnWidth(int i) {
        super.setColumnWidth(i);
        this.f7089n = i;
    }

    public void setHeadersIgnorePadding(boolean z) {
        this.f7093r = z;
    }

    @Override // android.widget.GridView
    public void setHorizontalSpacing(int i) {
        super.setHorizontalSpacing(i);
        this.f7094s = i;
    }

    @Override // android.widget.GridView
    public void setNumColumns(int i) {
        super.setNumColumns(i);
        this.f7098w = true;
        this.f7097v = i;
        if (i != -1 && this.f7080d != null) {
            this.f7080d.m6721a(i);
        }
    }

    public void setOnHeaderClickListener(InterfaceC1566c interfaceC1566c) {
        this.f7100y = interfaceC1566c;
    }

    public void setOnHeaderLongClickListener(InterfaceC1567d interfaceC1567d) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.f7101z = interfaceC1567d;
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f7068A = onItemClickListener;
        super.setOnItemClickListener(this);
    }

    @Override // android.widget.AdapterView
    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.f7069B = onItemLongClickListener;
        super.setOnItemLongClickListener(this);
    }

    @Override // android.widget.AdapterView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.f7070C = onItemSelectedListener;
        super.setOnItemSelectedListener(this);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f7072E = onScrollListener;
    }

    public void setStickyHeaderIsTranscluent(boolean z) {
        this.f7095t = !z;
    }

    @Override // android.widget.GridView
    public void setVerticalSpacing(int i) {
        super.setVerticalSpacing(i);
        this.f7077J = i;
    }

    /* renamed from: a */
    private int m6685a(float f) {
        if (this.f7074G != null && f <= this.f7092q) {
            return -2;
        }
        int i = 0;
        int firstVisiblePosition = getFirstVisiblePosition();
        while (firstVisiblePosition <= getLastVisiblePosition()) {
            if (getItemIdAtPosition(firstVisiblePosition) == -1) {
                View childAt = getChildAt(i);
                int bottom = childAt.getBottom();
                int top = childAt.getTop();
                if (f <= bottom && f >= top) {
                    return i;
                }
            }
            firstVisiblePosition += this.f7099x;
            i += this.f7099x;
        }
        return -1;
    }

    private int getHeaderHeight() {
        if (this.f7074G != null) {
            return this.f7074G.getMeasuredHeight();
        }
        return 0;
    }

    /* renamed from: b */
    public long m6693b(int i) {
        return i == -2 ? this.f7090o : this.f7080d.m6722b(getFirstVisiblePosition() + i);
    }

    /* renamed from: b */
    private void m6694b() {
        int makeMeasureSpec;
        int makeMeasureSpec2;
        if (this.f7074G != null) {
            if (this.f7093r) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), C1167C.ENCODING_PCM_32BIT);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), C1167C.ENCODING_PCM_32BIT);
            }
            ViewGroup.LayoutParams layoutParams = this.f7074G.getLayoutParams();
            if (layoutParams != null && layoutParams.height > 0) {
                makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(layoutParams.height, C1167C.ENCODING_PCM_32BIT);
            } else {
                makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            this.f7074G.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.f7074G.measure(makeMeasureSpec, makeMeasureSpec2);
            if (this.f7093r) {
                this.f7074G.layout(getLeft(), 0, getRight(), this.f7074G.getMeasuredHeight());
            } else {
                this.f7074G.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), this.f7074G.getMeasuredHeight());
            }
        }
    }

    /* renamed from: c */
    public void m6697c() {
        this.f7092q = 0;
        m6699c((View) null);
        this.f7090o = Long.MIN_VALUE;
    }

    /* renamed from: c */
    private void m6698c(int i) {
        long m6722b;
        int top;
        if (this.f7080d != null && this.f7080d.getCount() != 0 && this.f7085j && getChildAt(0) != null) {
            int i2 = i - this.f7099x;
            if (i2 < 0) {
                i2 = i;
            }
            int i3 = this.f7099x + i;
            if (i3 >= this.f7080d.getCount()) {
                i3 = i;
            }
            if (this.f7077J == 0) {
                m6722b = this.f7080d.m6722b(i);
                i3 = i;
            } else if (this.f7077J < 0) {
                this.f7080d.m6722b(i);
                if (getChildAt(this.f7099x).getTop() <= 0) {
                    m6722b = this.f7080d.m6722b(i3);
                } else {
                    m6722b = this.f7080d.m6722b(i);
                    i3 = i;
                }
            } else {
                int top2 = getChildAt(0).getTop();
                if (top2 > 0 && top2 < this.f7077J) {
                    m6722b = this.f7080d.m6722b(i2);
                    i3 = i2;
                } else {
                    m6722b = this.f7080d.m6722b(i);
                    i3 = i;
                }
            }
            if (this.f7090o != m6722b) {
                m6699c(this.f7080d.m6719a(i3, this.f7074G, this));
                m6694b();
                this.f7090o = m6722b;
            }
            int childCount = getChildCount();
            if (childCount != 0) {
                View view = null;
                int i4 = 99999;
                int i5 = 0;
                while (i5 < childCount) {
                    View childAt = super.getChildAt(i5);
                    if (this.f7087l) {
                        top = childAt.getTop() - getPaddingTop();
                    } else {
                        top = childAt.getTop();
                    }
                    if (top >= 0 && this.f7080d.getItemId(getPositionForView(childAt)) == -1 && top < i4) {
                        i4 = top;
                        view = childAt;
                    }
                    i5 = this.f7099x + i5;
                }
                int headerHeight = getHeaderHeight();
                if (view != null) {
                    if (i == 0 && super.getChildAt(0).getTop() > 0 && !this.f7087l) {
                        this.f7092q = 0;
                        return;
                    }
                    if (this.f7087l) {
                        this.f7092q = Math.min(view.getTop(), getPaddingTop() + headerHeight);
                        this.f7092q = this.f7092q < getPaddingTop() ? headerHeight + getPaddingTop() : this.f7092q;
                        return;
                    } else {
                        this.f7092q = Math.min(view.getTop(), headerHeight);
                        if (this.f7092q >= 0) {
                            headerHeight = this.f7092q;
                        }
                        this.f7092q = headerHeight;
                        return;
                    }
                }
                this.f7092q = headerHeight;
                if (this.f7087l) {
                    this.f7092q += getPaddingTop();
                }
            }
        }
    }

    /* renamed from: c */
    private void m6699c(View view) {
        m6703b(this.f7074G);
        m6701a(view);
        this.f7074G = view;
    }

    /* renamed from: a */
    private MotionEvent m6687a(MotionEvent motionEvent, int i) {
        if (i != -2) {
            long downTime = motionEvent.getDownTime();
            long eventTime = motionEvent.getEventTime();
            int action = motionEvent.getAction();
            int pointerCount = motionEvent.getPointerCount();
            int[] m6695b = m6695b(motionEvent);
            MotionEvent.PointerCoords[] m6691a = m6691a(motionEvent);
            int metaState = motionEvent.getMetaState();
            float xPrecision = motionEvent.getXPrecision();
            float yPrecision = motionEvent.getYPrecision();
            int deviceId = motionEvent.getDeviceId();
            int edgeFlags = motionEvent.getEdgeFlags();
            int source = motionEvent.getSource();
            int flags = motionEvent.getFlags();
            View childAt = getChildAt(i);
            for (int i2 = 0; i2 < pointerCount; i2++) {
                m6691a[i2].y -= childAt.getTop();
            }
            return MotionEvent.obtain(downTime, eventTime, action, pointerCount, m6695b, m6691a, metaState, xPrecision, yPrecision, deviceId, edgeFlags, source, flags);
        }
        return motionEvent;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int width;
        int makeMeasureSpec;
        int makeMeasureSpec2;
        if (Build.VERSION.SDK_INT < 8) {
            m6698c(getFirstVisiblePosition());
        }
        boolean z = this.f7074G != null && this.f7085j && this.f7074G.getVisibility() == 0;
        int headerHeight = getHeaderHeight();
        int i = this.f7092q - headerHeight;
        if (z && this.f7095t) {
            if (this.f7093r) {
                this.f7086k.left = 0;
                this.f7086k.right = getWidth();
            } else {
                this.f7086k.left = getPaddingLeft();
                this.f7086k.right = getWidth() - getPaddingRight();
            }
            this.f7086k.top = this.f7092q;
            this.f7086k.bottom = getHeight();
            canvas.save();
            canvas.clipRect(this.f7086k);
        }
        super.dispatchDraw(canvas);
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int firstVisiblePosition = getFirstVisiblePosition();
        while (firstVisiblePosition <= getLastVisiblePosition()) {
            if (getItemIdAtPosition(firstVisiblePosition) == -1) {
                arrayList.add(Integer.valueOf(i2));
            }
            firstVisiblePosition += this.f7099x;
            i2 += this.f7099x;
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= arrayList.size()) {
                break;
            }
            View childAt = getChildAt(((Integer) arrayList.get(i4)).intValue());
            try {
                View view = (View) childAt.getTag();
                boolean z2 = ((long) ((C1572b.b) childAt).getHeaderId()) == this.f7090o && childAt.getTop() < 0 && this.f7085j;
                if (view.getVisibility() == 0 && !z2) {
                    if (this.f7093r) {
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getWidth(), C1167C.ENCODING_PCM_32BIT);
                    } else {
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), C1167C.ENCODING_PCM_32BIT);
                    }
                    int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(0, 0);
                    view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    view.measure(makeMeasureSpec2, makeMeasureSpec3);
                    if (this.f7093r) {
                        view.layout(getLeft(), 0, getRight(), childAt.getHeight());
                    } else {
                        view.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), childAt.getHeight());
                    }
                    if (this.f7093r) {
                        this.f7086k.left = 0;
                        this.f7086k.right = getWidth();
                    } else {
                        this.f7086k.left = getPaddingLeft();
                        this.f7086k.right = getWidth() - getPaddingRight();
                    }
                    this.f7086k.bottom = childAt.getBottom();
                    this.f7086k.top = childAt.getTop();
                    canvas.save();
                    canvas.clipRect(this.f7086k);
                    if (this.f7093r) {
                        canvas.translate(0.0f, childAt.getTop());
                    } else {
                        canvas.translate(getPaddingLeft(), childAt.getTop());
                    }
                    view.draw(canvas);
                    canvas.restore();
                }
                i3 = i4 + 1;
            } catch (Exception e) {
                return;
            }
        }
        if (z && this.f7095t) {
            canvas.restore();
        } else if (!z) {
            return;
        }
        if (this.f7093r) {
            width = getWidth();
        } else {
            width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        }
        if (this.f7074G.getWidth() != width) {
            if (this.f7093r) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), C1167C.ENCODING_PCM_32BIT);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((getWidth() - getPaddingLeft()) - getPaddingRight(), C1167C.ENCODING_PCM_32BIT);
            }
            int makeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(0, 0);
            this.f7074G.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            this.f7074G.measure(makeMeasureSpec, makeMeasureSpec4);
            if (this.f7093r) {
                this.f7074G.layout(getLeft(), 0, getRight(), this.f7074G.getHeight());
            } else {
                this.f7074G.layout(getLeft() + getPaddingLeft(), 0, getRight() - getPaddingRight(), this.f7074G.getHeight());
            }
        }
        if (this.f7093r) {
            this.f7086k.left = 0;
            this.f7086k.right = getWidth();
        } else {
            this.f7086k.left = getPaddingLeft();
            this.f7086k.right = getWidth() - getPaddingRight();
        }
        this.f7086k.bottom = i + headerHeight;
        if (this.f7087l) {
            this.f7086k.top = getPaddingTop();
        } else {
            this.f7086k.top = 0;
        }
        canvas.save();
        canvas.clipRect(this.f7086k);
        if (this.f7093r) {
            canvas.translate(0.0f, i);
        } else {
            canvas.translate(getPaddingLeft(), i);
        }
        if (this.f7092q != headerHeight) {
            canvas.saveLayerAlpha(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), (this.f7092q * 255) / headerHeight, 31);
        }
        this.f7074G.draw(canvas);
        if (this.f7092q != headerHeight) {
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = 1;
        if (this.f7097v == -1) {
            if (this.f7089n > 0) {
                int max = Math.max((View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight(), 0);
                int i4 = max / this.f7089n;
                if (i4 > 0) {
                    while (i4 != 1 && (this.f7089n * i4) + ((i4 - 1) * this.f7094s) > max) {
                        i4--;
                    }
                    i3 = i4;
                }
            } else {
                i3 = 2;
            }
            this.f7099x = i3;
        } else {
            this.f7099x = this.f7097v;
        }
        if (this.f7080d != null) {
            this.f7080d.m6721a(this.f7099x);
        }
        m6694b();
        super.onMeasure(i, i2);
    }

    /* renamed from: a */
    void m6701a(View view) {
        if (view != null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                declaredField.setAccessible(true);
                Method declaredMethod = View.class.getDeclaredMethod("dispatchAttachedToWindow", Class.forName("android.view.View$AttachInfo"), Integer.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(view, declaredField.get(this), 8);
            } catch (ClassNotFoundException e) {
                throw new C1569f(e);
            } catch (IllegalAccessException e2) {
                throw new C1569f(e2);
            } catch (IllegalArgumentException e3) {
                throw new C1569f(e3);
            } catch (NoSuchFieldException e4) {
                throw new C1569f(e4);
            } catch (NoSuchMethodException e5) {
                throw new C1569f(e5);
            } catch (InvocationTargetException e6) {
                throw new C1569f(e6);
            }
        }
    }

    /* renamed from: b */
    void m6703b(View view) {
        if (view != null) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("dispatchDetachedFromWindow", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(view, new Object[0]);
            } catch (IllegalAccessException e) {
                throw new C1569f(e);
            } catch (IllegalArgumentException e2) {
                throw new C1569f(e2);
            } catch (NoSuchMethodException e3) {
                throw new C1569f(e3);
            } catch (InvocationTargetException e4) {
                throw new C1569f(e4);
            }
        }
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView$a */
    private class RunnableC1564a extends C1570g implements Runnable {
        private RunnableC1564a() {
            super();
        }

        /* synthetic */ RunnableC1564a(StickyGridHeadersGridView stickyGridHeadersGridView, C15601 c15601) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            View m6700a = StickyGridHeadersGridView.this.m6700a(StickyGridHeadersGridView.this.f7082f);
            if (m6700a != null) {
                if ((!m6710b() || StickyGridHeadersGridView.this.f7081e) ? false : StickyGridHeadersGridView.this.m6704b(m6700a, StickyGridHeadersGridView.this.m6693b(StickyGridHeadersGridView.this.f7082f))) {
                    StickyGridHeadersGridView.this.f7083g = -2;
                    StickyGridHeadersGridView.this.setPressed(false);
                    m6700a.setPressed(false);
                    return;
                }
                StickyGridHeadersGridView.this.f7083g = 2;
            }
        }
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView$e */
    private class RunnableC1568e extends C1570g implements Runnable {

        /* renamed from: a */
        int f7111a;

        private RunnableC1568e() {
            super();
        }

        /* synthetic */ RunnableC1568e(StickyGridHeadersGridView stickyGridHeadersGridView, C15601 c15601) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            View m6700a;
            if (!StickyGridHeadersGridView.this.f7081e && StickyGridHeadersGridView.this.f7080d != null && StickyGridHeadersGridView.this.f7080d.getCount() > 0 && this.f7111a != -1 && this.f7111a < StickyGridHeadersGridView.this.f7080d.getCount() && m6710b() && (m6700a = StickyGridHeadersGridView.this.m6700a(this.f7111a)) != null) {
                StickyGridHeadersGridView.this.m6702a(m6700a, StickyGridHeadersGridView.this.m6693b(this.f7111a));
            }
        }
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView$g */
    private class C1570g {

        /* renamed from: a */
        private int f7114a;

        private C1570g() {
        }

        /* synthetic */ C1570g(StickyGridHeadersGridView stickyGridHeadersGridView, C15601 c15601) {
            this();
        }

        /* renamed from: a */
        public void m6709a() {
            this.f7114a = StickyGridHeadersGridView.this.getWindowAttachCount();
        }

        /* renamed from: b */
        public boolean m6710b() {
            return StickyGridHeadersGridView.this.hasWindowFocus() && StickyGridHeadersGridView.this.getWindowAttachCount() == this.f7114a;
        }
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView$b */
    final class RunnableC1565b implements Runnable {
        RunnableC1565b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (StickyGridHeadersGridView.this.f7083g == 0) {
                StickyGridHeadersGridView.this.f7083g = 1;
                View m6700a = StickyGridHeadersGridView.this.m6700a(StickyGridHeadersGridView.this.f7082f);
                if (m6700a != null && !StickyGridHeadersGridView.this.f7084h) {
                    if (!StickyGridHeadersGridView.this.f7081e) {
                        m6700a.setPressed(true);
                        StickyGridHeadersGridView.this.setPressed(true);
                        StickyGridHeadersGridView.this.refreshDrawableState();
                        int longPressTimeout = ViewConfiguration.getLongPressTimeout();
                        if (StickyGridHeadersGridView.this.isLongClickable()) {
                            if (StickyGridHeadersGridView.this.f7078b == null) {
                                StickyGridHeadersGridView.this.f7078b = new RunnableC1564a();
                            }
                            StickyGridHeadersGridView.this.f7078b.m6709a();
                            StickyGridHeadersGridView.this.postDelayed(StickyGridHeadersGridView.this.f7078b, longPressTimeout);
                            return;
                        }
                        StickyGridHeadersGridView.this.f7083g = 2;
                        return;
                    }
                    StickyGridHeadersGridView.this.f7083g = 2;
                }
            }
        }
    }

    /* renamed from: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView$f */
    class C1569f extends RuntimeException {
        private static final long serialVersionUID = -6512098808936536538L;

        public C1569f(Exception exc) {
            super(StickyGridHeadersGridView.f7067i, exc);
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView.SavedState.1
            C15631() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        boolean f7108a;

        /* renamed from: com.tonicartos.widget.stickygridheaders.StickyGridHeadersGridView$SavedState$1 */
        static class C15631 implements Parcelable.Creator<SavedState> {
            C15631() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, C15601 c15601) {
            this(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f7108a = parcel.readByte() != 0;
        }

        public String toString() {
            return "StickyGridHeadersGridView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " areHeadersSticky=" + this.f7108a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte((byte) (this.f7108a ? 1 : 0));
        }
    }
}
