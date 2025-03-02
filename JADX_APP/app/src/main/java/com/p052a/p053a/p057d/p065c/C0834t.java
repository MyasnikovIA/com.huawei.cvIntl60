package com.p052a.p053a.p057d.p065c;

import com.p052a.p053a.p057d.InterfaceC0839d;
import com.p052a.p053a.p057d.p060b.p061a.InterfaceC0762b;
import java.io.InputStream;

/* renamed from: com.a.a.d.c.t */
/* loaded from: classes.dex */
public class C0834t implements InterfaceC0839d<InputStream> {

    /* renamed from: a */
    private final InterfaceC0762b f4585a;

    public C0834t(InterfaceC0762b interfaceC0762b) {
        this.f4585a = interfaceC0762b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Class, java.lang.Class<byte[]>] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.OutputStream] */
    @Override // com.p052a.p053a.p057d.InterfaceC0839d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean mo4918a(java.io.InputStream r7, java.io.File r8, com.p052a.p053a.p057d.C0886j r9) {
        /*
            r6 = this;
            r1 = 0
            com.a.a.d.b.a.b r0 = r6.f4585a
            r2 = 65536(0x10000, float:9.1835E-41)
            java.lang.Class<byte[]> r3 = byte[].class
            java.lang.Object r0 = r0.mo4657a(r2, r3)
            byte[] r0 = (byte[]) r0
            r4 = 0
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L50 java.io.IOException -> L67
            r3.<init>(r8)     // Catch: java.lang.Throwable -> L50 java.io.IOException -> L67
        L13:
            int r2 = r7.read(r0)     // Catch: java.io.IOException -> L1f java.lang.Throwable -> L65
            r4 = -1
            if (r2 == r4) goto L3e
            r4 = 0
            r3.write(r0, r4, r2)     // Catch: java.io.IOException -> L1f java.lang.Throwable -> L65
            goto L13
        L1f:
            r2 = move-exception
        L20:
            java.lang.String r4 = "StreamEncoder"
            r5 = 3
            boolean r4 = android.util.Log.isLoggable(r4, r5)     // Catch: java.lang.Throwable -> L65
            if (r4 == 0) goto L30
            java.lang.String r4 = "StreamEncoder"
            java.lang.String r5 = "Failed to encode data onto the OutputStream"
            android.util.Log.d(r4, r5, r2)     // Catch: java.lang.Throwable -> L65
        L30:
            if (r3 == 0) goto L35
            r3.close()     // Catch: java.io.IOException -> L61
        L35:
            com.a.a.d.b.a.b r2 = r6.f4585a
            java.lang.Class<byte[]> r3 = byte[].class
            r2.mo4660a(r0, r3)
            r0 = r1
        L3d:
            return r0
        L3e:
            r3.close()     // Catch: java.io.IOException -> L1f java.lang.Throwable -> L65
            r1 = 1
            if (r3 == 0) goto L47
            r3.close()     // Catch: java.io.IOException -> L5f
        L47:
            com.a.a.d.b.a.b r2 = r6.f4585a
            java.lang.Class<byte[]> r3 = byte[].class
            r2.mo4660a(r0, r3)
            r0 = r1
            goto L3d
        L50:
            r1 = move-exception
            r3 = r4
        L52:
            if (r3 == 0) goto L57
            r3.close()     // Catch: java.io.IOException -> L63
        L57:
            com.a.a.d.b.a.b r2 = r6.f4585a
            java.lang.Class<byte[]> r3 = byte[].class
            r2.mo4660a(r0, r3)
            throw r1
        L5f:
            r2 = move-exception
            goto L47
        L61:
            r2 = move-exception
            goto L35
        L63:
            r2 = move-exception
            goto L57
        L65:
            r1 = move-exception
            goto L52
        L67:
            r2 = move-exception
            r3 = r4
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p052a.p053a.p057d.p065c.C0834t.mo4918a(java.io.InputStream, java.io.File, com.a.a.d.j):boolean");
    }
}
