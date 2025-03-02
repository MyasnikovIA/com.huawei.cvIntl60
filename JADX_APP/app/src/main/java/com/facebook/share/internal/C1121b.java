package com.facebook.share.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import com.facebook.AccessToken;
import com.facebook.C1048h;
import com.facebook.EnumC1112q;
import com.facebook.GraphRequest;
import com.facebook.internal.C1070u;
import com.facebook.share.internal.C1120a;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.share.internal.b */
/* loaded from: classes.dex */
public final class C1121b {
    /* renamed from: a */
    public static JSONObject m6459a(ShareOpenGraphContent shareOpenGraphContent) {
        return C1120a.m6452a(shareOpenGraphContent.m6524c(), (C1120a.a) new C1120a.a() { // from class: com.facebook.share.internal.b.1
            AnonymousClass1() {
            }

            @Override // com.facebook.share.internal.C1120a.a
            /* renamed from: a */
            public JSONObject mo6454a(SharePhoto sharePhoto) {
                Uri m6536c = sharePhoto.m6536c();
                if (!C1070u.m6094a(m6536c)) {
                    throw new C1048h("Only web images may be used in OG objects shared via the web dialog");
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", m6536c.toString());
                    return jSONObject;
                } catch (JSONException e) {
                    throw new C1048h("Unable to attach images", e);
                }
            }
        });
    }

    /* renamed from: com.facebook.share.internal.b$1 */
    static class AnonymousClass1 implements C1120a.a {
        AnonymousClass1() {
        }

        @Override // com.facebook.share.internal.C1120a.a
        /* renamed from: a */
        public JSONObject mo6454a(SharePhoto sharePhoto) {
            Uri m6536c = sharePhoto.m6536c();
            if (!C1070u.m6094a(m6536c)) {
                throw new C1048h("Only web images may be used in OG objects shared via the web dialog");
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("url", m6536c.toString());
                return jSONObject;
            } catch (JSONException e) {
                throw new C1048h("Unable to attach images", e);
            }
        }
    }

    /* renamed from: a */
    public static JSONArray m6458a(JSONArray jSONArray, boolean z) {
        JSONArray jSONArray2 = new JSONArray();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                Object obj = jSONArray.get(i2);
                if (obj instanceof JSONArray) {
                    obj = m6458a((JSONArray) obj, z);
                } else if (obj instanceof JSONObject) {
                    obj = m6460a((JSONObject) obj, z);
                }
                jSONArray2.put(obj);
                i = i2 + 1;
            } else {
                return jSONArray2;
            }
        }
    }

    /* renamed from: a */
    public static JSONObject m6460a(JSONObject jSONObject, boolean z) {
        Object m6458a;
        if (jSONObject == null) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            JSONArray names = jSONObject.names();
            for (int i = 0; i < names.length(); i++) {
                String string = names.getString(i);
                Object obj = jSONObject.get(string);
                if (obj instanceof JSONObject) {
                    m6458a = m6460a((JSONObject) obj, true);
                } else {
                    m6458a = obj instanceof JSONArray ? m6458a((JSONArray) obj, true) : obj;
                }
                Pair<String, String> m6455a = m6455a(string);
                String str = (String) m6455a.first;
                String str2 = (String) m6455a.second;
                if (z) {
                    if (str != null && str.equals("fbsdk")) {
                        jSONObject2.put(string, m6458a);
                    } else if (str == null || str.equals("og")) {
                        jSONObject2.put(str2, m6458a);
                    } else {
                        jSONObject3.put(str2, m6458a);
                    }
                } else if (str != null && str.equals("fb")) {
                    jSONObject2.put(string, m6458a);
                } else {
                    jSONObject2.put(str2, m6458a);
                }
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put("data", jSONObject3);
            }
            return jSONObject2;
        } catch (JSONException e) {
            throw new C1048h("Failed to create json object from share content");
        }
    }

    /* renamed from: a */
    public static Pair<String, String> m6455a(String str) {
        String str2 = null;
        int indexOf = str.indexOf(58);
        if (indexOf != -1 && str.length() > indexOf + 1) {
            str2 = str.substring(0, indexOf);
            str = str.substring(indexOf + 1);
        }
        return new Pair<>(str2, str);
    }

    /* renamed from: a */
    public static GraphRequest m6457a(AccessToken accessToken, File file, GraphRequest.InterfaceC0995b interfaceC0995b) {
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, EnumC1112q.POST, interfaceC0995b);
    }

    /* renamed from: a */
    public static GraphRequest m6456a(AccessToken accessToken, Uri uri, GraphRequest.InterfaceC0995b interfaceC0995b) {
        if (C1070u.m6109c(uri)) {
            return m6457a(accessToken, new File(uri.getPath()), interfaceC0995b);
        }
        if (!C1070u.m6105b(uri)) {
            throw new C1048h("The image Uri must be either a file:// or content:// Uri");
        }
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(uri, "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, EnumC1112q.POST, interfaceC0995b);
    }
}
