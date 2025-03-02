package com.p052a.p053a.p057d.p067d.p072e;

import android.util.Log;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.EnumC0809c;
import com.p052a.p053a.p057d.InterfaceC0888l;
import com.p052a.p053a.p057d.p060b.InterfaceC0804s;
import com.p052a.p053a.p081j.C0945a;
import java.io.File;
import java.io.IOException;

/* renamed from: com.a.a.d.d.e.d */
/* loaded from: classes.dex */
public class C0869d implements InterfaceC0888l<C0868c> {
    @Override // com.p052a.p053a.p057d.InterfaceC0888l
    /* renamed from: a */
    public EnumC0809c mo4971a(C0886j c0886j) {
        return EnumC0809c.SOURCE;
    }

    @Override // com.p052a.p053a.p057d.InterfaceC0839d
    /* renamed from: a */
    public boolean mo4918a(InterfaceC0804s<C0868c> interfaceC0804s, File file, C0886j c0886j) {
        try {
            C0945a.m5373a(interfaceC0804s.mo4880c().m5066c(), file);
            return true;
        } catch (IOException e) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e);
            }
            return false;
        }
    }
}
