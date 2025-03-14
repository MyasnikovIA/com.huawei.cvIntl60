package android.support.v4.hardware.display;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.Display;
import android.view.WindowManager;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class DisplayManagerCompat {
    public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";
    private static final WeakHashMap<Context, DisplayManagerCompat> sInstances = new WeakHashMap<>();
    private final Context mContext;

    private DisplayManagerCompat(Context context) {
        this.mContext = context;
    }

    @NonNull
    public static DisplayManagerCompat getInstance(@NonNull Context context) {
        DisplayManagerCompat displayManagerCompat;
        synchronized (sInstances) {
            displayManagerCompat = sInstances.get(context);
            if (displayManagerCompat == null) {
                displayManagerCompat = new DisplayManagerCompat(context);
                sInstances.put(context, displayManagerCompat);
            }
        }
        return displayManagerCompat;
    }

    @Nullable
    public Display getDisplay(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((DisplayManager) this.mContext.getSystemService("display")).getDisplay(i);
        }
        Display defaultDisplay = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay();
        if (defaultDisplay.getDisplayId() != i) {
            return null;
        }
        return defaultDisplay;
    }

    @NonNull
    public Display[] getDisplays() {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((DisplayManager) this.mContext.getSystemService("display")).getDisplays();
        }
        return new Display[]{((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay()};
    }

    @NonNull
    public Display[] getDisplays(@Nullable String str) {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((DisplayManager) this.mContext.getSystemService("display")).getDisplays(str);
        }
        if (str == null) {
            return new Display[0];
        }
        return new Display[]{((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay()};
    }
}
