package com.facebook.share.internal;

import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.facebook.share.internal.a */
/* loaded from: classes.dex */
public final class C1120a {

    /* renamed from: com.facebook.share.internal.a$a */
    public interface a {
        /* renamed from: a */
        JSONObject mo6454a(SharePhoto sharePhoto);
    }

    /* renamed from: a */
    public static JSONObject m6452a(ShareOpenGraphAction shareOpenGraphAction, a aVar) {
        JSONObject jSONObject = new JSONObject();
        for (String str : shareOpenGraphAction.m6532c()) {
            jSONObject.put(str, m6450a(shareOpenGraphAction.m6529a(str), aVar));
        }
        return jSONObject;
    }

    /* renamed from: a */
    private static JSONObject m6453a(ShareOpenGraphObject shareOpenGraphObject, a aVar) {
        JSONObject jSONObject = new JSONObject();
        for (String str : shareOpenGraphObject.m6532c()) {
            jSONObject.put(str, m6450a(shareOpenGraphObject.m6529a(str), aVar));
        }
        return jSONObject;
    }

    /* renamed from: a */
    private static JSONArray m6451a(List list, a aVar) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(m6450a(it.next(), aVar));
        }
        return jSONArray;
    }

    /* renamed from: a */
    public static Object m6450a(@Nullable Object obj, a aVar) {
        if (obj == null) {
            return JSONObject.NULL;
        }
        if (!(obj instanceof String) && !(obj instanceof Boolean) && !(obj instanceof Double) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Long)) {
            if (obj instanceof SharePhoto) {
                if (aVar != null) {
                    return aVar.mo6454a((SharePhoto) obj);
                }
                return null;
            }
            if (obj instanceof ShareOpenGraphObject) {
                return m6453a((ShareOpenGraphObject) obj, aVar);
            }
            if (obj instanceof List) {
                return m6451a((List) obj, aVar);
            }
            throw new IllegalArgumentException("Invalid object found for JSON serialization: " + obj.toString());
        }
        return obj;
    }
}
