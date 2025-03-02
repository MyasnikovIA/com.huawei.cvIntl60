package ThirdParty.Rtmp;

/* loaded from: classes.dex */
public class RtmpFunc {
    public static native int encodeAudioFrame(byte[] bArr, int i, int i2);

    public static native int encodeVideoFrame(byte[] bArr, int i, int i2);

    public static native String getVersion();

    public static native boolean init(String str);

    public static native void shutdown();

    static {
        System.loadLibrary("rtmpClient");
    }
}
