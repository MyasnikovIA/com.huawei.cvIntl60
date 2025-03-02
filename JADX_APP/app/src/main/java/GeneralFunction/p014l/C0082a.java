package GeneralFunction.p014l;

import GeneralFunction.C0052d;
import GeneralFunction.p014l.C0086d;
import GeneralFunction.p014l.p015a.C0083a;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.InputDeviceCompat;
import java.util.ArrayList;
import java.util.List;

/* renamed from: GeneralFunction.l.a */
/* loaded from: classes.dex */
public class C0082a {

    /* renamed from: a */
    private C0083a f652a = null;

    /* renamed from: b */
    private C0086d f653b = null;

    /* renamed from: c */
    private a f654c = null;

    /* renamed from: d */
    private boolean f655d = false;

    /* renamed from: e */
    private C0086d.b f656e = new C0086d.b() { // from class: GeneralFunction.l.a.1
        AnonymousClass1() {
        }

        @Override // GeneralFunction.p014l.C0086d.b
        /* renamed from: a */
        public void mo808a(C0085c c0085c) {
            C0082a.this.m790a("WechatShareResultListener result:" + c0085c.f675a, 3);
            C0082a.this.m806a(c0085c);
        }
    };

    /* renamed from: f */
    private C0086d.a f657f = new C0086d.a() { // from class: GeneralFunction.l.a.2
        AnonymousClass2() {
        }
    };

    /* renamed from: GeneralFunction.l.a$a */
    public interface a {
        /* renamed from: a */
        void mo809a(C0085c c0085c);
    }

    /* renamed from: a */
    public void m790a(String str, int i) {
        C0052d.m465a("SNSManager", str, i);
    }

    /* renamed from: a */
    public void m807a(Context context) {
        this.f653b = new C0086d();
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(context);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("ShareResultCallback");
        localBroadcastManager.registerReceiver(this.f653b, intentFilter);
    }

    /* renamed from: GeneralFunction.l.a$1 */
    class AnonymousClass1 implements C0086d.b {
        AnonymousClass1() {
        }

        @Override // GeneralFunction.p014l.C0086d.b
        /* renamed from: a */
        public void mo808a(C0085c c0085c) {
            C0082a.this.m790a("WechatShareResultListener result:" + c0085c.f675a, 3);
            C0082a.this.m806a(c0085c);
        }
    }

    /* renamed from: GeneralFunction.l.a$2 */
    class AnonymousClass2 implements C0086d.a {
        AnonymousClass2() {
        }
    }

    /* renamed from: a */
    public void m805a(a aVar) {
        this.f654c = aVar;
    }

    /* renamed from: a */
    public void m806a(C0085c c0085c) {
        if (this.f654c != null) {
            this.f654c.mo809a(c0085c);
        }
    }

    /* renamed from: b */
    private int m792b(C0084b c0084b, Activity activity) {
        switch (c0084b.f662b) {
            case 4096:
                return m802l(c0084b, activity);
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                return m802l(c0084b, activity);
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                return m802l(c0084b, activity);
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
            case 4100:
            default:
                return 5;
            case 4101:
                return m802l(c0084b, activity);
        }
    }

    /* renamed from: a */
    private static boolean m791a(Context context, String str) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages == null) {
            return false;
        }
        for (int i = 0; i < installedPackages.size(); i++) {
            if (installedPackages.get(i).packageName.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    private int m793c(C0084b c0084b, Activity activity) {
        switch (c0084b.f662b) {
            case 4096:
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
            case 4101:
                m802l(c0084b, activity);
                return 0;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
            case 4100:
            default:
                return 6;
        }
    }

    /* renamed from: d */
    private int m794d(C0084b c0084b, Activity activity) {
        switch (c0084b.f662b) {
            case 4096:
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
            case 4101:
                m802l(c0084b, activity);
                return 0;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
            case 4100:
            default:
                return 6;
        }
    }

    /* renamed from: e */
    private int m795e(C0084b c0084b, Activity activity) {
        switch (c0084b.f662b) {
            case 4096:
                if (c0084b.f663c == 12288) {
                    return m802l(c0084b, activity);
                }
                return 6;
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
            case 4101:
                return m802l(c0084b, activity);
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
            case 4100:
            default:
                return 6;
        }
    }

    /* renamed from: f */
    private int m796f(C0084b c0084b, Activity activity) {
        switch (c0084b.f662b) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
            case 4101:
                m802l(c0084b, activity);
                return 0;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
            case 4100:
            default:
                return 6;
        }
    }

    /* renamed from: g */
    private int m797g(C0084b c0084b, Activity activity) {
        switch (c0084b.f662b) {
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                m802l(c0084b, activity);
                return 0;
            default:
                return 6;
        }
    }

    /* renamed from: h */
    private int m798h(C0084b c0084b, Activity activity) {
        switch (c0084b.f662b) {
            case 4096:
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
            case 4101:
                m802l(c0084b, activity);
                return 0;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
            case 4100:
            default:
                return 6;
        }
    }

    /* renamed from: i */
    private int m799i(C0084b c0084b, Activity activity) {
        switch (c0084b.f662b) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
            case 4101:
                m802l(c0084b, activity);
                return 0;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
            case 4100:
            default:
                return 6;
        }
    }

    /* renamed from: j */
    private int m800j(C0084b c0084b, Activity activity) {
        switch (c0084b.f662b) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
            case 4101:
                this.f655d = true;
                m802l(c0084b, activity);
                return 0;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
            case 4100:
            default:
                return 6;
        }
    }

    /* renamed from: k */
    private int m801k(C0084b c0084b, Activity activity) {
        switch (c0084b.f662b) {
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("youku://upload".trim()));
                intent.putExtra("isVr", 1);
                activity.startActivity(intent);
                return 0;
            default:
                return 6;
        }
    }

    /* renamed from: l */
    private int m802l(C0084b c0084b, Activity activity) {
        int i = 0;
        Intent intent = null;
        int i2 = Build.VERSION.SDK_INT;
        switch (c0084b.f662b) {
            case 4096:
                intent = new Intent("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.TEXT", c0084b.f666f);
                intent.setType("text/plain");
                break;
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                Intent intent2 = new Intent("android.intent.action.SEND");
                if (i2 >= 24) {
                    intent2.putExtra("android.intent.extra.STREAM", c0084b.f674n.get(0));
                    intent2.addFlags(3);
                    if (this.f655d) {
                        intent2.addFlags(268435456);
                        this.f655d = false;
                    }
                } else {
                    intent2.putExtra("android.intent.extra.STREAM", c0084b.f674n.get(0));
                }
                intent2.setType("image/*");
                intent = intent2;
                break;
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                if (c0084b.f672l.size() > 1) {
                    Intent intent3 = new Intent("android.intent.action.SEND_MULTIPLE");
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                    arrayList.clear();
                    for (int i3 = 0; i3 < c0084b.f672l.size(); i3++) {
                        arrayList.add(c0084b.f672l.get(i3));
                    }
                    intent3.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
                    intent = intent3;
                } else {
                    Intent intent4 = new Intent("android.intent.action.SEND");
                    if (i2 >= 24) {
                        intent4.putExtra("android.intent.extra.STREAM", c0084b.f672l.get(0));
                        intent4.addFlags(3);
                        intent = intent4;
                    } else {
                        intent4.putExtra("android.intent.extra.STREAM", c0084b.f672l.get(0));
                        intent = intent4;
                    }
                }
                intent.setType("video/*");
                break;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
            case 4100:
            default:
                i = 6;
                break;
            case 4101:
                Intent intent5 = new Intent("android.intent.action.SEND_MULTIPLE");
                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
                arrayList2.clear();
                for (int i4 = 0; i4 < c0084b.f674n.size(); i4++) {
                    arrayList2.add(c0084b.f674n.get(i4));
                }
                intent5.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList2);
                intent5.setType("image/*");
                intent = intent5;
                break;
        }
        switch (c0084b.f661a) {
            case 8192:
                intent.setPackage("com.facebook.katana");
                break;
            case 8193:
                intent.setPackage("com.google.android.youtube");
                break;
            case 8194:
                intent.setPackage("jp.naver.line.android");
                break;
            case 8195:
                intent.setPackage("com.twitter.android");
                break;
            case 8196:
                intent.setPackage("com.instagram.android");
                break;
            case 8197:
                intent.setClassName("com.tencent.mm", "com.tencent.mm.ui.tools.ShareImgUI");
                break;
            case 8198:
                intent.setClassName("com.tencent.mm", "com.tencent.mm.ui.tools.ShareToTimeLineUI");
                break;
            case 8199:
                intent.setClassName("com.tencent.mobileqq", "com.tencent.mobileqq.activity.JumpActivity");
                break;
            case 8200:
                intent.setPackage("com.qzone");
                break;
            case 8201:
                intent.setPackage("com.sina.weibo");
                break;
            case 8202:
                intent.setPackage("com.whatsapp");
                break;
            case 8203:
                intent.setPackage("com.youku.phone");
                intent.putExtra("isVr", 1);
                break;
            case 8204:
                intent.setPackage("com.vkontakte.android");
                break;
            case 8205:
                intent.setClassName("com.snapchat.android", "com.snapchat.android.LandingPageActivity");
                break;
            case 8206:
                intent.setPackage("com.google.android.apps.photos");
                break;
            default:
                i = 6;
                break;
        }
        if (i != 0) {
            return i;
        }
        try {
            activity.startActivityForResult(intent, 36864);
            return i;
        } catch (Exception e) {
            m790a("SNS: startActivity is error.", 3);
            return 5;
        }
    }

    /* renamed from: a */
    public int m803a(C0084b c0084b, Activity activity) {
        switch (c0084b.f661a) {
            case 8192:
                if (m791a(activity, "com.facebook.katana")) {
                    return m792b(c0084b, activity);
                }
                return 4;
            case 8193:
                if (m791a(activity, "com.google.android.youtube")) {
                    return m797g(c0084b, activity);
                }
                return 4;
            case 8194:
                if (m791a(activity, "jp.naver.line.android")) {
                    return m794d(c0084b, activity);
                }
                return 4;
            case 8195:
                if (m791a(activity, "com.twitter.android")) {
                    return m793c(c0084b, activity);
                }
                return 4;
            case 8196:
                if (m791a(activity, "com.instagram.android")) {
                    return m796f(c0084b, activity);
                }
                return 4;
            case 8197:
            case 8198:
            case 8199:
            case 8200:
            default:
                return 6;
            case 8201:
                if (m791a(activity, "com.sina.weibo")) {
                    return m795e(c0084b, activity);
                }
                return 4;
            case 8202:
                if (m791a(activity, "com.whatsapp")) {
                    return m798h(c0084b, activity);
                }
                return 4;
            case 8203:
                if (m791a(activity, "com.youku.phone")) {
                    return m801k(c0084b, activity);
                }
                return 4;
            case 8204:
                if (m791a(activity, "com.vkontakte.android")) {
                    return m799i(c0084b, activity);
                }
                return 4;
            case 8205:
                if (m791a(activity, "com.snapchat.android")) {
                    return m800j(c0084b, activity);
                }
                return 4;
            case 8206:
                if (m791a(activity, "com.google.android.apps.photos")) {
                    return m798h(c0084b, activity);
                }
                return 4;
        }
    }

    /* renamed from: a */
    public void m804a(int i, int i2, Intent intent, Context context) {
        m790a("onActivityResultHandler requestCode" + i, 0);
        C0085c c0085c = new C0085c();
        c0085c.f675a = 0;
        switch (i) {
            case 36864:
                m806a(c0085c);
                break;
            case 64207:
                C0083a c0083a = this.f652a;
                C0083a.f660a.mo5915a(i, i2, intent);
                m806a(c0085c);
                break;
        }
    }
}
