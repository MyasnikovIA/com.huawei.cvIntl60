package com.facebook.p089a.p092b;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.C1074k;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.a.b.g */
/* loaded from: classes.dex */
class C1022g {

    /* renamed from: a */
    private static final String f5267a = C1022g.class.getCanonicalName();

    /* renamed from: b */
    private static final HashMap<String, Method> f5268b = new HashMap<>();

    /* renamed from: c */
    private static final HashMap<String, Class<?>> f5269c = new HashMap<>();

    /* renamed from: d */
    private static final String f5270d = C1074k.m6181f().getPackageName();

    /* renamed from: e */
    private static final SharedPreferences f5271e = C1074k.m6181f().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);

    /* renamed from: f */
    private static final SharedPreferences f5272f = C1074k.m6181f().getSharedPreferences("com.facebook.internal.PURCHASE", 0);

    /* renamed from: g */
    private static final SharedPreferences f5273g = C1074k.m6181f().getSharedPreferences("com.facebook.internal.PURCHASE_SUBS", 0);

    C1022g() {
    }

    @Nullable
    /* renamed from: a */
    public static Object m5769a(Context context, IBinder iBinder) {
        return m5770a(context, "com.android.vending.billing.IInAppBillingService$Stub", "asInterface", null, new Object[]{iBinder});
    }

    /* renamed from: a */
    public static Map<String, String> m5773a(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        Map<String, String> m5774a = m5774a(arrayList);
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!m5774a.containsKey(next)) {
                arrayList2.add(next);
            }
        }
        m5774a.putAll(m5780b(context, arrayList2, obj, z));
        return m5774a;
    }

    /* renamed from: b */
    private static Map<String, String> m5780b(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        HashMap hashMap = new HashMap();
        if (obj == null || arrayList.isEmpty()) {
            return hashMap;
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
        Object[] objArr = new Object[4];
        objArr[0] = 3;
        objArr[1] = f5270d;
        objArr[2] = z ? "subs" : "inapp";
        objArr[3] = bundle;
        Object m5770a = m5770a(context, "com.android.vending.billing.IInAppBillingService", "getSkuDetails", obj, objArr);
        if (m5770a != null) {
            Bundle bundle2 = (Bundle) m5770a;
            if (bundle2.getInt("RESPONSE_CODE") == 0) {
                ArrayList<String> stringArrayList = bundle2.getStringArrayList("DETAILS_LIST");
                if (stringArrayList != null && arrayList.size() == stringArrayList.size()) {
                    for (int i = 0; i < arrayList.size(); i++) {
                        hashMap.put(arrayList.get(i), stringArrayList.get(i));
                    }
                }
                m5776a(hashMap);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    private static Map<String, String> m5774a(ArrayList<String> arrayList) {
        HashMap hashMap = new HashMap();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            String string = f5271e.getString(next, null);
            if (string != null) {
                String[] split = string.split(";", 2);
                if (currentTimeMillis - Long.parseLong(split[0]) < 43200) {
                    hashMap.put(next, split[1]);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    private static void m5776a(Map<String, String> map) {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        SharedPreferences.Editor edit = f5271e.edit();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            edit.putString(entry.getKey(), currentTimeMillis + ";" + entry.getValue());
        }
        edit.apply();
    }

    /* renamed from: a */
    private static Boolean m5767a(Context context, Object obj, String str) {
        if (obj == null) {
            return false;
        }
        Object m5770a = m5770a(context, "com.android.vending.billing.IInAppBillingService", "isBillingSupported", obj, new Object[]{3, f5270d, str});
        return Boolean.valueOf(m5770a != null && ((Integer) m5770a).intValue() == 0);
    }

    /* renamed from: a */
    public static ArrayList<String> m5772a(Context context, Object obj) {
        return m5779b(m5778b(context, obj, "inapp"));
    }

    /* renamed from: b */
    public static ArrayList<String> m5777b(Context context, Object obj) {
        ArrayList<String> arrayList = new ArrayList<>();
        Map<String, ?> all = f5273g.getAll();
        if (all.isEmpty()) {
            return arrayList;
        }
        ArrayList<String> m5778b = m5778b(context, obj, "subs");
        HashSet hashSet = new HashSet();
        Iterator<String> it = m5778b.iterator();
        while (it.hasNext()) {
            try {
                hashSet.add(new JSONObject(it.next()).getString("productId"));
            } catch (JSONException e) {
                Log.e(f5267a, "Error parsing purchase json", e);
            }
        }
        HashSet<String> hashSet2 = new HashSet();
        Iterator<Map.Entry<String, ?>> it2 = all.entrySet().iterator();
        while (it2.hasNext()) {
            String key = it2.next().getKey();
            if (!hashSet.contains(key)) {
                hashSet2.add(key);
            }
        }
        SharedPreferences.Editor edit = f5273g.edit();
        for (String str : hashSet2) {
            String string = f5273g.getString(str, "");
            edit.remove(str);
            if (!string.isEmpty()) {
                arrayList.add(f5273g.getString(str, ""));
            }
        }
        edit.apply();
        return arrayList;
    }

    /* renamed from: c */
    public static Map<String, EnumC1027l> m5782c(Context context, Object obj) {
        HashMap hashMap = new HashMap();
        Iterator<String> it = m5778b(context, obj, "subs").iterator();
        while (it.hasNext()) {
            String next = it.next();
            EnumC1027l m5766a = m5766a(next);
            if (m5766a != EnumC1027l.DUPLICATED && m5766a != EnumC1027l.UNKNOWN) {
                hashMap.put(next, m5766a);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    private static EnumC1027l m5766a(String str) {
        EnumC1027l enumC1027l = null;
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("productId");
            String string2 = f5273g.getString(string, "");
            JSONObject jSONObject2 = string2.isEmpty() ? new JSONObject() : new JSONObject(string2);
            if (!jSONObject2.optString("purchaseToken").equals(jSONObject.get("purchaseToken"))) {
                enumC1027l = currentTimeMillis - (jSONObject.getLong("purchaseTime") / 1000) < 43200 ? EnumC1027l.NEW : EnumC1027l.HEARTBEAT;
            }
            if (enumC1027l == null && !string2.isEmpty()) {
                boolean z = jSONObject2.getBoolean("autoRenewing");
                boolean z2 = jSONObject.getBoolean("autoRenewing");
                if (!z2 && z) {
                    enumC1027l = EnumC1027l.CANCEL;
                } else if (!z && z2) {
                    enumC1027l = EnumC1027l.RESTORE;
                }
            }
            if (enumC1027l == null && !string2.isEmpty()) {
                if (currentTimeMillis - jSONObject2.getLong("LAST_LOGGED_TIME_SEC") > 86400) {
                    enumC1027l = EnumC1027l.HEARTBEAT;
                } else {
                    enumC1027l = EnumC1027l.DUPLICATED;
                }
            }
            if (enumC1027l != EnumC1027l.DUPLICATED) {
                jSONObject.put("LAST_LOGGED_TIME_SEC", currentTimeMillis);
                f5273g.edit().putString(string, jSONObject.toString()).apply();
                return enumC1027l;
            }
            return enumC1027l;
        } catch (JSONException e) {
            Log.e(f5267a, "parsing purchase failure: ", e);
            return EnumC1027l.UNKNOWN;
        }
    }

    /* renamed from: b */
    private static ArrayList<String> m5778b(Context context, Object obj, String str) {
        int i;
        ArrayList<String> arrayList = new ArrayList<>();
        if (obj == null) {
            return arrayList;
        }
        if (m5767a(context, obj, str).booleanValue()) {
            int i2 = 0;
            String str2 = null;
            while (true) {
                Object m5770a = m5770a(context, "com.android.vending.billing.IInAppBillingService", "getPurchases", obj, new Object[]{3, f5270d, str, str2});
                if (m5770a != null) {
                    Bundle bundle = (Bundle) m5770a;
                    if (bundle.getInt("RESPONSE_CODE") == 0) {
                        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        if (stringArrayList == null) {
                            break;
                        }
                        int size = i2 + stringArrayList.size();
                        arrayList.addAll(stringArrayList);
                        str2 = bundle.getString("INAPP_CONTINUATION_TOKEN");
                        i = size;
                        if (i < 30 || str2 == null) {
                            break;
                            break;
                        }
                        i2 = i;
                    }
                }
                i = i2;
                str2 = null;
                if (i < 30) {
                    break;
                }
                i2 = i;
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public static ArrayList<String> m5783d(Context context, Object obj) {
        Class<?> m5768a;
        ArrayList<String> arrayList = new ArrayList<>();
        return (obj == null || (m5768a = m5768a(context, "com.android.vending.billing.IInAppBillingService")) == null || m5771a(m5768a, "getPurchaseHistory") == null) ? arrayList : m5779b(m5781c(context, obj, "inapp"));
    }

    /* renamed from: c */
    private static ArrayList<String> m5781c(Context context, Object obj, String str) {
        int i;
        int i2;
        Boolean bool;
        ArrayList<String> arrayList = new ArrayList<>();
        if (m5767a(context, obj, str).booleanValue()) {
            int i3 = 0;
            Boolean bool2 = false;
            String str2 = null;
            while (true) {
                String str3 = null;
                Object m5770a = m5770a(context, "com.android.vending.billing.IInAppBillingService", "getPurchaseHistory", obj, new Object[]{6, f5270d, str, str2, new Bundle()});
                if (m5770a != null) {
                    long currentTimeMillis = System.currentTimeMillis() / 1000;
                    Bundle bundle = (Bundle) m5770a;
                    if (bundle.getInt("RESPONSE_CODE") == 0) {
                        Iterator<String> it = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST").iterator();
                        while (true) {
                            i2 = i3;
                            if (!it.hasNext()) {
                                bool = bool2;
                                break;
                            }
                            String next = it.next();
                            try {
                            } catch (JSONException e) {
                                Log.e(f5267a, "parsing purchase failure: ", e);
                                i3 = i2;
                            }
                            if (currentTimeMillis - (new JSONObject(next).getLong("purchaseTime") / 1000) > 1200) {
                                bool = true;
                                break;
                            }
                            arrayList.add(next);
                            i3 = i2 + 1;
                        }
                        str3 = bundle.getString("INAPP_CONTINUATION_TOKEN");
                        bool2 = bool;
                        i = i2;
                        if (i < 30 || str3 == null || bool2.booleanValue()) {
                            break;
                            break;
                        }
                        i3 = i;
                        str2 = str3;
                    }
                }
                i = i3;
                if (i < 30) {
                    break;
                }
                i3 = i;
                str2 = str3;
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    private static ArrayList<String> m5779b(ArrayList<String> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        SharedPreferences.Editor edit = f5272f.edit();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            try {
                JSONObject jSONObject = new JSONObject(next);
                String string = jSONObject.getString("productId");
                long j = jSONObject.getLong("purchaseTime");
                String string2 = jSONObject.getString("purchaseToken");
                if (currentTimeMillis - (j / 1000) <= 43200 && !f5272f.getString(string, "").equals(string2)) {
                    edit.putString(string, string2);
                    arrayList2.add(next);
                }
            } catch (JSONException e) {
                Log.e(f5267a, "parsing purchase failure: ", e);
            }
        }
        edit.apply();
        return arrayList2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    /* renamed from: a */
    private static Method m5771a(Class<?> cls, String str) {
        boolean z = false;
        Method method = f5268b.get(str);
        if (method == null) {
            Class<?>[] clsArr = null;
            try {
                switch (str.hashCode()) {
                    case -1801122596:
                        if (str.equals("getPurchases")) {
                            z = 3;
                            break;
                        }
                        z = -1;
                        break;
                    case -1450694211:
                        if (str.equals("isBillingSupported")) {
                            z = 2;
                            break;
                        }
                        z = -1;
                        break;
                    case -1123215065:
                        if (str.equals("asInterface")) {
                            break;
                        }
                        z = -1;
                        break;
                    case -594356707:
                        if (str.equals("getPurchaseHistory")) {
                            z = 4;
                            break;
                        }
                        z = -1;
                        break;
                    case -573310373:
                        if (str.equals("getSkuDetails")) {
                            z = true;
                            break;
                        }
                        z = -1;
                        break;
                    default:
                        z = -1;
                        break;
                }
                switch (z) {
                    case false:
                        clsArr = new Class[]{IBinder.class};
                        break;
                    case true:
                        clsArr = new Class[]{Integer.TYPE, String.class, String.class, Bundle.class};
                        break;
                    case true:
                        clsArr = new Class[]{Integer.TYPE, String.class, String.class};
                        break;
                    case true:
                        clsArr = new Class[]{Integer.TYPE, String.class, String.class, String.class};
                        break;
                    case true:
                        clsArr = new Class[]{Integer.TYPE, String.class, String.class, String.class, Bundle.class};
                        break;
                }
                method = cls.getDeclaredMethod(str, clsArr);
                f5268b.put(str, method);
                return method;
            } catch (NoSuchMethodException e) {
                Log.e(f5267a, cls.getName() + "." + str + " method not found", e);
                return method;
            }
        }
        return method;
    }

    @Nullable
    /* renamed from: a */
    private static Class<?> m5768a(Context context, String str) {
        Class<?> cls = f5269c.get(str);
        if (cls == null) {
            try {
                cls = context.getClassLoader().loadClass(str);
                f5269c.put(str, cls);
                return cls;
            } catch (ClassNotFoundException e) {
                Log.e(f5267a, str + " is not available, please add " + str + " to the project.", e);
                return cls;
            }
        }
        return cls;
    }

    @Nullable
    /* renamed from: a */
    private static Object m5770a(Context context, String str, String str2, Object obj, Object[] objArr) {
        Method m5771a;
        Class<?> m5768a = m5768a(context, str);
        if (m5768a == null || (m5771a = m5771a(m5768a, str2)) == null) {
            return null;
        }
        if (obj != null) {
            obj = m5768a.cast(obj);
        }
        try {
            return m5771a.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            Log.e(f5267a, "Illegal access to method " + m5768a.getName() + "." + m5771a.getName(), e);
            return null;
        } catch (InvocationTargetException e2) {
            Log.e(f5267a, "Invocation target exception in " + m5768a.getName() + "." + m5771a.getName(), e2);
            return null;
        }
    }

    /* renamed from: a */
    public static void m5775a() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        long j = f5271e.getLong("LAST_CLEARED_TIME", 0L);
        if (j == 0) {
            f5271e.edit().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
        } else if (currentTimeMillis - j > 604800) {
            f5271e.edit().clear().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
        }
    }
}
