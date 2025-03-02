package androidx.versionedparcelable;

import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import java.lang.reflect.InvocationTargetException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.versionedparcelable.a */
/* loaded from: classes.dex */
public abstract class AbstractC0722a {
    /* renamed from: a */
    protected abstract void mo4423a(int i);

    /* renamed from: a */
    protected abstract void mo4425a(Parcelable parcelable);

    /* renamed from: a */
    protected abstract void mo4429a(String str);

    /* renamed from: a */
    protected abstract void mo4432a(byte[] bArr);

    /* renamed from: b */
    protected abstract void mo4439b();

    /* renamed from: b */
    protected abstract boolean mo4440b(int i);

    /* renamed from: c */
    protected abstract AbstractC0722a mo4442c();

    /* renamed from: c */
    protected abstract void mo4443c(int i);

    /* renamed from: d */
    protected abstract int mo4444d();

    /* renamed from: e */
    protected abstract String mo4445e();

    /* renamed from: f */
    protected abstract byte[] mo4446f();

    /* renamed from: g */
    protected abstract <T extends Parcelable> T mo4447g();

    /* renamed from: a */
    public boolean m4434a() {
        return false;
    }

    /* renamed from: a */
    public void m4431a(boolean z, boolean z2) {
    }

    /* renamed from: a */
    public void m4433a(byte[] bArr, int i) {
        mo4443c(i);
        mo4432a(bArr);
    }

    /* renamed from: a */
    public void m4424a(int i, int i2) {
        mo4443c(i2);
        mo4423a(i);
    }

    /* renamed from: a */
    public void m4430a(String str, int i) {
        mo4443c(i);
        mo4429a(str);
    }

    /* renamed from: a */
    public void m4426a(Parcelable parcelable, int i) {
        mo4443c(i);
        mo4425a(parcelable);
    }

    /* renamed from: b */
    public int m4435b(int i, int i2) {
        return !mo4440b(i2) ? i : mo4444d();
    }

    /* renamed from: b */
    public String m4438b(String str, int i) {
        return !mo4440b(i) ? str : mo4445e();
    }

    /* renamed from: b */
    public byte[] m4441b(byte[] bArr, int i) {
        return !mo4440b(i) ? bArr : mo4446f();
    }

    /* renamed from: b */
    public <T extends Parcelable> T m4436b(T t, int i) {
        return !mo4440b(i) ? t : (T) mo4447g();
    }

    /* renamed from: a */
    public void m4428a(InterfaceC0724c interfaceC0724c, int i) {
        mo4443c(i);
        m4427a(interfaceC0724c);
    }

    /* renamed from: a */
    protected void m4427a(InterfaceC0724c interfaceC0724c) {
        if (interfaceC0724c == null) {
            mo4429a((String) null);
            return;
        }
        m4421b(interfaceC0724c);
        AbstractC0722a mo4442c = mo4442c();
        m4420a(interfaceC0724c, mo4442c);
        mo4442c.mo4439b();
    }

    /* renamed from: b */
    private void m4421b(InterfaceC0724c interfaceC0724c) {
        try {
            mo4429a(m4419a((Class<? extends InterfaceC0724c>) interfaceC0724c.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(interfaceC0724c.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: b */
    public <T extends InterfaceC0724c> T m4437b(T t, int i) {
        return !mo4440b(i) ? t : (T) m4448h();
    }

    /* renamed from: h */
    protected <T extends InterfaceC0724c> T m4448h() {
        String mo4445e = mo4445e();
        if (mo4445e == null) {
            return null;
        }
        return (T) m4418a(mo4445e, mo4442c());
    }

    /* renamed from: a */
    protected static <T extends InterfaceC0724c> T m4418a(String str, AbstractC0722a abstractC0722a) {
        try {
            return (T) Class.forName(str, true, AbstractC0722a.class.getClassLoader()).getDeclaredMethod("read", AbstractC0722a.class).invoke(null, abstractC0722a);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    /* renamed from: a */
    protected static <T extends InterfaceC0724c> void m4420a(T t, AbstractC0722a abstractC0722a) {
        try {
            m4422c(t).getDeclaredMethod("write", t.getClass(), AbstractC0722a.class).invoke(null, t, abstractC0722a);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    /* renamed from: c */
    private static <T extends InterfaceC0724c> Class m4422c(T t) {
        return m4419a((Class<? extends InterfaceC0724c>) t.getClass());
    }

    /* renamed from: a */
    private static Class m4419a(Class<? extends InterfaceC0724c> cls) {
        return Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
    }
}
