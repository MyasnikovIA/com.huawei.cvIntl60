package com.p052a.p053a.p057d.p058a;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import android.support.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* renamed from: com.a.a.d.a.l */
/* loaded from: classes.dex */
public class C0758l extends AbstractC0756j<InputStream> {

    /* renamed from: a */
    private static final UriMatcher f4193a = new UriMatcher(-1);

    static {
        f4193a.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f4193a.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f4193a.addURI("com.android.contacts", "contacts/#/photo", 2);
        f4193a.addURI("com.android.contacts", "contacts/#", 3);
        f4193a.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        f4193a.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public C0758l(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // com.p052a.p053a.p057d.p058a.AbstractC0756j
    /* renamed from: a */
    public InputStream mo4641b(Uri uri, ContentResolver contentResolver) {
        InputStream m4648c = m4648c(uri, contentResolver);
        if (m4648c == null) {
            throw new FileNotFoundException("InputStream is null for " + uri);
        }
        return m4648c;
    }

    /* renamed from: c */
    private InputStream m4648c(Uri uri, ContentResolver contentResolver) {
        switch (f4193a.match(uri)) {
            case 1:
            case 5:
                Uri lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
                if (lookupContact == null) {
                    throw new FileNotFoundException("Contact cannot be found");
                }
                return m4647a(contentResolver, lookupContact);
            case 2:
            case 4:
            default:
                return contentResolver.openInputStream(uri);
            case 3:
                return m4647a(contentResolver, uri);
        }
    }

    @TargetApi(14)
    /* renamed from: a */
    private InputStream m4647a(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    @Override // com.p052a.p053a.p057d.p058a.AbstractC0756j
    /* renamed from: a */
    public void mo4640a(InputStream inputStream) {
        inputStream.close();
    }

    @Override // com.p052a.p053a.p057d.p058a.InterfaceC0748b
    @NonNull
    /* renamed from: d */
    public Class<InputStream> mo4626d() {
        return InputStream.class;
    }
}
