package com.p052a.p053a.p054a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.a.a.a.a */
/* loaded from: classes.dex */
public final class C0726a implements Closeable {

    /* renamed from: b */
    private final File f3968b;

    /* renamed from: c */
    private final File f3969c;

    /* renamed from: d */
    private final File f3970d;

    /* renamed from: e */
    private final File f3971e;

    /* renamed from: f */
    private final int f3972f;

    /* renamed from: g */
    private long f3973g;

    /* renamed from: h */
    private final int f3974h;

    /* renamed from: j */
    private Writer f3976j;

    /* renamed from: l */
    private int f3978l;

    /* renamed from: i */
    private long f3975i = 0;

    /* renamed from: k */
    private final LinkedHashMap<String, c> f3977k = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: m */
    private long f3979m = 0;

    /* renamed from: a */
    final ThreadPoolExecutor f3967a = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a());

    /* renamed from: n */
    private final Callable<Void> f3980n = new Callable<Void>() { // from class: com.a.a.a.a.1
        AnonymousClass1() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            synchronized (C0726a.this) {
                if (C0726a.this.f3976j != null) {
                    C0726a.this.m4471g();
                    if (C0726a.this.m4468e()) {
                        C0726a.this.m4464d();
                        C0726a.this.f3978l = 0;
                    }
                }
            }
            return null;
        }
    };

    /* renamed from: com.a.a.a.a$1 */
    class AnonymousClass1 implements Callable<Void> {
        AnonymousClass1() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            synchronized (C0726a.this) {
                if (C0726a.this.f3976j != null) {
                    C0726a.this.m4471g();
                    if (C0726a.this.m4468e()) {
                        C0726a.this.m4464d();
                        C0726a.this.f3978l = 0;
                    }
                }
            }
            return null;
        }
    }

    private C0726a(File file, int i, int i2, long j) {
        this.f3968b = file;
        this.f3972f = i;
        this.f3969c = new File(file, "journal");
        this.f3970d = new File(file, "journal.tmp");
        this.f3971e = new File(file, "journal.bkp");
        this.f3974h = i2;
        this.f3973g = j;
    }

    /* renamed from: a */
    public static C0726a m4454a(File file, int i, int i2, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                m4459a(file2, file3, false);
            }
        }
        C0726a c0726a = new C0726a(file, i, i2, j);
        if (c0726a.f3969c.exists()) {
            try {
                c0726a.m4460b();
                c0726a.m4462c();
                return c0726a;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                c0726a.m4473a();
            }
        }
        file.mkdirs();
        C0726a c0726a2 = new C0726a(file, i, i2, j);
        c0726a2.m4464d();
        return c0726a2;
    }

    /* renamed from: b */
    private void m4460b() {
        C0727b c0727b = new C0727b(new FileInputStream(this.f3969c), C0728c.f4005a);
        try {
            String m4500a = c0727b.m4500a();
            String m4500a2 = c0727b.m4500a();
            String m4500a3 = c0727b.m4500a();
            String m4500a4 = c0727b.m4500a();
            String m4500a5 = c0727b.m4500a();
            if (!"libcore.io.DiskLruCache".equals(m4500a) || !"1".equals(m4500a2) || !Integer.toString(this.f3972f).equals(m4500a3) || !Integer.toString(this.f3974h).equals(m4500a4) || !"".equals(m4500a5)) {
                throw new IOException("unexpected journal header: [" + m4500a + ", " + m4500a2 + ", " + m4500a4 + ", " + m4500a5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m4466d(c0727b.m4500a());
                    i++;
                } catch (EOFException e) {
                    this.f3978l = i - this.f3977k.size();
                    if (c0727b.m4501b()) {
                        m4464d();
                    } else {
                        this.f3976j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3969c, true), C0728c.f4005a));
                    }
                    C0728c.m4502a(c0727b);
                    return;
                }
            }
        } catch (Throwable th) {
            C0728c.m4502a(c0727b);
            throw th;
        }
    }

    /* renamed from: d */
    private void m4466d(String str) {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            String substring2 = str.substring(i);
            if (indexOf == "REMOVE".length() && str.startsWith("REMOVE")) {
                this.f3977k.remove(substring2);
                return;
            }
            substring = substring2;
        } else {
            substring = str.substring(i, indexOf2);
        }
        c cVar = this.f3977k.get(substring);
        if (cVar == null) {
            cVar = new c(substring);
            this.f3977k.put(substring, cVar);
        }
        if (indexOf2 != -1 && indexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            cVar.f3991f = true;
            cVar.f3992g = null;
            cVar.m4487a(split);
            return;
        }
        if (indexOf2 != -1 || indexOf != "DIRTY".length() || !str.startsWith("DIRTY")) {
            if (indexOf2 != -1 || indexOf != "READ".length() || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
            return;
        }
        cVar.f3992g = new b(cVar);
    }

    /* renamed from: c */
    private void m4462c() {
        m4458a(this.f3970d);
        Iterator<c> it = this.f3977k.values().iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next.f3992g == null) {
                for (int i = 0; i < this.f3974h; i++) {
                    this.f3975i += next.f3990e[i];
                }
            } else {
                next.f3992g = null;
                for (int i2 = 0; i2 < this.f3974h; i2++) {
                    m4458a(next.m4494a(i2));
                    m4458a(next.m4496b(i2));
                }
                it.remove();
            }
        }
    }

    /* renamed from: d */
    public synchronized void m4464d() {
        if (this.f3976j != null) {
            this.f3976j.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3970d), C0728c.f4005a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f3972f));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f3974h));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (c cVar : this.f3977k.values()) {
                if (cVar.f3992g != null) {
                    bufferedWriter.write("DIRTY " + cVar.f3989d + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + cVar.f3989d + cVar.m4495a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f3969c.exists()) {
                m4459a(this.f3969c, this.f3971e, true);
            }
            m4459a(this.f3970d, this.f3969c, false);
            this.f3971e.delete();
            this.f3976j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3969c, true), C0728c.f4005a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    /* renamed from: a */
    private static void m4458a(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: a */
    private static void m4459a(File file, File file2, boolean z) {
        if (z) {
            m4458a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0028, code lost:
    
        r9.f3978l++;
        r9.f3976j.append((java.lang.CharSequence) "READ");
        r9.f3976j.append(' ');
        r9.f3976j.append((java.lang.CharSequence) r10);
        r9.f3976j.append('\n');
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
    
        if (m4468e() == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004e, code lost:
    
        r9.f3967a.submit(r9.f3980n);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
    
        r1 = new com.p052a.p053a.p054a.C0726a.d(r10, r0.f3993h, r0.f3986a, r0.f3990e);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized com.p052a.p053a.p054a.C0726a.d m4472a(java.lang.String r10) {
        /*
            r9 = this;
            r1 = 0
            monitor-enter(r9)
            r9.m4470f()     // Catch: java.lang.Throwable -> L68
            java.util.LinkedHashMap<java.lang.String, com.a.a.a.a$c> r0 = r9.f3977k     // Catch: java.lang.Throwable -> L68
            java.lang.Object r0 = r0.get(r10)     // Catch: java.lang.Throwable -> L68
            com.a.a.a.a$c r0 = (com.p052a.p053a.p054a.C0726a.c) r0     // Catch: java.lang.Throwable -> L68
            if (r0 != 0) goto L11
        Lf:
            monitor-exit(r9)
            return r1
        L11:
            boolean r2 = com.p052a.p053a.p054a.C0726a.c.m4492d(r0)     // Catch: java.lang.Throwable -> L68
            if (r2 == 0) goto Lf
            java.io.File[] r3 = r0.f3986a     // Catch: java.lang.Throwable -> L68
            int r4 = r3.length     // Catch: java.lang.Throwable -> L68
            r2 = 0
        L1b:
            if (r2 >= r4) goto L28
            r5 = r3[r2]     // Catch: java.lang.Throwable -> L68
            boolean r5 = r5.exists()     // Catch: java.lang.Throwable -> L68
            if (r5 == 0) goto Lf
            int r2 = r2 + 1
            goto L1b
        L28:
            int r1 = r9.f3978l     // Catch: java.lang.Throwable -> L68
            int r1 = r1 + 1
            r9.f3978l = r1     // Catch: java.lang.Throwable -> L68
            java.io.Writer r1 = r9.f3976j     // Catch: java.lang.Throwable -> L68
            java.lang.String r2 = "READ"
            r1.append(r2)     // Catch: java.lang.Throwable -> L68
            java.io.Writer r1 = r9.f3976j     // Catch: java.lang.Throwable -> L68
            r2 = 32
            r1.append(r2)     // Catch: java.lang.Throwable -> L68
            java.io.Writer r1 = r9.f3976j     // Catch: java.lang.Throwable -> L68
            r1.append(r10)     // Catch: java.lang.Throwable -> L68
            java.io.Writer r1 = r9.f3976j     // Catch: java.lang.Throwable -> L68
            r2 = 10
            r1.append(r2)     // Catch: java.lang.Throwable -> L68
            boolean r1 = r9.m4468e()     // Catch: java.lang.Throwable -> L68
            if (r1 == 0) goto L55
            java.util.concurrent.ThreadPoolExecutor r1 = r9.f3967a     // Catch: java.lang.Throwable -> L68
            java.util.concurrent.Callable<java.lang.Void> r2 = r9.f3980n     // Catch: java.lang.Throwable -> L68
            r1.submit(r2)     // Catch: java.lang.Throwable -> L68
        L55:
            com.a.a.a.a$d r1 = new com.a.a.a.a$d     // Catch: java.lang.Throwable -> L68
            long r4 = com.p052a.p053a.p054a.C0726a.c.m4493e(r0)     // Catch: java.lang.Throwable -> L68
            java.io.File[] r6 = r0.f3986a     // Catch: java.lang.Throwable -> L68
            long[] r7 = com.p052a.p053a.p054a.C0726a.c.m4490b(r0)     // Catch: java.lang.Throwable -> L68
            r8 = 0
            r2 = r9
            r3 = r10
            r1.<init>(r3, r4, r6, r7)     // Catch: java.lang.Throwable -> L68
            goto Lf
        L68:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p052a.p053a.p054a.C0726a.m4472a(java.lang.String):com.a.a.a.a$d");
    }

    /* renamed from: b */
    public b m4474b(String str) {
        return m4453a(str, -1L);
    }

    /* renamed from: a */
    private synchronized b m4453a(String str, long j) {
        c cVar;
        b bVar;
        m4470f();
        c cVar2 = this.f3977k.get(str);
        if (j == -1 || (cVar2 != null && cVar2.f3993h == j)) {
            if (cVar2 == null) {
                c cVar3 = new c(str);
                this.f3977k.put(str, cVar3);
                cVar = cVar3;
            } else if (cVar2.f3992g != null) {
                bVar = null;
            } else {
                cVar = cVar2;
            }
            bVar = new b(cVar);
            cVar.f3992g = bVar;
            this.f3976j.append((CharSequence) "DIRTY");
            this.f3976j.append(' ');
            this.f3976j.append((CharSequence) str);
            this.f3976j.append('\n');
            this.f3976j.flush();
        } else {
            bVar = null;
        }
        return bVar;
    }

    /* renamed from: a */
    public synchronized void m4456a(b bVar, boolean z) {
        synchronized (this) {
            c cVar = bVar.f3983b;
            if (cVar.f3992g != bVar) {
                throw new IllegalStateException();
            }
            if (z && !cVar.f3991f) {
                for (int i = 0; i < this.f3974h; i++) {
                    if (!bVar.f3984c[i]) {
                        bVar.m4481b();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                    if (!cVar.m4496b(i).exists()) {
                        bVar.m4481b();
                        break;
                    }
                }
            }
            for (int i2 = 0; i2 < this.f3974h; i2++) {
                File m4496b = cVar.m4496b(i2);
                if (z) {
                    if (m4496b.exists()) {
                        File m4494a = cVar.m4494a(i2);
                        m4496b.renameTo(m4494a);
                        long j = cVar.f3990e[i2];
                        long length = m4494a.length();
                        cVar.f3990e[i2] = length;
                        this.f3975i = (this.f3975i - j) + length;
                    }
                } else {
                    m4458a(m4496b);
                }
            }
            this.f3978l++;
            cVar.f3992g = null;
            if (cVar.f3991f | z) {
                cVar.f3991f = true;
                this.f3976j.append((CharSequence) "CLEAN");
                this.f3976j.append(' ');
                this.f3976j.append((CharSequence) cVar.f3989d);
                this.f3976j.append((CharSequence) cVar.m4495a());
                this.f3976j.append('\n');
                if (z) {
                    long j2 = this.f3979m;
                    this.f3979m = 1 + j2;
                    cVar.f3993h = j2;
                }
            } else {
                this.f3977k.remove(cVar.f3989d);
                this.f3976j.append((CharSequence) "REMOVE");
                this.f3976j.append(' ');
                this.f3976j.append((CharSequence) cVar.f3989d);
                this.f3976j.append('\n');
            }
            this.f3976j.flush();
            if (this.f3975i > this.f3973g || m4468e()) {
                this.f3967a.submit(this.f3980n);
            }
        }
    }

    /* renamed from: e */
    public boolean m4468e() {
        return this.f3978l >= 2000 && this.f3978l >= this.f3977k.size();
    }

    /* renamed from: c */
    public synchronized boolean m4475c(String str) {
        boolean z;
        synchronized (this) {
            m4470f();
            c cVar = this.f3977k.get(str);
            if (cVar == null || cVar.f3992g != null) {
                z = false;
            } else {
                for (int i = 0; i < this.f3974h; i++) {
                    File m4494a = cVar.m4494a(i);
                    if (m4494a.exists() && !m4494a.delete()) {
                        throw new IOException("failed to delete " + m4494a);
                    }
                    this.f3975i -= cVar.f3990e[i];
                    cVar.f3990e[i] = 0;
                }
                this.f3978l++;
                this.f3976j.append((CharSequence) "REMOVE");
                this.f3976j.append(' ');
                this.f3976j.append((CharSequence) str);
                this.f3976j.append('\n');
                this.f3977k.remove(str);
                if (m4468e()) {
                    this.f3967a.submit(this.f3980n);
                }
                z = true;
            }
        }
        return z;
    }

    /* renamed from: f */
    private void m4470f() {
        if (this.f3976j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (this.f3976j != null) {
            Iterator it = new ArrayList(this.f3977k.values()).iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                if (cVar.f3992g != null) {
                    cVar.f3992g.m4481b();
                }
            }
            m4471g();
            this.f3976j.close();
            this.f3976j = null;
        }
    }

    /* renamed from: g */
    public void m4471g() {
        while (this.f3975i > this.f3973g) {
            m4475c(this.f3977k.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: a */
    public void m4473a() {
        close();
        C0728c.m4503a(this.f3968b);
    }

    /* renamed from: com.a.a.a.a$d */
    public final class d {

        /* renamed from: b */
        private final String f3995b;

        /* renamed from: c */
        private final long f3996c;

        /* renamed from: d */
        private final long[] f3997d;

        /* renamed from: e */
        private final File[] f3998e;

        /* synthetic */ d(C0726a c0726a, String str, long j, File[] fileArr, long[] jArr, AnonymousClass1 anonymousClass1) {
            this(str, j, fileArr, jArr);
        }

        private d(String str, long j, File[] fileArr, long[] jArr) {
            this.f3995b = str;
            this.f3996c = j;
            this.f3998e = fileArr;
            this.f3997d = jArr;
        }

        /* renamed from: a */
        public File m4497a(int i) {
            return this.f3998e[i];
        }
    }

    /* renamed from: com.a.a.a.a$b */
    public final class b {

        /* renamed from: b */
        private final c f3983b;

        /* renamed from: c */
        private final boolean[] f3984c;

        /* renamed from: d */
        private boolean f3985d;

        /* synthetic */ b(C0726a c0726a, c cVar, AnonymousClass1 anonymousClass1) {
            this(cVar);
        }

        private b(c cVar) {
            this.f3983b = cVar;
            this.f3984c = cVar.f3991f ? null : new boolean[C0726a.this.f3974h];
        }

        /* renamed from: a */
        public File m4479a(int i) {
            File m4496b;
            synchronized (C0726a.this) {
                if (this.f3983b.f3992g != this) {
                    throw new IllegalStateException();
                }
                if (!this.f3983b.f3991f) {
                    this.f3984c[i] = true;
                }
                m4496b = this.f3983b.m4496b(i);
                if (!C0726a.this.f3968b.exists()) {
                    C0726a.this.f3968b.mkdirs();
                }
            }
            return m4496b;
        }

        /* renamed from: a */
        public void m4480a() {
            C0726a.this.m4456a(this, true);
            this.f3985d = true;
        }

        /* renamed from: b */
        public void m4481b() {
            C0726a.this.m4456a(this, false);
        }

        /* renamed from: c */
        public void m4482c() {
            if (!this.f3985d) {
                try {
                    m4481b();
                } catch (IOException e) {
                }
            }
        }
    }

    /* renamed from: com.a.a.a.a$c */
    private final class c {

        /* renamed from: a */
        File[] f3986a;

        /* renamed from: b */
        File[] f3987b;

        /* renamed from: d */
        private final String f3989d;

        /* renamed from: e */
        private final long[] f3990e;

        /* renamed from: f */
        private boolean f3991f;

        /* renamed from: g */
        private b f3992g;

        /* renamed from: h */
        private long f3993h;

        /* synthetic */ c(C0726a c0726a, String str, AnonymousClass1 anonymousClass1) {
            this(str);
        }

        private c(String str) {
            this.f3989d = str;
            this.f3990e = new long[C0726a.this.f3974h];
            this.f3986a = new File[C0726a.this.f3974h];
            this.f3987b = new File[C0726a.this.f3974h];
            StringBuilder append = new StringBuilder(str).append('.');
            int length = append.length();
            for (int i = 0; i < C0726a.this.f3974h; i++) {
                append.append(i);
                this.f3986a[i] = new File(C0726a.this.f3968b, append.toString());
                append.append(".tmp");
                this.f3987b[i] = new File(C0726a.this.f3968b, append.toString());
                append.setLength(length);
            }
        }

        /* renamed from: a */
        public String m4495a() {
            StringBuilder sb = new StringBuilder();
            for (long j : this.f3990e) {
                sb.append(' ').append(j);
            }
            return sb.toString();
        }

        /* renamed from: a */
        public void m4487a(String[] strArr) {
            if (strArr.length != C0726a.this.f3974h) {
                throw m4489b(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f3990e[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw m4489b(strArr);
                }
            }
        }

        /* renamed from: b */
        private IOException m4489b(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: a */
        public File m4494a(int i) {
            return this.f3986a[i];
        }

        /* renamed from: b */
        public File m4496b(int i) {
            return this.f3987b[i];
        }
    }

    /* renamed from: com.a.a.a.a$a */
    private static final class a implements ThreadFactory {
        private a() {
        }

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }
}
