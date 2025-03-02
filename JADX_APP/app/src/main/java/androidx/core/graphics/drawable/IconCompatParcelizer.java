package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.IconCompat;
import androidx.versionedparcelable.AbstractC0722a;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(AbstractC0722a abstractC0722a) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.mType = abstractC0722a.m4435b(iconCompat.mType, 1);
        iconCompat.mData = abstractC0722a.m4441b(iconCompat.mData, 2);
        iconCompat.mParcelable = abstractC0722a.m4436b((AbstractC0722a) iconCompat.mParcelable, 3);
        iconCompat.mInt1 = abstractC0722a.m4435b(iconCompat.mInt1, 4);
        iconCompat.mInt2 = abstractC0722a.m4435b(iconCompat.mInt2, 5);
        iconCompat.mTintList = (ColorStateList) abstractC0722a.m4436b((AbstractC0722a) iconCompat.mTintList, 6);
        iconCompat.mTintModeStr = abstractC0722a.m4438b(iconCompat.mTintModeStr, 7);
        iconCompat.onPostParceling();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, AbstractC0722a abstractC0722a) {
        abstractC0722a.m4431a(true, true);
        iconCompat.onPreParceling(abstractC0722a.m4434a());
        abstractC0722a.m4424a(iconCompat.mType, 1);
        abstractC0722a.m4433a(iconCompat.mData, 2);
        abstractC0722a.m4426a(iconCompat.mParcelable, 3);
        abstractC0722a.m4424a(iconCompat.mInt1, 4);
        abstractC0722a.m4424a(iconCompat.mInt2, 5);
        abstractC0722a.m4426a(iconCompat.mTintList, 6);
        abstractC0722a.m4430a(iconCompat.mTintModeStr, 7);
    }
}
