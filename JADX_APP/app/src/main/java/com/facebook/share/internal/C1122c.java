package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.C1048h;
import com.facebook.internal.C1070u;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.share.internal.c */
/* loaded from: classes.dex */
public class C1122c {
    /* renamed from: a */
    public static Bundle m6462a(ShareLinkContent shareLinkContent) {
        Bundle m6461a = m6461a((ShareContent) shareLinkContent);
        C1070u.m6083a(m6461a, "href", shareLinkContent.m6487a());
        C1070u.m6084a(m6461a, "quote", shareLinkContent.m6497c());
        return m6461a;
    }

    /* renamed from: a */
    public static Bundle m6463a(ShareOpenGraphContent shareOpenGraphContent) {
        Bundle m6461a = m6461a((ShareContent) shareOpenGraphContent);
        C1070u.m6084a(m6461a, "action_type", shareOpenGraphContent.m6524c().m6517a());
        try {
            JSONObject m6460a = C1121b.m6460a(C1121b.m6459a(shareOpenGraphContent), false);
            if (m6460a != null) {
                C1070u.m6084a(m6461a, "action_properties", m6460a.toString());
            }
            return m6461a;
        } catch (JSONException e) {
            throw new C1048h("Unable to serialize the ShareOpenGraphContent to JSON", e);
        }
    }

    /* renamed from: a */
    public static Bundle m6461a(ShareContent shareContent) {
        Bundle bundle = new Bundle();
        ShareHashtag m6488b = shareContent.m6488b();
        if (m6488b != null) {
            C1070u.m6084a(bundle, "hashtag", m6488b.m6489a());
        }
        return bundle;
    }
}
