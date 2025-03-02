package com.p086c.p087a;

import com.p083b.p084a.InterfaceC0957a;
import com.p083b.p084a.p085a.InterfaceC0958a;
import com.p083b.p084a.p085a.InterfaceC0959b;
import com.p086c.p087a.p088a.AbstractC0976e;
import com.p086c.p087a.p088a.C0973b;
import com.p086c.p087a.p088a.C0975d;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* renamed from: com.c.a.d */
/* loaded from: classes.dex */
public class C0979d implements InterfaceC0959b, Closeable, Iterator<InterfaceC0958a> {

    /* renamed from: a */
    private static final InterfaceC0958a f5021a = new AbstractC0971a("eof ") { // from class: com.c.a.d.1
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // com.p086c.p087a.AbstractC0971a
        /* renamed from: d */
        protected long mo5444d() {
            return 0L;
        }

        @Override // com.p086c.p087a.AbstractC0971a
        /* renamed from: b */
        protected void mo5442b(ByteBuffer byteBuffer) {
        }

        @Override // com.p086c.p087a.AbstractC0971a
        /* renamed from: a */
        protected void mo5440a(ByteBuffer byteBuffer) {
        }
    };

    /* renamed from: b */
    private static AbstractC0976e f5022b = AbstractC0976e.m5479a(C0979d.class);

    /* renamed from: d */
    protected InterfaceC0957a f5024d;

    /* renamed from: e */
    protected InterfaceC0980e f5025e;

    /* renamed from: f */
    InterfaceC0958a f5026f = null;

    /* renamed from: g */
    long f5027g = 0;

    /* renamed from: h */
    long f5028h = 0;

    /* renamed from: i */
    long f5029i = 0;

    /* renamed from: c */
    private List<InterfaceC0958a> f5023c = new ArrayList();

    /* renamed from: com.c.a.d$1 */
    class AnonymousClass1 extends AbstractC0971a {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // com.p086c.p087a.AbstractC0971a
        /* renamed from: d */
        protected long mo5444d() {
            return 0L;
        }

        @Override // com.p086c.p087a.AbstractC0971a
        /* renamed from: b */
        protected void mo5442b(ByteBuffer byteBuffer) {
        }

        @Override // com.p086c.p087a.AbstractC0971a
        /* renamed from: a */
        protected void mo5440a(ByteBuffer byteBuffer) {
        }
    }

    /* renamed from: c */
    public List<InterfaceC0958a> m5487c() {
        return (this.f5025e == null || this.f5026f == f5021a) ? this.f5023c : new C0975d(this.f5023c, this);
    }

    /* renamed from: d */
    protected long m5488d() {
        long j = 0;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < m5487c().size()) {
                j += this.f5023c.get(i2).mo5436a();
                i = i2 + 1;
            } else {
                return j;
            }
        }
    }

    /* renamed from: a */
    public void m5485a(InterfaceC0958a interfaceC0958a) {
        if (interfaceC0958a != null) {
            this.f5023c = new ArrayList(m5487c());
            interfaceC0958a.mo5437a(this);
            this.f5023c.add(interfaceC0958a);
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f5026f == f5021a) {
            return false;
        }
        if (this.f5026f != null) {
            return true;
        }
        try {
            this.f5026f = next();
            return true;
        } catch (NoSuchElementException e) {
            this.f5026f = f5021a;
            return false;
        }
    }

    @Override // java.util.Iterator
    /* renamed from: e */
    public InterfaceC0958a next() {
        InterfaceC0958a m5435a;
        if (this.f5026f != null && this.f5026f != f5021a) {
            InterfaceC0958a interfaceC0958a = this.f5026f;
            this.f5026f = null;
            return interfaceC0958a;
        }
        if (this.f5025e == null || this.f5027g >= this.f5029i) {
            this.f5026f = f5021a;
            throw new NoSuchElementException();
        }
        try {
            synchronized (this.f5025e) {
                this.f5025e.m5492a(this.f5027g);
                m5435a = this.f5024d.m5435a(this.f5025e, this);
                this.f5027g = this.f5025e.m5490a();
            }
            return m5435a;
        } catch (EOFException e) {
            throw new NoSuchElementException();
        } catch (IOException e2) {
            throw new NoSuchElementException();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName()).append("[");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f5023c.size()) {
                if (i2 > 0) {
                    sb.append(";");
                }
                sb.append(this.f5023c.get(i2).toString());
                i = i2 + 1;
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }

    /* renamed from: b */
    public final void m5486b(WritableByteChannel writableByteChannel) {
        Iterator<InterfaceC0958a> it = m5487c().iterator();
        while (it.hasNext()) {
            it.next().mo5438a(writableByteChannel);
        }
    }

    /* renamed from: a */
    public ByteBuffer m5484a(long j, long j2) {
        ByteBuffer m5491a;
        if (this.f5025e != null) {
            synchronized (this.f5025e) {
                m5491a = this.f5025e.m5491a(this.f5028h + j, j2);
            }
            return m5491a;
        }
        ByteBuffer allocate = ByteBuffer.allocate(C0973b.m5477a(j2));
        long j3 = j + j2;
        long j4 = 0;
        for (InterfaceC0958a interfaceC0958a : this.f5023c) {
            long mo5436a = interfaceC0958a.mo5436a() + j4;
            if (mo5436a > j && j4 < j3) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                WritableByteChannel newChannel = Channels.newChannel(byteArrayOutputStream);
                interfaceC0958a.mo5438a(newChannel);
                newChannel.close();
                if (j4 >= j && mo5436a <= j3) {
                    allocate.put(byteArrayOutputStream.toByteArray());
                    j4 = mo5436a;
                } else if (j4 < j && mo5436a > j3) {
                    allocate.put(byteArrayOutputStream.toByteArray(), C0973b.m5477a(j - j4), C0973b.m5477a((interfaceC0958a.mo5436a() - (j - j4)) - (mo5436a - j3)));
                    j4 = mo5436a;
                } else if (j4 < j && mo5436a <= j3) {
                    allocate.put(byteArrayOutputStream.toByteArray(), C0973b.m5477a(j - j4), C0973b.m5477a(interfaceC0958a.mo5436a() - (j - j4)));
                    j4 = mo5436a;
                } else if (j4 >= j && mo5436a > j3) {
                    allocate.put(byteArrayOutputStream.toByteArray(), 0, C0973b.m5477a(interfaceC0958a.mo5436a() - (mo5436a - j3)));
                }
            }
            j4 = mo5436a;
        }
        return (ByteBuffer) allocate.rewind();
    }

    public void close() {
        this.f5025e.close();
    }
}
