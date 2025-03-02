package android.support.v4.media;

import android.media.VolumeProvider;
import android.support.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
class VolumeProviderCompatApi21 {

    public interface Delegate {
        void onAdjustVolume(int i);

        void onSetVolumeTo(int i);
    }

    /* renamed from: android.support.v4.media.VolumeProviderCompatApi21$1 */
    static class C04261 extends VolumeProvider {
        final /* synthetic */ Delegate val$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04261(int i, int i2, int i3, Delegate delegate) {
            super(i, i2, i3);
            delegate = delegate;
        }

        @Override // android.media.VolumeProvider
        public void onSetVolumeTo(int i) {
            delegate.onSetVolumeTo(i);
        }

        @Override // android.media.VolumeProvider
        public void onAdjustVolume(int i) {
            delegate.onAdjustVolume(i);
        }
    }

    public static Object createVolumeProvider(int i, int i2, int i3, Delegate delegate) {
        return new VolumeProvider(i, i2, i3) { // from class: android.support.v4.media.VolumeProviderCompatApi21.1
            final /* synthetic */ Delegate val$delegate;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C04261(int i4, int i22, int i32, Delegate delegate2) {
                super(i4, i22, i32);
                delegate = delegate2;
            }

            @Override // android.media.VolumeProvider
            public void onSetVolumeTo(int i4) {
                delegate.onSetVolumeTo(i4);
            }

            @Override // android.media.VolumeProvider
            public void onAdjustVolume(int i4) {
                delegate.onAdjustVolume(i4);
            }
        };
    }

    public static void setCurrentVolume(Object obj, int i) {
        ((VolumeProvider) obj).setCurrentVolume(i);
    }

    private VolumeProviderCompatApi21() {
    }
}
