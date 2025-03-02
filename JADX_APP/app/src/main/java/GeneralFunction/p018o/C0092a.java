package GeneralFunction.p018o;

import GeneralFunction.C0052d;

/* renamed from: GeneralFunction.o.a */
/* loaded from: classes.dex */
public class C0092a {
    /* renamed from: a */
    private void m901a(String str, int i) {
        C0052d.m465a("SystemDump", str, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m902a(int r6) {
        /*
            r5 = this;
            r4 = 0
            java.lang.String r0 = "dumpTask S"
            r5.m901a(r0, r4)
            r1 = 0
            java.lang.Runtime r0 = java.lang.Runtime.getRuntime()     // Catch: java.io.IOException -> L54
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L54
            r2.<init>()     // Catch: java.io.IOException -> L54
            java.lang.String r3 = "ps -t "
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.io.IOException -> L54
            java.lang.StringBuilder r2 = r2.append(r6)     // Catch: java.io.IOException -> L54
            java.lang.String r2 = r2.toString()     // Catch: java.io.IOException -> L54
            java.lang.Process r2 = r0.exec(r2)     // Catch: java.io.IOException -> L54
            if (r2 == 0) goto L58
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.io.IOException -> L54
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L54
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.io.IOException -> L54
            r3.<init>(r2)     // Catch: java.io.IOException -> L54
            r0.<init>(r3)     // Catch: java.io.IOException -> L54
        L32:
            java.lang.String r1 = r0.readLine()     // Catch: java.io.IOException -> L3d
            if (r1 == 0) goto L44
            r2 = 0
            r5.m901a(r1, r2)     // Catch: java.io.IOException -> L3d
            goto L32
        L3d:
            r1 = move-exception
            r2 = r1
            r3 = r0
        L40:
            r2.printStackTrace()
            r0 = r3
        L44:
            if (r0 == 0) goto L49
            r0.close()     // Catch: java.io.IOException -> L4f
        L49:
            java.lang.String r0 = "dumpTask E"
            r5.m901a(r0, r4)
            return
        L4f:
            r0 = move-exception
            r0.printStackTrace()
            goto L49
        L54:
            r0 = move-exception
            r2 = r0
            r3 = r1
            goto L40
        L58:
            r0 = r1
            goto L44
        */
        throw new UnsupportedOperationException("Method not decompiled: GeneralFunction.p018o.C0092a.m902a(int):void");
    }
}
