package com.p052a.p053a.p057d.p060b.p062b;

import android.content.Context;
import com.p052a.p053a.p057d.p060b.p062b.C0779d;
import java.io.File;

/* renamed from: com.a.a.d.b.b.f */
/* loaded from: classes.dex */
public final class C0781f extends C0779d {
    public C0781f(Context context) {
        this(context, "image_manager_disk_cache", 262144000);
    }

    /* renamed from: com.a.a.d.b.b.f$1 */
    class AnonymousClass1 implements C0779d.a {

        /* renamed from: a */
        final /* synthetic */ Context f4267a;

        /* renamed from: b */
        final /* synthetic */ String f4268b;

        AnonymousClass1(Context context, String str) {
            context = context;
            str = str;
        }

        @Override // com.p052a.p053a.p057d.p060b.p062b.C0779d.a
        /* renamed from: a */
        public File mo4735a() {
            File cacheDir = context.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return str != null ? new File(cacheDir, str) : cacheDir;
        }
    }

    public C0781f(Context context, String str, int i) {
        super(new C0779d.a() { // from class: com.a.a.d.b.b.f.1

            /* renamed from: a */
            final /* synthetic */ Context f4267a;

            /* renamed from: b */
            final /* synthetic */ String f4268b;

            AnonymousClass1(Context context2, String str2) {
                context = context2;
                str = str2;
            }

            @Override // com.p052a.p053a.p057d.p060b.p062b.C0779d.a
            /* renamed from: a */
            public File mo4735a() {
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    return null;
                }
                return str != null ? new File(cacheDir, str) : cacheDir;
            }
        }, i);
    }
}
