package android.support.v4.media;

import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.media.VolumeProviderCompatApi21;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class VolumeProviderCompat {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;
    private Callback mCallback;
    private final int mControlType;
    private int mCurrentVolume;
    private final int mMaxVolume;
    private Object mVolumeProviderObj;

    public static abstract class Callback {
        public abstract void onVolumeChanged(VolumeProviderCompat volumeProviderCompat);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface ControlType {
    }

    public VolumeProviderCompat(int i, int i2, int i3) {
        this.mControlType = i;
        this.mMaxVolume = i2;
        this.mCurrentVolume = i3;
    }

    public final int getCurrentVolume() {
        return this.mCurrentVolume;
    }

    public final int getVolumeControl() {
        return this.mControlType;
    }

    public final int getMaxVolume() {
        return this.mMaxVolume;
    }

    public final void setCurrentVolume(int i) {
        this.mCurrentVolume = i;
        Object volumeProvider = getVolumeProvider();
        if (volumeProvider != null && Build.VERSION.SDK_INT >= 21) {
            VolumeProviderCompatApi21.setCurrentVolume(volumeProvider, i);
        }
        if (this.mCallback != null) {
            this.mCallback.onVolumeChanged(this);
        }
    }

    public void onSetVolumeTo(int i) {
    }

    public void onAdjustVolume(int i) {
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public Object getVolumeProvider() {
        if (this.mVolumeProviderObj == null && Build.VERSION.SDK_INT >= 21) {
            this.mVolumeProviderObj = VolumeProviderCompatApi21.createVolumeProvider(this.mControlType, this.mMaxVolume, this.mCurrentVolume, new VolumeProviderCompatApi21.Delegate() { // from class: android.support.v4.media.VolumeProviderCompat.1
                C04251() {
                }

                @Override // android.support.v4.media.VolumeProviderCompatApi21.Delegate
                public void onSetVolumeTo(int i) {
                    VolumeProviderCompat.this.onSetVolumeTo(i);
                }

                @Override // android.support.v4.media.VolumeProviderCompatApi21.Delegate
                public void onAdjustVolume(int i) {
                    VolumeProviderCompat.this.onAdjustVolume(i);
                }
            });
        }
        return this.mVolumeProviderObj;
    }

    /* renamed from: android.support.v4.media.VolumeProviderCompat$1 */
    class C04251 implements VolumeProviderCompatApi21.Delegate {
        C04251() {
        }

        @Override // android.support.v4.media.VolumeProviderCompatApi21.Delegate
        public void onSetVolumeTo(int i) {
            VolumeProviderCompat.this.onSetVolumeTo(i);
        }

        @Override // android.support.v4.media.VolumeProviderCompatApi21.Delegate
        public void onAdjustVolume(int i) {
            VolumeProviderCompat.this.onAdjustVolume(i);
        }
    }
}
