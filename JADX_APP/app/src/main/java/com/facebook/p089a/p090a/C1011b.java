package com.facebook.p089a.p090a;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.facebook.C1048h;
import com.facebook.C1074k;
import com.facebook.internal.C1060k;
import com.facebook.internal.C1061l;
import com.facebook.internal.C1062m;
import com.facebook.p089a.p090a.C1004a;
import com.facebook.p089a.p090a.C1012c;
import com.facebook.p089a.p090a.p091a.C1005a;
import com.facebook.p089a.p090a.p091a.C1006b;
import com.facebook.p089a.p090a.p091a.C1007c;
import com.facebook.p089a.p090a.p091a.C1010f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: com.facebook.a.a.b */
/* loaded from: classes.dex */
public class C1011b {

    /* renamed from: a */
    private static final String f5181a = C1011b.class.getCanonicalName();

    /* renamed from: b */
    private final Handler f5182b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private Set<Activity> f5183c = new HashSet();

    /* renamed from: d */
    private Set<b> f5184d = new HashSet();

    /* renamed from: e */
    private HashMap<String, String> f5185e = new HashMap<>();

    /* renamed from: a */
    public void m5680a(Activity activity) {
        if (!C1062m.m5996b()) {
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new C1048h("Can't add activity to CodelessMatcher on non-UI thread");
            }
            this.f5183c.add(activity);
            this.f5185e.clear();
            m5678b();
        }
    }

    /* renamed from: b */
    public void m5681b(Activity activity) {
        if (!C1062m.m5996b()) {
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new C1048h("Can't remove activity from CodelessMatcher on non-UI thread");
            }
            this.f5183c.remove(activity);
            this.f5184d.clear();
            this.f5185e.clear();
        }
    }

    /* renamed from: a */
    public static Bundle m5675a(C1005a c1005a, View view, View view2) {
        List<a> m5685a;
        Bundle bundle = new Bundle();
        if (c1005a == null) {
            return bundle;
        }
        List<C1006b> m5641b = c1005a.m5641b();
        if (m5641b != null) {
            for (C1006b c1006b : m5641b) {
                if (c1006b.f5158b != null && c1006b.f5158b.length() > 0) {
                    bundle.putString(c1006b.f5157a, c1006b.f5158b);
                } else if (c1006b.f5159c.size() > 0) {
                    if (c1006b.f5160d.equals("relative")) {
                        m5685a = b.m5685a(c1005a, view2, c1006b.f5159c, 0, -1, view2.getClass().getSimpleName());
                    } else {
                        m5685a = b.m5685a(c1005a, view, c1006b.f5159c, 0, -1, view.getClass().getSimpleName());
                    }
                    Iterator<a> it = m5685a.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            a next = it.next();
                            if (next.m5682a() != null) {
                                String m5665d = C1010f.m5665d(next.m5682a());
                                if (m5665d.length() > 0) {
                                    bundle.putString(c1006b.f5157a, m5665d);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        return bundle;
    }

    /* renamed from: b */
    private void m5678b() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            m5679c();
        } else {
            this.f5182b.post(new Runnable() { // from class: com.facebook.a.a.b.1
                AnonymousClass1() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    C1011b.this.m5679c();
                }
            });
        }
    }

    /* renamed from: com.facebook.a.a.b$1 */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1011b.this.m5679c();
        }
    }

    /* renamed from: c */
    public void m5679c() {
        for (Activity activity : this.f5183c) {
            this.f5184d.add(new b(activity.getWindow().getDecorView().getRootView(), this.f5182b, this.f5185e, activity.getClass().getSimpleName()));
        }
    }

    /* renamed from: com.facebook.a.a.b$a */
    public static class a {

        /* renamed from: a */
        private WeakReference<View> f5187a;

        /* renamed from: b */
        private String f5188b;

        public a(View view, String str) {
            this.f5187a = new WeakReference<>(view);
            this.f5188b = str;
        }

        @Nullable
        /* renamed from: a */
        public View m5682a() {
            if (this.f5187a == null) {
                return null;
            }
            return this.f5187a.get();
        }

        /* renamed from: b */
        public String m5683b() {
            return this.f5188b;
        }
    }

    /* renamed from: com.facebook.a.a.b$b */
    protected static class b implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {

        /* renamed from: a */
        private WeakReference<View> f5189a;

        /* renamed from: b */
        @Nullable
        private List<C1005a> f5190b;

        /* renamed from: c */
        private final Handler f5191c;

        /* renamed from: d */
        private HashMap<String, String> f5192d;

        /* renamed from: e */
        private final String f5193e;

        public b(View view, Handler handler, HashMap<String, String> hashMap, String str) {
            this.f5189a = new WeakReference<>(view);
            this.f5191c = handler;
            this.f5192d = hashMap;
            this.f5193e = str;
            this.f5191c.postDelayed(this, 200L);
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            C1060k m5978a = C1061l.m5978a(C1074k.m6185j());
            if (m5978a != null && m5978a.m5971h()) {
                this.f5190b = C1005a.m5639a(m5978a.m5972i());
                if (this.f5190b != null && (view = this.f5189a.get()) != null) {
                    ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.addOnGlobalLayoutListener(this);
                        viewTreeObserver.addOnScrollChangedListener(this);
                    }
                    m5686a();
                }
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            m5686a();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            m5686a();
        }

        /* renamed from: a */
        private void m5686a() {
            if (this.f5190b != null && this.f5189a.get() != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < this.f5190b.size()) {
                        m5690a(this.f5190b.get(i2), this.f5189a.get());
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
            }
        }

        /* renamed from: a */
        public void m5690a(C1005a c1005a, View view) {
            if (c1005a != null && view != null) {
                if (TextUtils.isEmpty(c1005a.m5644e()) || c1005a.m5644e().equals(this.f5193e)) {
                    List<C1007c> m5640a = c1005a.m5640a();
                    if (m5640a.size() <= 25) {
                        Iterator<a> it = m5685a(c1005a, view, m5640a, 0, -1, this.f5193e).iterator();
                        while (it.hasNext()) {
                            m5688a(it.next(), view, c1005a);
                        }
                    }
                }
            }
        }

        /* renamed from: a */
        public static List<a> m5685a(C1005a c1005a, View view, List<C1007c> list, int i, int i2, String str) {
            int i3 = 0;
            String str2 = str + "." + String.valueOf(i2);
            ArrayList arrayList = new ArrayList();
            if (view == null) {
                return arrayList;
            }
            if (i >= list.size()) {
                arrayList.add(new a(view, str2));
            } else {
                C1007c c1007c = list.get(i);
                if (c1007c.f5161a.equals("..")) {
                    ViewParent parent = view.getParent();
                    if (parent instanceof ViewGroup) {
                        List<View> m5684a = m5684a((ViewGroup) parent);
                        int size = m5684a.size();
                        while (i3 < size) {
                            arrayList.addAll(m5685a(c1005a, m5684a.get(i3), list, i + 1, i3, str2));
                            i3++;
                        }
                    }
                    return arrayList;
                }
                if (c1007c.f5161a.equals(".")) {
                    arrayList.add(new a(view, str2));
                    return arrayList;
                }
                if (!m5689a(view, c1007c, i2)) {
                    return arrayList;
                }
                if (i == list.size() - 1) {
                    arrayList.add(new a(view, str2));
                }
            }
            if (view instanceof ViewGroup) {
                List<View> m5684a2 = m5684a((ViewGroup) view);
                int size2 = m5684a2.size();
                while (i3 < size2) {
                    arrayList.addAll(m5685a(c1005a, m5684a2.get(i3), list, i + 1, i3, str2));
                    i3++;
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        private static boolean m5689a(View view, C1007c c1007c, int i) {
            if (c1007c.f5162b != -1 && i != c1007c.f5162b) {
                return false;
            }
            if (!view.getClass().getCanonicalName().equals(c1007c.f5161a)) {
                if (!c1007c.f5161a.matches(".*android\\..*")) {
                    return false;
                }
                String[] split = c1007c.f5161a.split("\\.");
                if (split.length <= 0) {
                    return false;
                }
                if (!view.getClass().getSimpleName().equals(split[split.length - 1])) {
                    return false;
                }
            }
            if ((c1007c.f5168h & C1007c.a.ID.m5647a()) > 0 && c1007c.f5163c != view.getId()) {
                return false;
            }
            if ((c1007c.f5168h & C1007c.a.TEXT.m5647a()) > 0 && !c1007c.f5164d.equals(C1010f.m5665d(view))) {
                return false;
            }
            if ((c1007c.f5168h & C1007c.a.DESCRIPTION.m5647a()) > 0) {
                if (!c1007c.f5166f.equals(view.getContentDescription() == null ? "" : String.valueOf(view.getContentDescription()))) {
                    return false;
                }
            }
            if ((c1007c.f5168h & C1007c.a.HINT.m5647a()) > 0 && !c1007c.f5167g.equals(C1010f.m5666e(view))) {
                return false;
            }
            if ((c1007c.f5168h & C1007c.a.TAG.m5647a()) > 0) {
                if (!c1007c.f5165e.equals(view.getTag() == null ? "" : String.valueOf(view.getTag()))) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: a */
        private static List<View> m5684a(ViewGroup viewGroup) {
            ArrayList arrayList = new ArrayList();
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    arrayList.add(childAt);
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        private void m5688a(a aVar, View view, C1005a c1005a) {
            if (c1005a != null) {
                try {
                    View m5682a = aVar.m5682a();
                    if (m5682a != null) {
                        View m5670i = C1010f.m5670i(m5682a);
                        if (m5670i != null && C1010f.m5662a(m5682a, m5670i)) {
                            m5687a(aVar, view, m5670i, c1005a);
                            return;
                        }
                        if (!m5682a.getClass().getName().startsWith("com.facebook.react")) {
                            String m5683b = aVar.m5683b();
                            View.AccessibilityDelegate m5667f = C1010f.m5667f(m5682a);
                            boolean z = m5667f != null;
                            boolean z2 = z && (m5667f instanceof C1004a.a);
                            boolean z3 = z2 && ((C1004a.a) m5667f).m5646a();
                            if (this.f5192d.containsKey(m5683b)) {
                                return;
                            }
                            if (!z || !z2 || !z3) {
                                m5682a.setAccessibilityDelegate(C1004a.m5636a(c1005a, view, m5682a));
                                this.f5192d.put(m5683b, c1005a.m5642c());
                            }
                        }
                    }
                } catch (C1048h e) {
                    Log.e(C1011b.f5181a, "Failed to attach auto logging event listener.", e);
                }
            }
        }

        /* renamed from: a */
        private void m5687a(a aVar, View view, View view2, C1005a c1005a) {
            View m5682a;
            if (c1005a != null && (m5682a = aVar.m5682a()) != null && C1010f.m5662a(m5682a, view2)) {
                String m5683b = aVar.m5683b();
                View.OnTouchListener m5668g = C1010f.m5668g(m5682a);
                boolean z = m5668g != null;
                boolean z2 = z && (m5668g instanceof C1012c.a);
                boolean z3 = z2 && ((C1012c.a) m5668g).m5693a();
                if (this.f5192d.containsKey(m5683b)) {
                    return;
                }
                if (!z || !z2 || !z3) {
                    m5682a.setOnTouchListener(C1012c.m5691a(c1005a, view, m5682a));
                    this.f5192d.put(m5683b, c1005a.m5642c());
                }
            }
        }
    }
}
