package android.support.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: android.support.transition.s */
/* loaded from: classes.dex */
public class C0331s {

    /* renamed from: b */
    public View f2135b;

    /* renamed from: a */
    public final Map<String, Object> f2134a = new HashMap();

    /* renamed from: c */
    final ArrayList<AbstractC0325l> f2136c = new ArrayList<>();

    public boolean equals(Object obj) {
        return (obj instanceof C0331s) && this.f2135b == ((C0331s) obj).f2135b && this.f2134a.equals(((C0331s) obj).f2134a);
    }

    public int hashCode() {
        return (this.f2135b.hashCode() * 31) + this.f2134a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f2135b + "\n") + "    values:";
        Iterator<String> it = this.f2134a.keySet().iterator();
        while (true) {
            String str2 = str;
            if (it.hasNext()) {
                String next = it.next();
                str = str2 + "    " + next + ": " + this.f2134a.get(next) + "\n";
            } else {
                return str2;
            }
        }
    }
}
