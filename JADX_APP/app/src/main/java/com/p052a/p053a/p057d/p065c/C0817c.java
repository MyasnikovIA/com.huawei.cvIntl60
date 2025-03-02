package com.p052a.p053a.p057d.p065c;

import android.util.Log;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.InterfaceC0839d;
import com.p052a.p053a.p081j.C0945a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: com.a.a.d.c.c */
/* loaded from: classes.dex */
public class C0817c implements InterfaceC0839d<ByteBuffer> {
    @Override // com.p052a.p053a.p057d.InterfaceC0839d
    /* renamed from: a */
    public boolean mo4918a(ByteBuffer byteBuffer, File file, C0886j c0886j) {
        try {
            C0945a.m5373a(byteBuffer, file);
            return true;
        } catch (IOException e) {
            if (!Log.isLoggable("ByteBufferEncoder", 3)) {
                return false;
            }
            Log.d("ByteBufferEncoder", "Failed to write data", e);
            return false;
        }
    }
}
