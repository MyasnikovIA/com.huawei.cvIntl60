package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.facebook.internal.c */
/* loaded from: classes.dex */
public class C1052c {

    /* renamed from: a */
    private static final Map<Class<?>, a> f5439a = new HashMap();

    /* renamed from: com.facebook.internal.c$a */
    public interface a {
        /* renamed from: a */
        void mo5936a(Bundle bundle, String str, Object obj);
    }

    static {
        f5439a.put(Boolean.class, new a() { // from class: com.facebook.internal.c.1
            AnonymousClass1() {
            }

            @Override // com.facebook.internal.C1052c.a
            /* renamed from: a */
            public void mo5936a(Bundle bundle, String str, Object obj) {
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            }
        });
        f5439a.put(Integer.class, new a() { // from class: com.facebook.internal.c.2
            AnonymousClass2() {
            }

            @Override // com.facebook.internal.C1052c.a
            /* renamed from: a */
            public void mo5936a(Bundle bundle, String str, Object obj) {
                bundle.putInt(str, ((Integer) obj).intValue());
            }
        });
        f5439a.put(Long.class, new a() { // from class: com.facebook.internal.c.3
            AnonymousClass3() {
            }

            @Override // com.facebook.internal.C1052c.a
            /* renamed from: a */
            public void mo5936a(Bundle bundle, String str, Object obj) {
                bundle.putLong(str, ((Long) obj).longValue());
            }
        });
        f5439a.put(Double.class, new a() { // from class: com.facebook.internal.c.4
            AnonymousClass4() {
            }

            @Override // com.facebook.internal.C1052c.a
            /* renamed from: a */
            public void mo5936a(Bundle bundle, String str, Object obj) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            }
        });
        f5439a.put(String.class, new a() { // from class: com.facebook.internal.c.5
            AnonymousClass5() {
            }

            @Override // com.facebook.internal.C1052c.a
            /* renamed from: a */
            public void mo5936a(Bundle bundle, String str, Object obj) {
                bundle.putString(str, (String) obj);
            }
        });
        f5439a.put(String[].class, new a() { // from class: com.facebook.internal.c.6
            AnonymousClass6() {
            }

            @Override // com.facebook.internal.C1052c.a
            /* renamed from: a */
            public void mo5936a(Bundle bundle, String str, Object obj) {
                throw new IllegalArgumentException("Unexpected type from JSON");
            }
        });
        f5439a.put(JSONArray.class, new a() { // from class: com.facebook.internal.c.7
            AnonymousClass7() {
            }

            @Override // com.facebook.internal.C1052c.a
            /* renamed from: a */
            public void mo5936a(Bundle bundle, String str, Object obj) {
                JSONArray jSONArray = (JSONArray) obj;
                ArrayList<String> arrayList = new ArrayList<>();
                if (jSONArray.length() == 0) {
                    bundle.putStringArrayList(str, arrayList);
                    return;
                }
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < jSONArray.length()) {
                        Object obj2 = jSONArray.get(i2);
                        if (obj2 instanceof String) {
                            arrayList.add((String) obj2);
                            i = i2 + 1;
                        } else {
                            throw new IllegalArgumentException("Unexpected type in an array: " + obj2.getClass());
                        }
                    } else {
                        bundle.putStringArrayList(str, arrayList);
                        return;
                    }
                }
            }
        });
    }

    /* renamed from: com.facebook.internal.c$1 */
    static class AnonymousClass1 implements a {
        AnonymousClass1() {
        }

        @Override // com.facebook.internal.C1052c.a
        /* renamed from: a */
        public void mo5936a(Bundle bundle, String str, Object obj) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.facebook.internal.c$2 */
    static class AnonymousClass2 implements a {
        AnonymousClass2() {
        }

        @Override // com.facebook.internal.C1052c.a
        /* renamed from: a */
        public void mo5936a(Bundle bundle, String str, Object obj) {
            bundle.putInt(str, ((Integer) obj).intValue());
        }
    }

    /* renamed from: com.facebook.internal.c$3 */
    static class AnonymousClass3 implements a {
        AnonymousClass3() {
        }

        @Override // com.facebook.internal.C1052c.a
        /* renamed from: a */
        public void mo5936a(Bundle bundle, String str, Object obj) {
            bundle.putLong(str, ((Long) obj).longValue());
        }
    }

    /* renamed from: com.facebook.internal.c$4 */
    static class AnonymousClass4 implements a {
        AnonymousClass4() {
        }

        @Override // com.facebook.internal.C1052c.a
        /* renamed from: a */
        public void mo5936a(Bundle bundle, String str, Object obj) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        }
    }

    /* renamed from: com.facebook.internal.c$5 */
    static class AnonymousClass5 implements a {
        AnonymousClass5() {
        }

        @Override // com.facebook.internal.C1052c.a
        /* renamed from: a */
        public void mo5936a(Bundle bundle, String str, Object obj) {
            bundle.putString(str, (String) obj);
        }
    }

    /* renamed from: com.facebook.internal.c$6 */
    static class AnonymousClass6 implements a {
        AnonymousClass6() {
        }

        @Override // com.facebook.internal.C1052c.a
        /* renamed from: a */
        public void mo5936a(Bundle bundle, String str, Object obj) {
            throw new IllegalArgumentException("Unexpected type from JSON");
        }
    }

    /* renamed from: com.facebook.internal.c$7 */
    static class AnonymousClass7 implements a {
        AnonymousClass7() {
        }

        @Override // com.facebook.internal.C1052c.a
        /* renamed from: a */
        public void mo5936a(Bundle bundle, String str, Object obj) {
            JSONArray jSONArray = (JSONArray) obj;
            ArrayList<String> arrayList = new ArrayList<>();
            if (jSONArray.length() == 0) {
                bundle.putStringArrayList(str, arrayList);
                return;
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < jSONArray.length()) {
                    Object obj2 = jSONArray.get(i2);
                    if (obj2 instanceof String) {
                        arrayList.add((String) obj2);
                        i = i2 + 1;
                    } else {
                        throw new IllegalArgumentException("Unexpected type in an array: " + obj2.getClass());
                    }
                } else {
                    bundle.putStringArrayList(str, arrayList);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public static Bundle m5935a(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj != null && obj != JSONObject.NULL) {
                if (obj instanceof JSONObject) {
                    bundle.putBundle(next, m5935a((JSONObject) obj));
                } else {
                    a aVar = f5439a.get(obj.getClass());
                    if (aVar == null) {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                    aVar.mo5936a(bundle, next, obj);
                }
            }
        }
        return bundle;
    }
}
