package com.facebook.p089a.p090a.p091a;

import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.gms.plus.PlusShare;
import org.json.JSONObject;

/* renamed from: com.facebook.a.a.a.c */
/* loaded from: classes.dex */
public final class C1007c {

    /* renamed from: a */
    public final String f5161a;

    /* renamed from: b */
    public final int f5162b;

    /* renamed from: c */
    public final int f5163c;

    /* renamed from: d */
    public final String f5164d;

    /* renamed from: e */
    public final String f5165e;

    /* renamed from: f */
    public final String f5166f;

    /* renamed from: g */
    public final String f5167g;

    /* renamed from: h */
    public final int f5168h;

    /* renamed from: com.facebook.a.a.a.c$a */
    public enum a {
        ID(1),
        TEXT(2),
        TAG(4),
        DESCRIPTION(8),
        HINT(16);


        /* renamed from: f */
        private final int f5175f;

        a(int i) {
            this.f5175f = i;
        }

        /* renamed from: a */
        public int m5647a() {
            return this.f5175f;
        }
    }

    C1007c(JSONObject jSONObject) {
        this.f5161a = jSONObject.getString("class_name");
        this.f5162b = jSONObject.optInt("index", -1);
        this.f5163c = jSONObject.optInt(TtmlNode.ATTR_ID);
        this.f5164d = jSONObject.optString(MimeTypes.BASE_TYPE_TEXT);
        this.f5165e = jSONObject.optString("tag");
        this.f5166f = jSONObject.optString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION);
        this.f5167g = jSONObject.optString("hint");
        this.f5168h = jSONObject.optInt("match_bitmask");
    }
}
