package com.p052a.p053a.p057d.p058a.p059a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.support.annotation.NonNull;
import android.util.Log;
import com.p052a.p053a.ComponentCallbacks2C0735c;
import com.p052a.p053a.EnumC0914g;
import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.p058a.C0751e;
import com.p052a.p053a.p057d.p058a.InterfaceC0748b;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: com.a.a.d.a.a.c */
/* loaded from: classes.dex */
public class C0745c implements InterfaceC0748b<InputStream> {

    /* renamed from: a */
    private final Uri f4160a;

    /* renamed from: b */
    private final C0747e f4161b;

    /* renamed from: c */
    private InputStream f4162c;

    /* renamed from: a */
    public static C0745c m4622a(Context context, Uri uri) {
        return m4623a(context, uri, new a(context.getContentResolver()));
    }

    /* renamed from: b */
    public static C0745c m4624b(Context context, Uri uri) {
        return m4623a(context, uri, new b(context.getContentResolver()));
    }

    /* renamed from: a */
    private static C0745c m4623a(Context context, Uri uri, InterfaceC0746d interfaceC0746d) {
        return new C0745c(uri, new C0747e(ComponentCallbacks2C0735c.m4550a(context).m4567h().m5213a(), interfaceC0746d, ComponentCallbacks2C0735c.m4550a(context).m4560b(), context.getContentResolver()));
    }

    C0745c(Uri uri, C0747e c0747e) {
        this.f4160a = uri;
        this.f4161b = c0747e;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    /* renamed from: a */
    public void mo4610a(EnumC0914g enumC0914g, InterfaceC0748b.a<? super InputStream> aVar) {
        try {
            this.f4162c = m4625e();
            aVar.mo4631a((InterfaceC0748b.a<? super InputStream>) this.f4162c);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e);
            }
            aVar.mo4630a((Exception) e);
        }
    }

    /* renamed from: e */
    private InputStream m4625e() {
        InputStream m4629b = this.f4161b.m4629b(this.f4160a);
        int m4628a = m4629b != null ? this.f4161b.m4628a(this.f4160a) : -1;
        return m4628a != -1 ? new C0751e(m4629b, m4628a) : m4629b;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    /* renamed from: a */
    public void mo4609a() {
        if (this.f4162c != null) {
            try {
                this.f4162c.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    /* renamed from: b */
    public void mo4612b() {
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    @NonNull
    /* renamed from: d */
    public Class<InputStream> mo4626d() {
        return InputStream.class;
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    @NonNull
    /* renamed from: c */
    public EnumC0741a mo4613c() {
        return EnumC0741a.LOCAL;
    }

    /* renamed from: com.a.a.d.a.a.c$b */
    static class b implements InterfaceC0746d {

        /* renamed from: b */
        private static final String[] f4165b = {"_data"};

        /* renamed from: a */
        private final ContentResolver f4166a;

        b(ContentResolver contentResolver) {
            this.f4166a = contentResolver;
        }

        @Override // com.p052a.p053a.p057d.p058a.p059a.InterfaceC0746d
        /* renamed from: a */
        public Cursor mo4627a(Uri uri) {
            return this.f4166a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f4165b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* renamed from: com.a.a.d.a.a.c$a */
    static class a implements InterfaceC0746d {

        /* renamed from: b */
        private static final String[] f4163b = {"_data"};

        /* renamed from: a */
        private final ContentResolver f4164a;

        a(ContentResolver contentResolver) {
            this.f4164a = contentResolver;
        }

        @Override // com.p052a.p053a.p057d.p058a.p059a.InterfaceC0746d
        /* renamed from: a */
        public Cursor mo4627a(Uri uri) {
            return this.f4164a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f4163b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }
}
