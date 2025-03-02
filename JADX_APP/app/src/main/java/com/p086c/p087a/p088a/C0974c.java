package com.p086c.p087a.p088a;

import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: com.c.a.a.c */
/* loaded from: classes.dex */
public class C0974c extends AbstractC0976e {

    /* renamed from: a */
    Logger f5008a;

    public C0974c(String str) {
        this.f5008a = Logger.getLogger(str);
    }

    @Override // com.p086c.p087a.p088a.AbstractC0976e
    /* renamed from: a */
    public void mo5475a(String str) {
        this.f5008a.log(Level.FINE, str);
    }

    @Override // com.p086c.p087a.p088a.AbstractC0976e
    /* renamed from: b */
    public void mo5476b(String str) {
        this.f5008a.log(Level.SEVERE, str);
    }
}
