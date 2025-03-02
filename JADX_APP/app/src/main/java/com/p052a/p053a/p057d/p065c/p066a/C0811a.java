package com.p052a.p053a.p057d.p065c.p066a;

import android.support.annotation.Nullable;
import com.google.android.exoplayer.ExoPlayer;
import com.p052a.p053a.p057d.C0885i;
import com.p052a.p053a.p057d.C0886j;
import com.p052a.p053a.p057d.p058a.C0754h;
import com.p052a.p053a.p057d.p065c.C0821g;
import com.p052a.p053a.p057d.p065c.C0827m;
import com.p052a.p053a.p057d.p065c.C0832r;
import com.p052a.p053a.p057d.p065c.InterfaceC0828n;
import com.p052a.p053a.p057d.p065c.InterfaceC0829o;
import java.io.InputStream;

/* renamed from: com.a.a.d.c.a.a */
/* loaded from: classes.dex */
public class C0811a implements InterfaceC0828n<C0821g, InputStream> {

    /* renamed from: a */
    public static final C0885i<Integer> f4500a = C0885i.m5107a("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", Integer.valueOf(ExoPlayer.Factory.DEFAULT_MIN_BUFFER_MS));

    /* renamed from: b */
    @Nullable
    private final C0827m<C0821g, C0821g> f4501b;

    public C0811a() {
        this(null);
    }

    public C0811a(C0827m<C0821g, C0821g> c0827m) {
        this.f4501b = c0827m;
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public InterfaceC0828n.a<InputStream> mo4909a(C0821g c0821g, int i, int i2, C0886j c0886j) {
        if (this.f4501b != null) {
            C0821g m4940a = this.f4501b.m4940a(c0821g, 0, 0);
            if (m4940a == null) {
                this.f4501b.m4941a(c0821g, 0, 0, c0821g);
            } else {
                c0821g = m4940a;
            }
        }
        return new InterfaceC0828n.a<>(c0821g, new C0754h(c0821g, ((Integer) c0886j.m5115a(f4500a)).intValue()));
    }

    @Override // com.p052a.p053a.p057d.p065c.InterfaceC0828n
    /* renamed from: a */
    public boolean mo4910a(C0821g c0821g) {
        return true;
    }

    /* renamed from: com.a.a.d.c.a.a$a */
    public static class a implements InterfaceC0829o<C0821g, InputStream> {

        /* renamed from: a */
        private final C0827m<C0821g, C0821g> f4502a = new C0827m<>(500);

        @Override // com.p052a.p053a.p057d.p065c.InterfaceC0829o
        /* renamed from: a */
        public InterfaceC0828n<C0821g, InputStream> mo4912a(C0832r c0832r) {
            return new C0811a(this.f4502a);
        }
    }
}
