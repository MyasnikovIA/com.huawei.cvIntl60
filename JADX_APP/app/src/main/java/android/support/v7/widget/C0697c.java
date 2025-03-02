package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import com.google.android.exoplayer.C1167C;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* renamed from: android.support.v7.widget.c */
/* loaded from: classes.dex */
class C0697c extends DataSetObservable {

    /* renamed from: a */
    static final String f3814a = C0697c.class.getSimpleName();

    /* renamed from: e */
    private static final Object f3815e = new Object();

    /* renamed from: f */
    private static final Map<String, C0697c> f3816f = new HashMap();

    /* renamed from: b */
    final Context f3817b;

    /* renamed from: c */
    final String f3818c;

    /* renamed from: d */
    boolean f3819d;

    /* renamed from: g */
    private final Object f3820g;

    /* renamed from: h */
    private final List<a> f3821h;

    /* renamed from: i */
    private final List<c> f3822i;

    /* renamed from: j */
    private Intent f3823j;

    /* renamed from: k */
    private b f3824k;

    /* renamed from: l */
    private int f3825l;

    /* renamed from: m */
    private boolean f3826m;

    /* renamed from: n */
    private boolean f3827n;

    /* renamed from: o */
    private boolean f3828o;

    /* renamed from: p */
    private d f3829p;

    /* renamed from: android.support.v7.widget.c$b */
    public interface b {
        /* renamed from: a */
        void m4263a(Intent intent, List<a> list, List<c> list2);
    }

    /* renamed from: android.support.v7.widget.c$d */
    public interface d {
        /* renamed from: a */
        boolean m4264a(C0697c c0697c, Intent intent);
    }

    /* renamed from: a */
    public int m4256a() {
        int size;
        synchronized (this.f3820g) {
            m4250d();
            size = this.f3821h.size();
        }
        return size;
    }

    /* renamed from: a */
    public ResolveInfo m4258a(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.f3820g) {
            m4250d();
            resolveInfo = this.f3821h.get(i).f3830a;
        }
        return resolveInfo;
    }

    /* renamed from: a */
    public int m4257a(ResolveInfo resolveInfo) {
        synchronized (this.f3820g) {
            m4250d();
            List<a> list = this.f3821h;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).f3830a == resolveInfo) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: b */
    public Intent m4259b(int i) {
        synchronized (this.f3820g) {
            if (this.f3823j == null) {
                return null;
            }
            m4250d();
            a aVar = this.f3821h.get(i);
            ComponentName componentName = new ComponentName(aVar.f3830a.activityInfo.packageName, aVar.f3830a.activityInfo.name);
            Intent intent = new Intent(this.f3823j);
            intent.setComponent(componentName);
            if (this.f3829p != null) {
                if (this.f3829p.m4264a(this, new Intent(intent))) {
                    return null;
                }
            }
            m4248a(new c(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    /* renamed from: b */
    public ResolveInfo m4260b() {
        synchronized (this.f3820g) {
            m4250d();
            if (!this.f3821h.isEmpty()) {
                return this.f3821h.get(0).f3830a;
            }
            return null;
        }
    }

    /* renamed from: c */
    public void m4261c(int i) {
        float f;
        synchronized (this.f3820g) {
            m4250d();
            a aVar = this.f3821h.get(i);
            a aVar2 = this.f3821h.get(0);
            if (aVar2 != null) {
                f = (aVar2.f3831b - aVar.f3831b) + 5.0f;
            } else {
                f = 1.0f;
            }
            m4248a(new c(new ComponentName(aVar.f3830a.activityInfo.packageName, aVar.f3830a.activityInfo.name), System.currentTimeMillis(), f));
        }
    }

    /* renamed from: c */
    private void m4249c() {
        if (!this.f3826m) {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        }
        if (this.f3827n) {
            this.f3827n = false;
            if (!TextUtils.isEmpty(this.f3818c)) {
                new e().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.f3822i), this.f3818c);
            }
        }
    }

    /* renamed from: d */
    private void m4250d() {
        boolean m4252f = m4252f() | m4253g();
        m4254h();
        if (m4252f) {
            m4251e();
            notifyChanged();
        }
    }

    /* renamed from: e */
    private boolean m4251e() {
        if (this.f3824k == null || this.f3823j == null || this.f3821h.isEmpty() || this.f3822i.isEmpty()) {
            return false;
        }
        this.f3824k.m4263a(this.f3823j, this.f3821h, Collections.unmodifiableList(this.f3822i));
        return true;
    }

    /* renamed from: f */
    private boolean m4252f() {
        if (!this.f3828o || this.f3823j == null) {
            return false;
        }
        this.f3828o = false;
        this.f3821h.clear();
        List<ResolveInfo> queryIntentActivities = this.f3817b.getPackageManager().queryIntentActivities(this.f3823j, 0);
        int size = queryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            this.f3821h.add(new a(queryIntentActivities.get(i)));
        }
        return true;
    }

    /* renamed from: g */
    private boolean m4253g() {
        if (!this.f3819d || !this.f3827n || TextUtils.isEmpty(this.f3818c)) {
            return false;
        }
        this.f3819d = false;
        this.f3826m = true;
        m4255i();
        return true;
    }

    /* renamed from: a */
    private boolean m4248a(c cVar) {
        boolean add = this.f3822i.add(cVar);
        if (add) {
            this.f3827n = true;
            m4254h();
            m4249c();
            m4251e();
            notifyChanged();
        }
        return add;
    }

    /* renamed from: h */
    private void m4254h() {
        int size = this.f3822i.size() - this.f3825l;
        if (size > 0) {
            this.f3827n = true;
            for (int i = 0; i < size; i++) {
                this.f3822i.remove(0);
            }
        }
    }

    /* renamed from: android.support.v7.widget.c$c */
    public static final class c {

        /* renamed from: a */
        public final ComponentName f3832a;

        /* renamed from: b */
        public final long f3833b;

        /* renamed from: c */
        public final float f3834c;

        public c(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public c(ComponentName componentName, long j, float f) {
            this.f3832a = componentName;
            this.f3833b = j;
            this.f3834c = f;
        }

        public int hashCode() {
            return (((((this.f3832a == null ? 0 : this.f3832a.hashCode()) + 31) * 31) + ((int) (this.f3833b ^ (this.f3833b >>> 32)))) * 31) + Float.floatToIntBits(this.f3834c);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                c cVar = (c) obj;
                if (this.f3832a == null) {
                    if (cVar.f3832a != null) {
                        return false;
                    }
                } else if (!this.f3832a.equals(cVar.f3832a)) {
                    return false;
                }
                return this.f3833b == cVar.f3833b && Float.floatToIntBits(this.f3834c) == Float.floatToIntBits(cVar.f3834c);
            }
            return false;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("; activity:").append(this.f3832a);
            sb.append("; time:").append(this.f3833b);
            sb.append("; weight:").append(new BigDecimal(this.f3834c));
            sb.append("]");
            return sb.toString();
        }
    }

    /* renamed from: android.support.v7.widget.c$a */
    public static final class a implements Comparable<a> {

        /* renamed from: a */
        public final ResolveInfo f3830a;

        /* renamed from: b */
        public float f3831b;

        public a(ResolveInfo resolveInfo) {
            this.f3830a = resolveInfo;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f3831b) + 31;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && Float.floatToIntBits(this.f3831b) == Float.floatToIntBits(((a) obj).f3831b);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(a aVar) {
            return Float.floatToIntBits(aVar.f3831b) - Float.floatToIntBits(this.f3831b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("resolveInfo:").append(this.f3830a.toString());
            sb.append("; weight:").append(new BigDecimal(this.f3831b));
            sb.append("]");
            return sb.toString();
        }
    }

    /* renamed from: i */
    private void m4255i() {
        FileInputStream openFileInput;
        try {
            try {
                openFileInput = this.f3817b.openFileInput(this.f3818c);
                try {
                    try {
                        XmlPullParser newPullParser = Xml.newPullParser();
                        newPullParser.setInput(openFileInput, C1167C.UTF8_NAME);
                        for (int i = 0; i != 1 && i != 2; i = newPullParser.next()) {
                        }
                        if (!"historical-records".equals(newPullParser.getName())) {
                            throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                        }
                        List<c> list = this.f3822i;
                        list.clear();
                        while (true) {
                            int next = newPullParser.next();
                            if (next == 1) {
                                if (openFileInput != null) {
                                    try {
                                        openFileInput.close();
                                        return;
                                    } catch (IOException e2) {
                                        return;
                                    }
                                }
                                return;
                            }
                            if (next != 3 && next != 4) {
                                if (!"historical-record".equals(newPullParser.getName())) {
                                    throw new XmlPullParserException("Share records file not well-formed.");
                                }
                                list.add(new c(newPullParser.getAttributeValue(null, "activity"), Long.parseLong(newPullParser.getAttributeValue(null, "time")), Float.parseFloat(newPullParser.getAttributeValue(null, "weight"))));
                            }
                        }
                    } catch (IOException e3) {
                        Log.e(f3814a, "Error reading historical recrod file: " + this.f3818c, e3);
                        if (openFileInput != null) {
                            try {
                                openFileInput.close();
                            } catch (IOException e4) {
                            }
                        }
                    }
                } catch (XmlPullParserException e5) {
                    Log.e(f3814a, "Error reading historical recrod file: " + this.f3818c, e5);
                    if (openFileInput != null) {
                        try {
                            openFileInput.close();
                        } catch (IOException e6) {
                        }
                    }
                }
            } catch (Throwable th) {
                if (openFileInput != null) {
                    try {
                        openFileInput.close();
                    } catch (IOException e7) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e8) {
        }
    }

    /* renamed from: android.support.v7.widget.c$e */
    private final class e extends AsyncTask<Object, Void, Void> {
        e() {
        }

        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Void doInBackground(Object... objArr) {
            FileOutputStream openFileOutput;
            XmlSerializer newSerializer;
            List list = (List) objArr[0];
            String str = (String) objArr[1];
            try {
                openFileOutput = C0697c.this.f3817b.openFileOutput(str, 0);
                newSerializer = Xml.newSerializer();
            } catch (FileNotFoundException e) {
                Log.e(C0697c.f3814a, "Error writing historical record file: " + str, e);
            }
            try {
                try {
                    try {
                        newSerializer.setOutput(openFileOutput, null);
                        newSerializer.startDocument(C1167C.UTF8_NAME, true);
                        newSerializer.startTag(null, "historical-records");
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            c cVar = (c) list.remove(0);
                            newSerializer.startTag(null, "historical-record");
                            newSerializer.attribute(null, "activity", cVar.f3832a.flattenToString());
                            newSerializer.attribute(null, "time", String.valueOf(cVar.f3833b));
                            newSerializer.attribute(null, "weight", String.valueOf(cVar.f3834c));
                            newSerializer.endTag(null, "historical-record");
                        }
                        newSerializer.endTag(null, "historical-records");
                        newSerializer.endDocument();
                        C0697c.this.f3819d = true;
                        if (openFileOutput != null) {
                            try {
                                openFileOutput.close();
                            } catch (IOException e2) {
                            }
                        }
                    } catch (IllegalArgumentException e3) {
                        Log.e(C0697c.f3814a, "Error writing historical record file: " + C0697c.this.f3818c, e3);
                        C0697c.this.f3819d = true;
                        if (openFileOutput != null) {
                            try {
                                openFileOutput.close();
                            } catch (IOException e4) {
                            }
                        }
                    } catch (IllegalStateException e5) {
                        Log.e(C0697c.f3814a, "Error writing historical record file: " + C0697c.this.f3818c, e5);
                        C0697c.this.f3819d = true;
                        if (openFileOutput != null) {
                            try {
                                openFileOutput.close();
                            } catch (IOException e6) {
                            }
                        }
                    }
                } catch (IOException e7) {
                    Log.e(C0697c.f3814a, "Error writing historical record file: " + C0697c.this.f3818c, e7);
                    C0697c.this.f3819d = true;
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException e8) {
                        }
                    }
                }
                return null;
            } catch (Throwable th) {
                C0697c.this.f3819d = true;
                if (openFileOutput != null) {
                    try {
                        openFileOutput.close();
                    } catch (IOException e9) {
                    }
                }
                throw th;
            }
        }
    }
}
