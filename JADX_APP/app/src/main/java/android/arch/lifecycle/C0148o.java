package android.arch.lifecycle;

import android.support.annotation.MainThread;
import android.support.annotation.NonNull;

/* renamed from: android.arch.lifecycle.o */
/* loaded from: classes.dex */
public class C0148o {

    /* renamed from: a */
    private final a f1018a;

    /* renamed from: b */
    private final C0149p f1019b;

    /* renamed from: android.arch.lifecycle.o$a */
    public interface a {
        @NonNull
        <T extends AbstractC0147n> T create(@NonNull Class<T> cls);
    }

    public C0148o(@NonNull C0149p c0149p, @NonNull a aVar) {
        this.f1018a = aVar;
        this.f1019b = c0149p;
    }

    @NonNull
    @MainThread
    /* renamed from: a */
    public <T extends AbstractC0147n> T m1347a(@NonNull Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) m1348a("android.arch.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    @NonNull
    @MainThread
    /* renamed from: a */
    public <T extends AbstractC0147n> T m1348a(@NonNull String str, @NonNull Class<T> cls) {
        T t = (T) this.f1019b.m1349a(str);
        if (!cls.isInstance(t)) {
            if (t != null) {
            }
            T t2 = (T) this.f1018a.create(cls);
            this.f1019b.m1351a(str, t2);
            return t2;
        }
        return t;
    }
}
