package com.p086c.p087a.p088a;

import android.util.Log;

/* renamed from: com.c.a.a.a */
/* loaded from: classes.dex */
public class C0972a extends AbstractC0976e {

    /* renamed from: a */
    String f5007a;

    public C0972a(String str) {
        this.f5007a = str;
    }

    @Override // com.p086c.p087a.p088a.AbstractC0976e
    /* renamed from: a */
    public void mo5475a(String str) {
        Log.d("isoparser", String.valueOf(this.f5007a) + ":" + str);
    }

    @Override // com.p086c.p087a.p088a.AbstractC0976e
    /* renamed from: b */
    public void mo5476b(String str) {
        Log.e("isoparser", String.valueOf(this.f5007a) + ":" + str);
    }
}
