package com.p052a.p053a.p057d.p060b;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.InterfaceC0884h;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.a.a.d.b.o */
/* loaded from: classes.dex */
public final class C0800o extends Exception {

    /* renamed from: a */
    private static final StackTraceElement[] f4450a = new StackTraceElement[0];

    /* renamed from: b */
    private final List<Exception> f4451b;

    /* renamed from: c */
    private InterfaceC0884h f4452c;

    /* renamed from: d */
    private EnumC0741a f4453d;

    /* renamed from: e */
    private Class<?> f4454e;

    public C0800o(String str) {
        this(str, (List<Exception>) Collections.emptyList());
    }

    public C0800o(String str, Exception exc) {
        this(str, (List<Exception>) Collections.singletonList(exc));
    }

    public C0800o(String str, List<Exception> list) {
        super(str);
        setStackTrace(f4450a);
        this.f4451b = list;
    }

    /* renamed from: a */
    void m4891a(InterfaceC0884h interfaceC0884h, EnumC0741a enumC0741a) {
        m4892a(interfaceC0884h, enumC0741a, null);
    }

    /* renamed from: a */
    void m4892a(InterfaceC0884h interfaceC0884h, EnumC0741a enumC0741a, Class<?> cls) {
        this.f4452c = interfaceC0884h;
        this.f4453d = enumC0741a;
        this.f4454e = cls;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    /* renamed from: a */
    public List<Exception> m4890a() {
        return this.f4451b;
    }

    /* renamed from: b */
    public List<Exception> m4894b() {
        ArrayList arrayList = new ArrayList();
        m4887a(this, arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public void m4893a(String str) {
        List<Exception> m4894b = m4894b();
        int size = m4894b.size();
        for (int i = 0; i < size; i++) {
            Log.i(str, "Root cause (" + (i + 1) + " of " + size + ")", m4894b.get(i));
        }
    }

    /* renamed from: a */
    private void m4887a(Exception exc, List<Exception> list) {
        if (exc instanceof C0800o) {
            Iterator<Exception> it = ((C0800o) exc).m4890a().iterator();
            while (it.hasNext()) {
                m4887a(it.next(), list);
            }
            return;
        }
        list.add(exc);
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        m4885a(printStream);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        m4885a(printWriter);
    }

    /* renamed from: a */
    private void m4885a(Appendable appendable) {
        m4886a(this, appendable);
        m4888a(m4890a(), new a(appendable));
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return super.getMessage() + (this.f4454e != null ? ", " + this.f4454e : "") + (this.f4453d != null ? ", " + this.f4453d : "") + (this.f4452c != null ? ", " + this.f4452c : "");
    }

    /* renamed from: a */
    private static void m4886a(Exception exc, Appendable appendable) {
        try {
            appendable.append(exc.getClass().toString()).append(": ").append(exc.getMessage()).append('\n');
        } catch (IOException e) {
            throw new RuntimeException(exc);
        }
    }

    /* renamed from: a */
    private static void m4888a(List<Exception> list, Appendable appendable) {
        try {
            m4889b(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    private static void m4889b(List<Exception> list, Appendable appendable) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            appendable.append("Cause (").append(String.valueOf(i + 1)).append(" of ").append(String.valueOf(size)).append("): ");
            Exception exc = list.get(i);
            if (exc instanceof C0800o) {
                ((C0800o) exc).m4885a(appendable);
            } else {
                m4886a(exc, appendable);
            }
        }
    }

    /* renamed from: com.a.a.d.b.o$a */
    private static final class a implements Appendable {

        /* renamed from: a */
        private final Appendable f4455a;

        /* renamed from: b */
        private boolean f4456b = true;

        a(Appendable appendable) {
            this.f4455a = appendable;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c) {
            if (this.f4456b) {
                this.f4456b = false;
                this.f4455a.append("  ");
            }
            this.f4456b = c == '\n';
            this.f4455a.append(c);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence) {
            CharSequence m4895a = m4895a(charSequence);
            return append(m4895a, 0, m4895a.length());
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence, int i, int i2) {
            boolean z = false;
            CharSequence m4895a = m4895a(charSequence);
            if (this.f4456b) {
                this.f4456b = false;
                this.f4455a.append("  ");
            }
            if (m4895a.length() > 0 && m4895a.charAt(i2 - 1) == '\n') {
                z = true;
            }
            this.f4456b = z;
            this.f4455a.append(m4895a, i, i2);
            return this;
        }

        @NonNull
        /* renamed from: a */
        private CharSequence m4895a(@Nullable CharSequence charSequence) {
            if (charSequence == null) {
                return "";
            }
            return charSequence;
        }
    }
}
