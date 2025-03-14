package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import com.google.android.gms.plus.model.people.Person;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class PlusShare {
    public static final String EXTRA_CALL_TO_ACTION = "com.google.android.apps.plus.CALL_TO_ACTION";
    public static final String EXTRA_CONTENT_DEEP_LINK_ID = "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID";
    public static final String EXTRA_CONTENT_DEEP_LINK_METADATA = "com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA";
    public static final String EXTRA_CONTENT_URL = "com.google.android.apps.plus.CONTENT_URL";
    public static final String EXTRA_IS_INTERACTIVE_POST = "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST";
    public static final String EXTRA_SENDER_ID = "com.google.android.apps.plus.SENDER_ID";
    public static final String KEY_CALL_TO_ACTION_DEEP_LINK_ID = "deepLinkId";
    public static final String KEY_CALL_TO_ACTION_LABEL = "label";
    public static final String KEY_CALL_TO_ACTION_URL = "url";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION = "description";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_THUMBNAIL_URL = "thumbnailUrl";
    public static final String KEY_CONTENT_DEEP_LINK_METADATA_TITLE = "title";
    public static final String PARAM_CONTENT_DEEP_LINK_ID = "deep_link_id";

    public static class Builder {
        private boolean aAT;
        private ArrayList<Uri> aAU;
        private final Context mContext;
        private final Intent mIntent = new Intent().setAction("android.intent.action.SEND");

        public Builder(Activity activity) {
            this.mContext = activity;
            this.mIntent.addFlags(524288);
            if (activity == null || activity.getComponentName() == null) {
                return;
            }
            this.aAT = true;
        }

        public Builder(Context context) {
            this.mContext = context;
        }

        public Builder addCallToAction(String str, Uri uri, String str2) {
            zzaa.zza(this.aAT, "Must include the launching activity with PlusShare.Builder constructor before setting call-to-action");
            zzaa.zzb((uri == null || TextUtils.isEmpty(uri.toString())) ? false : true, "Must provide a call to action URL");
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(str)) {
                bundle.putString(PlusShare.KEY_CALL_TO_ACTION_LABEL, str);
            }
            bundle.putString("url", uri.toString());
            if (!TextUtils.isEmpty(str2)) {
                zzaa.zza(PlusShare.zznp(str2), "The specified deep-link ID was malformed.");
                bundle.putString(PlusShare.KEY_CALL_TO_ACTION_DEEP_LINK_ID, str2);
            }
            this.mIntent.putExtra(PlusShare.EXTRA_CALL_TO_ACTION, bundle);
            this.mIntent.putExtra(PlusShare.EXTRA_IS_INTERACTIVE_POST, true);
            this.mIntent.setType("text/plain");
            return this;
        }

        public Builder addStream(Uri uri) {
            Uri uri2 = (Uri) this.mIntent.getParcelableExtra("android.intent.extra.STREAM");
            if (uri2 == null) {
                return setStream(uri);
            }
            if (this.aAU == null) {
                this.aAU = new ArrayList<>();
            }
            this.aAU.add(uri2);
            this.aAU.add(uri);
            return this;
        }

        public Intent getIntent() {
            boolean z = true;
            boolean z2 = this.aAU != null && this.aAU.size() > 1;
            boolean equals = "android.intent.action.SEND_MULTIPLE".equals(this.mIntent.getAction());
            boolean booleanExtra = this.mIntent.getBooleanExtra(PlusShare.EXTRA_IS_INTERACTIVE_POST, false);
            zzaa.zza((z2 && booleanExtra) ? false : true, "Call-to-action buttons are only available for URLs.");
            zzaa.zza(!booleanExtra || this.mIntent.hasExtra(PlusShare.EXTRA_CONTENT_URL), "The content URL is required for interactive posts.");
            if (booleanExtra && !this.mIntent.hasExtra(PlusShare.EXTRA_CONTENT_URL) && !this.mIntent.hasExtra(PlusShare.EXTRA_CONTENT_DEEP_LINK_ID)) {
                z = false;
            }
            zzaa.zza(z, "Must set content URL or content deep-link ID to use a call-to-action button.");
            if (this.mIntent.hasExtra(PlusShare.EXTRA_CONTENT_DEEP_LINK_ID)) {
                zzaa.zza(PlusShare.zznp(this.mIntent.getStringExtra(PlusShare.EXTRA_CONTENT_DEEP_LINK_ID)), "The specified deep-link ID was malformed.");
            }
            if (!z2 && equals) {
                this.mIntent.setAction("android.intent.action.SEND");
                if (this.aAU == null || this.aAU.isEmpty()) {
                    this.mIntent.removeExtra("android.intent.extra.STREAM");
                } else {
                    this.mIntent.putExtra("android.intent.extra.STREAM", this.aAU.get(0));
                }
                this.aAU = null;
            }
            if (z2 && !equals) {
                this.mIntent.setAction("android.intent.action.SEND_MULTIPLE");
                if (this.aAU == null || this.aAU.isEmpty()) {
                    this.mIntent.removeExtra("android.intent.extra.STREAM");
                } else {
                    this.mIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", this.aAU);
                }
            }
            if ("com.google.android.gms.plus.action.SHARE_INTERNAL_GOOGLE".equals(this.mIntent.getAction())) {
                this.mIntent.setPackage("com.google.android.gms");
                return this.mIntent;
            }
            if (this.mIntent.hasExtra("android.intent.extra.STREAM")) {
                this.mIntent.setPackage("com.google.android.apps.plus");
                return this.mIntent;
            }
            this.mIntent.setAction("com.google.android.gms.plus.action.SHARE_GOOGLE");
            this.mIntent.setPackage("com.google.android.gms");
            return this.mIntent;
        }

        public Builder setContentDeepLinkId(String str) {
            return setContentDeepLinkId(str, null, null, null);
        }

        public Builder setContentDeepLinkId(String str, String str2, String str3, Uri uri) {
            zzaa.zzb(this.aAT, "Must include the launching activity with PlusShare.Builder constructor before setting deep links");
            zzaa.zzb(!TextUtils.isEmpty(str), "The deepLinkId parameter is required.");
            Bundle zza = PlusShare.zza(str2, str3, uri);
            this.mIntent.putExtra(PlusShare.EXTRA_CONTENT_DEEP_LINK_ID, str);
            this.mIntent.putExtra(PlusShare.EXTRA_CONTENT_DEEP_LINK_METADATA, zza);
            this.mIntent.setType("text/plain");
            return this;
        }

        public Builder setContentUrl(Uri uri) {
            String uri2 = uri != null ? uri.toString() : null;
            if (TextUtils.isEmpty(uri2)) {
                this.mIntent.removeExtra(PlusShare.EXTRA_CONTENT_URL);
            } else {
                this.mIntent.putExtra(PlusShare.EXTRA_CONTENT_URL, uri2);
            }
            return this;
        }

        public Builder setRecipients(Person person, List<Person> list) {
            this.mIntent.putExtra(PlusShare.EXTRA_SENDER_ID, person != null ? person.getId() : "0");
            int size = list != null ? list.size() : 0;
            if (size == 0) {
                this.mIntent.removeExtra("com.google.android.apps.plus.RECIPIENT_IDS");
                this.mIntent.removeExtra("com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES");
            } else {
                ArrayList<String> arrayList = new ArrayList<>(size);
                ArrayList<String> arrayList2 = new ArrayList<>(size);
                for (Person person2 : list) {
                    arrayList.add(person2.getId());
                    arrayList2.add(person2.getDisplayName());
                }
                this.mIntent.putStringArrayListExtra("com.google.android.apps.plus.RECIPIENT_IDS", arrayList);
                this.mIntent.putStringArrayListExtra("com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES", arrayList2);
            }
            return this;
        }

        public Builder setStream(Uri uri) {
            this.aAU = null;
            this.mIntent.putExtra("android.intent.extra.STREAM", uri);
            return this;
        }

        public Builder setText(CharSequence charSequence) {
            this.mIntent.putExtra("android.intent.extra.TEXT", charSequence);
            return this;
        }

        public Builder setType(String str) {
            this.mIntent.setType(str);
            return this;
        }
    }

    @Deprecated
    protected PlusShare() {
        throw new AssertionError();
    }

    public static Person createPerson(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("MinimalPerson ID must not be empty.");
        }
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("Display name must not be empty.");
        }
        return new PersonEntity(str2, str, null, 0, null);
    }

    public static String getDeepLinkId(Intent intent) {
        if (intent == null || intent.getData() == null) {
            return null;
        }
        return intent.getData().getQueryParameter(PARAM_CONTENT_DEEP_LINK_ID);
    }

    public static Bundle zza(String str, String str2, Uri uri) {
        Bundle bundle = new Bundle();
        bundle.putString(KEY_CONTENT_DEEP_LINK_METADATA_TITLE, str);
        bundle.putString(KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, str2);
        if (uri != null) {
            bundle.putString(KEY_CONTENT_DEEP_LINK_METADATA_THUMBNAIL_URL, uri.toString());
        }
        return bundle;
    }

    protected static boolean zznp(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e("GooglePlusPlatform", "The provided deep-link ID is empty.");
            return false;
        }
        if (!str.contains(" ")) {
            return true;
        }
        Log.e("GooglePlusPlatform", "Spaces are not allowed in deep-link IDs.");
        return false;
    }
}
