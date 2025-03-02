package GeneralFunction.p010i.p011a;

import GeneralFunction.C0052d;
import GeneralFunction.C0079k;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.huawei.cvIntl60.R;

/* renamed from: GeneralFunction.i.a.a */
/* loaded from: classes.dex */
public class C0075a {

    /* renamed from: A */
    private int f585A;

    /* renamed from: B */
    private boolean f586B;

    /* renamed from: C */
    private int f587C;

    /* renamed from: D */
    private int f588D;

    /* renamed from: a */
    public boolean f589a;

    /* renamed from: b */
    private int f590b;

    /* renamed from: c */
    private int f591c;

    /* renamed from: d */
    private LinearLayout f592d;

    /* renamed from: e */
    private LinearLayout f593e;

    /* renamed from: f */
    private TextView f594f;

    /* renamed from: g */
    private TextView f595g;

    /* renamed from: h */
    private LinearLayout f596h;

    /* renamed from: i */
    private LinearLayout f597i;

    /* renamed from: j */
    private float f598j;

    /* renamed from: k */
    private float f599k;

    /* renamed from: l */
    private Button f600l;

    /* renamed from: m */
    private ViewGroup f601m;

    /* renamed from: n */
    private a f602n;

    /* renamed from: o */
    private b f603o;

    /* renamed from: p */
    private int f604p;

    /* renamed from: q */
    private int f605q;

    /* renamed from: r */
    private int f606r;

    /* renamed from: s */
    private float f607s;

    /* renamed from: t */
    private float f608t;

    /* renamed from: u */
    private int f609u;

    /* renamed from: v */
    private int f610v;

    /* renamed from: w */
    private float f611w;

    /* renamed from: x */
    private float f612x;

    /* renamed from: y */
    private float f613y;

    /* renamed from: z */
    private int f614z;

    /* renamed from: GeneralFunction.i.a.a$a */
    public interface a {
        /* renamed from: a */
        void mo737a(int i, int i2);
    }

    /* renamed from: GeneralFunction.i.a.a$b */
    public interface b {
        /* renamed from: a */
        boolean mo738a(int i, int i2, MotionEvent motionEvent);
    }

    /* renamed from: a */
    public void m707a(String str, int i) {
        C0052d.m465a("HorizontalScrollRangeSelectBar", str, i);
    }

    public C0075a(Context context, ViewGroup viewGroup, boolean z, int i, int i2, int i3, int i4, boolean z2) {
        this(context, viewGroup, z, i, i2, i3, i4, z2, i2);
    }

    public C0075a(Context context, ViewGroup viewGroup, boolean z, int i, int i2, int i3, int i4, boolean z2, int i5) {
        this.f590b = R.drawable.gallery_gif_dot_1;
        this.f591c = R.drawable.gallery_gif_dot_2;
        this.f592d = null;
        this.f593e = null;
        this.f594f = null;
        this.f595g = null;
        this.f596h = null;
        this.f597i = null;
        this.f598j = 0.0f;
        this.f599k = 0.0f;
        this.f600l = null;
        this.f601m = null;
        this.f604p = 2;
        this.f605q = 1;
        this.f606r = 0;
        this.f607s = 0.0f;
        this.f608t = 0.0f;
        this.f609u = 0;
        this.f610v = 0;
        this.f611w = 0.4f;
        this.f612x = (1.0f - this.f611w) / 2.0f;
        this.f613y = this.f611w * 0.25f;
        this.f614z = 0;
        this.f585A = 0;
        this.f586B = true;
        this.f587C = 1;
        this.f589a = true;
        this.f588D = 0;
        this.f601m = viewGroup;
        this.f604p = i;
        this.f605q = i2;
        this.f587C = i5;
        this.f609u = this.f601m.getWidth();
        this.f610v = this.f601m.getHeight();
        View inflate = LayoutInflater.from(context).inflate(R.layout.style_horizontal_scroll_range_select_bar, (ViewGroup) null);
        viewGroup.addView(inflate);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(context.getResources(), this.f590b, options);
        int i6 = options.outHeight;
        int i7 = options.outWidth;
        this.f592d = (LinearLayout) inflate.findViewById(R.id.horizontal_scroll_style_start_pointer);
        float f = (this.f610v * this.f611w) / i6;
        ViewGroup.LayoutParams layoutParams = this.f592d.getLayoutParams();
        layoutParams.width = (int) (f * i7);
        layoutParams.height = (int) (this.f610v * this.f611w);
        this.f592d.setLayoutParams(layoutParams);
        this.f593e = (LinearLayout) inflate.findViewById(R.id.horizontal_scroll_style_end_pointer);
        float f2 = (this.f610v * this.f611w) / i6;
        ViewGroup.LayoutParams layoutParams2 = this.f593e.getLayoutParams();
        layoutParams2.width = (int) (f2 * i7);
        layoutParams2.height = (int) (this.f610v * this.f611w);
        this.f593e.setLayoutParams(layoutParams2);
        this.f589a = z2;
        if (z2) {
            this.f592d.setBackgroundResource(this.f590b);
            this.f593e.setBackgroundResource(this.f591c);
        } else if (!z2) {
            this.f592d.setBackgroundResource(this.f591c);
            this.f593e.setBackgroundResource(this.f590b);
        }
        this.f614z = layoutParams2.width;
        this.f614z = ((this.f614z + 1) / 2) * 2;
        this.f594f = (TextView) inflate.findViewById(R.id.horizontal_scroll_style_start_label);
        ViewGroup.LayoutParams layoutParams3 = this.f594f.getLayoutParams();
        layoutParams3.height = (int) (this.f610v * this.f612x);
        layoutParams3.width = this.f614z * 4;
        this.f594f.setTextSize(C0079k.m784a(context, this.f610v / 5));
        this.f595g = (TextView) inflate.findViewById(R.id.horizontal_scroll_style_end_label);
        ViewGroup.LayoutParams layoutParams4 = this.f595g.getLayoutParams();
        layoutParams4.height = (int) (this.f610v * this.f612x);
        layoutParams4.width = this.f614z * 4;
        this.f595g.setTextSize(C0079k.m784a(context, this.f610v / 5));
        if (this.f586B) {
            this.f594f.setVisibility(4);
            this.f595g.setVisibility(4);
            this.f585A = this.f614z;
        } else {
            this.f585A = layoutParams4.width;
        }
        this.f606r = this.f609u - this.f585A;
        this.f607s = (this.f605q * this.f606r) / (this.f604p - 1);
        this.f608t = (this.f587C * this.f606r) / (this.f604p - 1);
        float m712c = m712c(i3 + 1);
        float m712c2 = m712c(i4 + 1);
        this.f598j = m711c(m712c);
        this.f599k = m711c(m712c2);
        float f3 = (1.0f * this.f606r) / (this.f604p - 1);
        while (m716d(this.f598j) != i3) {
            if (m716d(this.f598j) < i3) {
                this.f598j += f3 / 100.0f;
            } else {
                this.f598j -= f3 / 100.0f;
            }
        }
        while (m716d(this.f599k) != i4) {
            if (m716d(this.f599k) < i4) {
                this.f599k += f3 / 100.0f;
            } else {
                this.f599k -= f3 / 100.0f;
            }
        }
        m704a(this.f592d, (int) this.f598j);
        m704a(this.f593e, (int) this.f599k);
        m706a(this.f594f, m720e(m712c));
        this.f594f.setText("" + m716d(this.f598j));
        m706a(this.f595g, m720e(m712c2));
        this.f595g.setText("" + m716d(this.f599k));
        this.f597i = (LinearLayout) inflate.findViewById(R.id.horizontal_scroll_style_select_range_bar);
        this.f597i.getLayoutParams().height = (int) (this.f610v * this.f613y);
        m705a(this.f597i, (int) this.f598j, (int) this.f599k);
        this.f596h = (LinearLayout) inflate.findViewById(R.id.horizontal_scroll_style_select_range_bg);
        this.f596h.getLayoutParams().height = (int) (this.f610v * this.f613y);
        m705a(this.f596h, (int) m711c(0.0f), (int) m711c(this.f609u));
        this.f600l = (Button) inflate.findViewById(R.id.horizontal_scroll_style_touch_area);
        if (z) {
            this.f600l.setOnTouchListener(new View.OnTouchListener() { // from class: GeneralFunction.i.a.a.1
                AnonymousClass1() {
                }

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    if (C0075a.this.f588D != 1) {
                        if (C0075a.this.f588D == 2) {
                            C0075a.this.f589a = false;
                            if (x - C0075a.this.m694a(C0075a.this.f598j) < C0075a.this.f608t) {
                                x = C0075a.this.m694a(C0075a.this.f598j) + C0075a.this.f608t;
                            }
                            while (C0075a.this.m716d(C0075a.this.m711c(x)) - C0075a.this.m716d(C0075a.this.f598j) < C0075a.this.f587C) {
                                C0075a.this.m707a("make sure label gap:" + x + " " + C0075a.this.f598j, 2);
                                x = C0075a.this.m708b(x + (C0075a.this.f608t / 100.0f));
                            }
                        }
                    } else {
                        C0075a.this.f589a = true;
                        if (C0075a.this.m694a(C0075a.this.f599k) - x < C0075a.this.f608t) {
                            x = C0075a.this.m694a(C0075a.this.f599k) - C0075a.this.f608t;
                        }
                        while (C0075a.this.m716d(C0075a.this.f599k) - C0075a.this.m716d(C0075a.this.m711c(x)) < C0075a.this.f587C) {
                            C0075a.this.m707a("make sure label gap:" + x + " " + C0075a.this.f599k, 2);
                            x = C0075a.this.m708b(x - (C0075a.this.f608t / 100.0f));
                        }
                    }
                    if (C0075a.this.f603o == null || !C0075a.this.f603o.mo738a(C0075a.this.f588D, C0075a.this.m716d(C0075a.this.m711c(x)), motionEvent)) {
                        if (motionEvent.getAction() == 0) {
                            C0075a.this.f588D = C0075a.this.m696a(x, y);
                            if (C0075a.this.f588D == 1) {
                                C0075a.this.f592d.setBackgroundResource(C0075a.this.f590b);
                                C0075a.this.f593e.setBackgroundResource(C0075a.this.f591c);
                            } else if (C0075a.this.f588D == 2) {
                                C0075a.this.f592d.setBackgroundResource(C0075a.this.f591c);
                                C0075a.this.f593e.setBackgroundResource(C0075a.this.f590b);
                            }
                        } else if (motionEvent.getAction() == 2) {
                            if (C0075a.this.f588D != 1) {
                                if (C0075a.this.f588D == 2) {
                                    C0075a.this.f599k = C0075a.this.m711c(x);
                                    C0075a.this.m704a(C0075a.this.f593e, (int) C0075a.this.f599k);
                                    C0075a.this.m705a(C0075a.this.f597i, (int) C0075a.this.f598j, (int) C0075a.this.f599k);
                                    C0075a.this.m706a(C0075a.this.f595g, C0075a.this.m720e(x));
                                    C0075a.this.f595g.setText("" + C0075a.this.m716d(C0075a.this.f599k));
                                }
                            } else {
                                C0075a.this.f598j = C0075a.this.m711c(x);
                                C0075a.this.m704a(C0075a.this.f592d, (int) C0075a.this.f598j);
                                C0075a.this.m705a(C0075a.this.f597i, (int) C0075a.this.f598j, (int) C0075a.this.f599k);
                                C0075a.this.m706a(C0075a.this.f594f, C0075a.this.m720e(x));
                                C0075a.this.f594f.setText("" + C0075a.this.m716d(C0075a.this.f598j));
                            }
                        } else if (motionEvent.getAction() == 1) {
                            if (C0075a.this.f588D == 1) {
                                if (C0075a.this.f602n != null) {
                                    C0075a.this.f602n.mo737a(1, C0075a.this.m716d(C0075a.this.f598j));
                                }
                            } else if (C0075a.this.f588D == 2) {
                                if (C0075a.this.f602n != null) {
                                    C0075a.this.f602n.mo737a(2, C0075a.this.m716d(C0075a.this.f599k));
                                }
                            } else if (C0075a.this.f602n != null) {
                                C0075a.this.f602n.mo737a(0, 0);
                            }
                            C0075a.this.f588D = 0;
                        }
                    }
                    return false;
                }
            });
        }
    }

    /* renamed from: GeneralFunction.i.a.a$1 */
    class AnonymousClass1 implements View.OnTouchListener {
        AnonymousClass1() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (C0075a.this.f588D != 1) {
                if (C0075a.this.f588D == 2) {
                    C0075a.this.f589a = false;
                    if (x - C0075a.this.m694a(C0075a.this.f598j) < C0075a.this.f608t) {
                        x = C0075a.this.m694a(C0075a.this.f598j) + C0075a.this.f608t;
                    }
                    while (C0075a.this.m716d(C0075a.this.m711c(x)) - C0075a.this.m716d(C0075a.this.f598j) < C0075a.this.f587C) {
                        C0075a.this.m707a("make sure label gap:" + x + " " + C0075a.this.f598j, 2);
                        x = C0075a.this.m708b(x + (C0075a.this.f608t / 100.0f));
                    }
                }
            } else {
                C0075a.this.f589a = true;
                if (C0075a.this.m694a(C0075a.this.f599k) - x < C0075a.this.f608t) {
                    x = C0075a.this.m694a(C0075a.this.f599k) - C0075a.this.f608t;
                }
                while (C0075a.this.m716d(C0075a.this.f599k) - C0075a.this.m716d(C0075a.this.m711c(x)) < C0075a.this.f587C) {
                    C0075a.this.m707a("make sure label gap:" + x + " " + C0075a.this.f599k, 2);
                    x = C0075a.this.m708b(x - (C0075a.this.f608t / 100.0f));
                }
            }
            if (C0075a.this.f603o == null || !C0075a.this.f603o.mo738a(C0075a.this.f588D, C0075a.this.m716d(C0075a.this.m711c(x)), motionEvent)) {
                if (motionEvent.getAction() == 0) {
                    C0075a.this.f588D = C0075a.this.m696a(x, y);
                    if (C0075a.this.f588D == 1) {
                        C0075a.this.f592d.setBackgroundResource(C0075a.this.f590b);
                        C0075a.this.f593e.setBackgroundResource(C0075a.this.f591c);
                    } else if (C0075a.this.f588D == 2) {
                        C0075a.this.f592d.setBackgroundResource(C0075a.this.f591c);
                        C0075a.this.f593e.setBackgroundResource(C0075a.this.f590b);
                    }
                } else if (motionEvent.getAction() == 2) {
                    if (C0075a.this.f588D != 1) {
                        if (C0075a.this.f588D == 2) {
                            C0075a.this.f599k = C0075a.this.m711c(x);
                            C0075a.this.m704a(C0075a.this.f593e, (int) C0075a.this.f599k);
                            C0075a.this.m705a(C0075a.this.f597i, (int) C0075a.this.f598j, (int) C0075a.this.f599k);
                            C0075a.this.m706a(C0075a.this.f595g, C0075a.this.m720e(x));
                            C0075a.this.f595g.setText("" + C0075a.this.m716d(C0075a.this.f599k));
                        }
                    } else {
                        C0075a.this.f598j = C0075a.this.m711c(x);
                        C0075a.this.m704a(C0075a.this.f592d, (int) C0075a.this.f598j);
                        C0075a.this.m705a(C0075a.this.f597i, (int) C0075a.this.f598j, (int) C0075a.this.f599k);
                        C0075a.this.m706a(C0075a.this.f594f, C0075a.this.m720e(x));
                        C0075a.this.f594f.setText("" + C0075a.this.m716d(C0075a.this.f598j));
                    }
                } else if (motionEvent.getAction() == 1) {
                    if (C0075a.this.f588D == 1) {
                        if (C0075a.this.f602n != null) {
                            C0075a.this.f602n.mo737a(1, C0075a.this.m716d(C0075a.this.f598j));
                        }
                    } else if (C0075a.this.f588D == 2) {
                        if (C0075a.this.f602n != null) {
                            C0075a.this.f602n.mo737a(2, C0075a.this.m716d(C0075a.this.f599k));
                        }
                    } else if (C0075a.this.f602n != null) {
                        C0075a.this.f602n.mo737a(0, 0);
                    }
                    C0075a.this.f588D = 0;
                }
            }
            return false;
        }
    }

    /* renamed from: a */
    public void m734a(a aVar) {
        this.f602n = aVar;
    }

    /* renamed from: a */
    public void m735a(b bVar) {
        this.f603o = bVar;
    }

    /* renamed from: a */
    public int m696a(float f, float f2) {
        int i = (this.f614z / 2) * 2;
        int i2 = this.f610v / 2;
        float m711c = m711c(f);
        return Math.abs(m711c - this.f598j) < ((float) i) ? (Math.abs(m711c - this.f599k) >= ((float) i) || f2 <= ((float) i2)) ? 1 : 2 : Math.abs(m711c - this.f599k) >= ((float) i) ? 0 : 2;
    }

    /* renamed from: a */
    public float m694a(float f) {
        return (this.f585A / 2) + (f - ((this.f585A - this.f614z) / 2));
    }

    /* renamed from: b */
    public float m708b(float f) {
        if (f < 0.0f) {
            return 0.0f;
        }
        return f;
    }

    /* renamed from: c */
    public float m711c(float f) {
        int i = this.f585A / 2;
        int i2 = (this.f585A - this.f614z) / 2;
        if (f < i) {
            return i2;
        }
        if (f > this.f609u - i) {
            return (this.f609u - r0) + i2;
        }
        return (((f - i) / this.f607s) * this.f607s) + i2;
    }

    /* renamed from: a */
    public void m704a(LinearLayout linearLayout, int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(linearLayout.getLayoutParams());
        marginLayoutParams.setMargins(i, (int) (this.f610v * this.f612x), 0, 0);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(marginLayoutParams));
    }

    /* renamed from: d */
    public int m716d(float f) {
        return (int) (((this.f604p - 1) * f) / this.f606r);
    }

    /* renamed from: c */
    private float m712c(int i) {
        return m694a(((this.f585A - this.f614z) / 2) + ((this.f606r * (i - 1)) / (this.f604p - 1)));
    }

    /* renamed from: e */
    public int m720e(float f) {
        float f2;
        int i = this.f585A / 2;
        if (f < i) {
            f2 = 0.0f;
        } else if (f > this.f609u - i) {
            f2 = this.f609u - this.f585A;
        } else {
            f2 = f - i;
        }
        return (int) f2;
    }

    /* renamed from: a */
    public void m706a(TextView textView, int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(textView.getLayoutParams());
        if (textView.equals(this.f595g)) {
            marginLayoutParams.setMargins(i, (int) (this.f610v * (this.f611w + this.f612x)), 0, 0);
        } else {
            marginLayoutParams.setMargins(i, 0, 0, 0);
        }
        textView.setLayoutParams(new RelativeLayout.LayoutParams(marginLayoutParams));
    }

    /* renamed from: a */
    public void m705a(LinearLayout linearLayout, int i, int i2) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(linearLayout.getLayoutParams());
        marginLayoutParams.setMargins((this.f614z / 2) + i, (int) (this.f610v * (((1.0f - this.f611w) - this.f612x) + ((this.f611w - this.f613y) / 2.0f))), 0, 0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(marginLayoutParams);
        layoutParams.width = i2 - i;
        linearLayout.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public void m733a(int i) {
        float m712c = m712c(i + 1);
        this.f598j = m711c(m712c);
        m704a(this.f592d, (int) this.f598j);
        m706a(this.f594f, m720e(m712c));
        this.f594f.setText("" + m716d(m712c));
        m705a(this.f597i, (int) this.f598j, (int) this.f599k);
    }

    /* renamed from: b */
    public void m736b(int i) {
        float m712c = m712c(i + 1);
        this.f599k = m711c(m712c);
        m704a(this.f593e, (int) this.f599k);
        m706a(this.f595g, m720e(m712c));
        this.f595g.setText("" + m716d(m712c));
        m705a(this.f597i, (int) this.f598j, (int) this.f599k);
    }

    /* renamed from: a */
    public void m732a() {
        this.f592d.setBackgroundDrawable(null);
        this.f592d = null;
        this.f600l.setOnTouchListener(null);
        this.f600l = null;
        this.f592d = null;
        this.f601m = null;
    }
}
