package com.facebook.p089a.p092b;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.C1074k;
import com.facebook.internal.C1060k;
import com.facebook.internal.C1061l;
import com.facebook.internal.C1071v;
import com.facebook.p089a.C1032g;
import com.google.android.gms.plus.PlusShare;
import java.math.BigDecimal;
import java.util.Currency;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* renamed from: com.facebook.a.b.d */
/* loaded from: classes.dex */
public class C1019d {

    /* renamed from: a */
    private static final String f5251a = C1019d.class.getCanonicalName();

    /* renamed from: b */
    private static final C1023h f5252b = new C1023h(C1074k.m6181f());

    /* renamed from: a */
    public static void m5749a() {
        Context m6181f = C1074k.m6181f();
        String m6185j = C1074k.m6185j();
        boolean m6187l = C1074k.m6187l();
        C1071v.m6125a(m6181f, "context");
        if (m6187l) {
            if (m6181f instanceof Application) {
                C1032g.m5839a((Application) m6181f, m6185j);
            } else {
                Log.w(f5251a, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context.");
            }
        }
    }

    /* renamed from: a */
    public static void m5751a(String str, long j) {
        Context m6181f = C1074k.m6181f();
        String m6185j = C1074k.m6185j();
        C1071v.m6125a(m6181f, "context");
        C1060k m5980a = C1061l.m5980a(m6185j, false);
        if (m5980a != null && m5980a.m5967d() && j > 0) {
            C1032g m5838a = C1032g.m5838a(m6181f);
            Bundle bundle = new Bundle(1);
            bundle.putCharSequence("fb_aa_time_spent_view_name", str);
            m5838a.m5854a("fb_aa_time_spent_on_view", j, bundle);
        }
    }

    /* renamed from: a */
    public static void m5752a(String str, String str2) {
        a m5753b;
        if (m5754b() && (m5753b = m5753b(str, str2)) != null) {
            f5252b.mo5785a(m5753b.f5254a, m5753b.f5255b, m5753b.f5256c);
        }
    }

    /* renamed from: a */
    public static void m5750a(EnumC1027l enumC1027l, String str, String str2) {
        String str3;
        if (m5754b()) {
            switch (enumC1027l) {
                case RESTORE:
                    str3 = "SubscriptionRestore";
                    break;
                case CANCEL:
                    str3 = "SubscriptionCancel";
                    break;
                case HEARTBEAT:
                    str3 = "SubscriptionHeartbeat";
                    break;
                case EXPIRE:
                    str3 = "SubscriptionExpire";
                    break;
                case NEW:
                    m5752a(str, str2);
                    return;
                default:
                    return;
            }
            a m5753b = m5753b(str, str2);
            if (m5753b != null) {
                f5252b.mo5784a(str3, m5753b.f5254a, m5753b.f5255b, m5753b.f5256c);
            }
        }
    }

    /* renamed from: b */
    public static boolean m5754b() {
        C1060k m5978a = C1061l.m5978a(C1074k.m6185j());
        return m5978a != null && C1074k.m6187l() && m5978a.m5970g();
    }

    @Nullable
    /* renamed from: b */
    private static a m5753b(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = new JSONObject(str2);
            Bundle bundle = new Bundle(1);
            bundle.putCharSequence("fb_iap_product_id", jSONObject.getString("productId"));
            bundle.putCharSequence("fb_iap_purchase_time", jSONObject.getString("purchaseTime"));
            bundle.putCharSequence("fb_iap_purchase_token", jSONObject.getString("purchaseToken"));
            bundle.putCharSequence("fb_iap_package_name", jSONObject.optString("packageName"));
            bundle.putCharSequence("fb_iap_product_title", jSONObject2.optString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE));
            bundle.putCharSequence("fb_iap_product_description", jSONObject2.optString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION));
            String optString = jSONObject2.optString(IjkMediaMeta.IJKM_KEY_TYPE);
            bundle.putCharSequence("fb_iap_product_type", optString);
            if (optString.equals("subs")) {
                bundle.putCharSequence("fb_iap_subs_auto_renewing", Boolean.toString(jSONObject.optBoolean("autoRenewing", false)));
                bundle.putCharSequence("fb_iap_subs_period", jSONObject2.optString("subscriptionPeriod"));
                bundle.putCharSequence("fb_free_trial_period", jSONObject2.optString("freeTrialPeriod"));
                String optString2 = jSONObject2.optString("introductoryPriceCycles");
                if (!optString2.isEmpty()) {
                    bundle.putCharSequence("fb_intro_price_amount_micros", jSONObject2.optString("introductoryPriceAmountMicros"));
                    bundle.putCharSequence("fb_intro_price_cycles", optString2);
                }
            }
            return new a(new BigDecimal(jSONObject2.getLong("price_amount_micros") / 1000000.0d), Currency.getInstance(jSONObject2.getString("price_currency_code")), bundle);
        } catch (JSONException e) {
            Log.e(f5251a, "Error parsing in-app subscription data.", e);
            return null;
        }
    }

    /* renamed from: com.facebook.a.b.d$a */
    private static class a {

        /* renamed from: a */
        BigDecimal f5254a;

        /* renamed from: b */
        Currency f5255b;

        /* renamed from: c */
        Bundle f5256c;

        a(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
            this.f5254a = bigDecimal;
            this.f5255b = currency;
            this.f5256c = bundle;
        }
    }
}
