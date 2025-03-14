package tv.danmaku.ijk.media.player.misc;

import android.annotation.TargetApi;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes.dex */
public class IjkMediaFormat implements IMediaFormat {
    public static final String CODEC_NAME_H264 = "h264";
    public static final String KEY_IJK_BIT_RATE_UI = "ijk-bit-rate-ui";
    public static final String KEY_IJK_CHANNEL_UI = "ijk-channel-ui";
    public static final String KEY_IJK_CODEC_LONG_NAME_UI = "ijk-codec-long-name-ui";
    public static final String KEY_IJK_CODEC_NAME_UI = "ijk-codec-name-ui";
    public static final String KEY_IJK_CODEC_PIXEL_FORMAT_UI = "ijk-pixel-format-ui";
    public static final String KEY_IJK_CODEC_PROFILE_LEVEL_UI = "ijk-profile-level-ui";
    public static final String KEY_IJK_FRAME_RATE_UI = "ijk-frame-rate-ui";
    public static final String KEY_IJK_RESOLUTION_UI = "ijk-resolution-ui";
    public static final String KEY_IJK_SAMPLE_RATE_UI = "ijk-sample-rate-ui";
    private static final Map<String, Formatter> sFormatterMap = new HashMap();
    public final IjkMediaMeta.IjkStreamMeta mMediaFormat;

    public IjkMediaFormat(IjkMediaMeta.IjkStreamMeta ijkStreamMeta) {
        sFormatterMap.put(KEY_IJK_CODEC_LONG_NAME_UI, new Formatter() { // from class: tv.danmaku.ijk.media.player.misc.IjkMediaFormat.1
            C16021() {
            }

            @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
            public String doFormat(IjkMediaFormat ijkMediaFormat) {
                return IjkMediaFormat.this.mMediaFormat.getString(IjkMediaMeta.IJKM_KEY_CODEC_LONG_NAME);
            }
        });
        sFormatterMap.put(KEY_IJK_CODEC_NAME_UI, new Formatter() { // from class: tv.danmaku.ijk.media.player.misc.IjkMediaFormat.2
            C16032() {
            }

            @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
            public String doFormat(IjkMediaFormat ijkMediaFormat) {
                return IjkMediaFormat.this.mMediaFormat.getString(IjkMediaMeta.IJKM_KEY_CODEC_NAME);
            }
        });
        sFormatterMap.put(KEY_IJK_BIT_RATE_UI, new Formatter() { // from class: tv.danmaku.ijk.media.player.misc.IjkMediaFormat.3
            C16043() {
            }

            @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
            protected String doFormat(IjkMediaFormat ijkMediaFormat) {
                int integer = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_BITRATE);
                if (integer <= 0) {
                    return null;
                }
                return integer < 1000 ? String.format(Locale.US, "%d bit/s", Integer.valueOf(integer)) : String.format(Locale.US, "%d kb/s", Integer.valueOf(integer / 1000));
            }
        });
        sFormatterMap.put(KEY_IJK_CODEC_PROFILE_LEVEL_UI, new Formatter() { // from class: tv.danmaku.ijk.media.player.misc.IjkMediaFormat.4
            C16054() {
            }

            @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
            protected String doFormat(IjkMediaFormat ijkMediaFormat) {
                String str;
                switch (ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_CODEC_PROFILE_ID)) {
                    case 44:
                        str = "CAVLC 4:4:4";
                        break;
                    case 66:
                        str = "Baseline";
                        break;
                    case 77:
                        str = "Main";
                        break;
                    case 88:
                        str = "Extended";
                        break;
                    case 100:
                        str = "High";
                        break;
                    case 110:
                        str = "High 10";
                        break;
                    case IjkMediaMeta.FF_PROFILE_H264_HIGH_422 /* 122 */:
                        str = "High 4:2:2";
                        break;
                    case IjkMediaMeta.FF_PROFILE_H264_HIGH_444 /* 144 */:
                        str = "High 4:4:4";
                        break;
                    case IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE /* 244 */:
                        str = "High 4:4:4 Predictive";
                        break;
                    case IjkMediaMeta.FF_PROFILE_H264_CONSTRAINED_BASELINE /* 578 */:
                        str = "Constrained Baseline";
                        break;
                    case IjkMediaMeta.FF_PROFILE_H264_HIGH_10_INTRA /* 2158 */:
                        str = "High 10 Intra";
                        break;
                    case IjkMediaMeta.FF_PROFILE_H264_HIGH_422_INTRA /* 2170 */:
                        str = "High 4:2:2 Intra";
                        break;
                    case IjkMediaMeta.FF_PROFILE_H264_HIGH_444_INTRA /* 2292 */:
                        str = "High 4:4:4 Intra";
                        break;
                    default:
                        return null;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                String string = ijkMediaFormat.getString(IjkMediaMeta.IJKM_KEY_CODEC_NAME);
                if (!TextUtils.isEmpty(string) && string.equalsIgnoreCase(IjkMediaFormat.CODEC_NAME_H264)) {
                    int integer = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_CODEC_LEVEL);
                    if (integer < 10) {
                        return sb.toString();
                    }
                    sb.append(" Profile Level ");
                    sb.append((integer / 10) % 10);
                    if (integer % 10 != 0) {
                        sb.append(".");
                        sb.append(integer % 10);
                    }
                }
                return sb.toString();
            }
        });
        sFormatterMap.put(KEY_IJK_CODEC_PIXEL_FORMAT_UI, new Formatter() { // from class: tv.danmaku.ijk.media.player.misc.IjkMediaFormat.5
            C16065() {
            }

            @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
            protected String doFormat(IjkMediaFormat ijkMediaFormat) {
                return ijkMediaFormat.getString(IjkMediaMeta.IJKM_KEY_CODEC_PIXEL_FORMAT);
            }
        });
        sFormatterMap.put(KEY_IJK_RESOLUTION_UI, new Formatter() { // from class: tv.danmaku.ijk.media.player.misc.IjkMediaFormat.6
            C16076() {
            }

            @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
            protected String doFormat(IjkMediaFormat ijkMediaFormat) {
                int integer = ijkMediaFormat.getInteger("width");
                int integer2 = ijkMediaFormat.getInteger("height");
                int integer3 = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_SAR_NUM);
                int integer4 = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_SAR_DEN);
                if (integer <= 0 || integer2 <= 0) {
                    return null;
                }
                return (integer3 <= 0 || integer4 <= 0) ? String.format(Locale.US, "%d x %d", Integer.valueOf(integer), Integer.valueOf(integer2)) : String.format(Locale.US, "%d x %d [SAR %d:%d]", Integer.valueOf(integer), Integer.valueOf(integer2), Integer.valueOf(integer3), Integer.valueOf(integer4));
            }
        });
        sFormatterMap.put(KEY_IJK_FRAME_RATE_UI, new Formatter() { // from class: tv.danmaku.ijk.media.player.misc.IjkMediaFormat.7
            C16087() {
            }

            @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
            protected String doFormat(IjkMediaFormat ijkMediaFormat) {
                int integer = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_FPS_NUM);
                int integer2 = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_FPS_DEN);
                if (integer <= 0 || integer2 <= 0) {
                    return null;
                }
                return String.valueOf(integer / integer2);
            }
        });
        sFormatterMap.put(KEY_IJK_SAMPLE_RATE_UI, new Formatter() { // from class: tv.danmaku.ijk.media.player.misc.IjkMediaFormat.8
            C16098() {
            }

            @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
            protected String doFormat(IjkMediaFormat ijkMediaFormat) {
                int integer = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_SAMPLE_RATE);
                if (integer <= 0) {
                    return null;
                }
                return String.format(Locale.US, "%d Hz", Integer.valueOf(integer));
            }
        });
        sFormatterMap.put(KEY_IJK_CHANNEL_UI, new Formatter() { // from class: tv.danmaku.ijk.media.player.misc.IjkMediaFormat.9
            C16109() {
            }

            @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
            protected String doFormat(IjkMediaFormat ijkMediaFormat) {
                int integer = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_CHANNEL_LAYOUT);
                if (integer <= 0) {
                    return null;
                }
                if (integer == 4) {
                    return "mono";
                }
                return ((long) integer) == 3 ? "stereo" : String.format(Locale.US, "%x", Integer.valueOf(integer));
            }
        });
        this.mMediaFormat = ijkStreamMeta;
    }

    @Override // tv.danmaku.ijk.media.player.misc.IMediaFormat
    @TargetApi(16)
    public int getInteger(String str) {
        if (this.mMediaFormat == null) {
            return 0;
        }
        return this.mMediaFormat.getInt(str);
    }

    @Override // tv.danmaku.ijk.media.player.misc.IMediaFormat
    public String getString(String str) {
        if (this.mMediaFormat == null) {
            return null;
        }
        if (sFormatterMap.containsKey(str)) {
            return sFormatterMap.get(str).format(this);
        }
        return this.mMediaFormat.getString(str);
    }

    private static abstract class Formatter {
        protected abstract String doFormat(IjkMediaFormat ijkMediaFormat);

        private Formatter() {
        }

        /* synthetic */ Formatter(C16021 c16021) {
            this();
        }

        public String format(IjkMediaFormat ijkMediaFormat) {
            String doFormat = doFormat(ijkMediaFormat);
            if (TextUtils.isEmpty(doFormat)) {
                return getDefaultString();
            }
            return doFormat;
        }

        protected String getDefaultString() {
            return "N/A";
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.misc.IjkMediaFormat$1 */
    class C16021 extends Formatter {
        C16021() {
        }

        @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
        public String doFormat(IjkMediaFormat ijkMediaFormat) {
            return IjkMediaFormat.this.mMediaFormat.getString(IjkMediaMeta.IJKM_KEY_CODEC_LONG_NAME);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.misc.IjkMediaFormat$2 */
    class C16032 extends Formatter {
        C16032() {
        }

        @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
        public String doFormat(IjkMediaFormat ijkMediaFormat) {
            return IjkMediaFormat.this.mMediaFormat.getString(IjkMediaMeta.IJKM_KEY_CODEC_NAME);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.misc.IjkMediaFormat$3 */
    class C16043 extends Formatter {
        C16043() {
        }

        @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
        protected String doFormat(IjkMediaFormat ijkMediaFormat) {
            int integer = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_BITRATE);
            if (integer <= 0) {
                return null;
            }
            return integer < 1000 ? String.format(Locale.US, "%d bit/s", Integer.valueOf(integer)) : String.format(Locale.US, "%d kb/s", Integer.valueOf(integer / 1000));
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.misc.IjkMediaFormat$4 */
    class C16054 extends Formatter {
        C16054() {
        }

        @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
        protected String doFormat(IjkMediaFormat ijkMediaFormat) {
            String str;
            switch (ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_CODEC_PROFILE_ID)) {
                case 44:
                    str = "CAVLC 4:4:4";
                    break;
                case 66:
                    str = "Baseline";
                    break;
                case 77:
                    str = "Main";
                    break;
                case 88:
                    str = "Extended";
                    break;
                case 100:
                    str = "High";
                    break;
                case 110:
                    str = "High 10";
                    break;
                case IjkMediaMeta.FF_PROFILE_H264_HIGH_422 /* 122 */:
                    str = "High 4:2:2";
                    break;
                case IjkMediaMeta.FF_PROFILE_H264_HIGH_444 /* 144 */:
                    str = "High 4:4:4";
                    break;
                case IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE /* 244 */:
                    str = "High 4:4:4 Predictive";
                    break;
                case IjkMediaMeta.FF_PROFILE_H264_CONSTRAINED_BASELINE /* 578 */:
                    str = "Constrained Baseline";
                    break;
                case IjkMediaMeta.FF_PROFILE_H264_HIGH_10_INTRA /* 2158 */:
                    str = "High 10 Intra";
                    break;
                case IjkMediaMeta.FF_PROFILE_H264_HIGH_422_INTRA /* 2170 */:
                    str = "High 4:2:2 Intra";
                    break;
                case IjkMediaMeta.FF_PROFILE_H264_HIGH_444_INTRA /* 2292 */:
                    str = "High 4:4:4 Intra";
                    break;
                default:
                    return null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            String string = ijkMediaFormat.getString(IjkMediaMeta.IJKM_KEY_CODEC_NAME);
            if (!TextUtils.isEmpty(string) && string.equalsIgnoreCase(IjkMediaFormat.CODEC_NAME_H264)) {
                int integer = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_CODEC_LEVEL);
                if (integer < 10) {
                    return sb.toString();
                }
                sb.append(" Profile Level ");
                sb.append((integer / 10) % 10);
                if (integer % 10 != 0) {
                    sb.append(".");
                    sb.append(integer % 10);
                }
            }
            return sb.toString();
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.misc.IjkMediaFormat$5 */
    class C16065 extends Formatter {
        C16065() {
        }

        @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
        protected String doFormat(IjkMediaFormat ijkMediaFormat) {
            return ijkMediaFormat.getString(IjkMediaMeta.IJKM_KEY_CODEC_PIXEL_FORMAT);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.misc.IjkMediaFormat$6 */
    class C16076 extends Formatter {
        C16076() {
        }

        @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
        protected String doFormat(IjkMediaFormat ijkMediaFormat) {
            int integer = ijkMediaFormat.getInteger("width");
            int integer2 = ijkMediaFormat.getInteger("height");
            int integer3 = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_SAR_NUM);
            int integer4 = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_SAR_DEN);
            if (integer <= 0 || integer2 <= 0) {
                return null;
            }
            return (integer3 <= 0 || integer4 <= 0) ? String.format(Locale.US, "%d x %d", Integer.valueOf(integer), Integer.valueOf(integer2)) : String.format(Locale.US, "%d x %d [SAR %d:%d]", Integer.valueOf(integer), Integer.valueOf(integer2), Integer.valueOf(integer3), Integer.valueOf(integer4));
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.misc.IjkMediaFormat$7 */
    class C16087 extends Formatter {
        C16087() {
        }

        @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
        protected String doFormat(IjkMediaFormat ijkMediaFormat) {
            int integer = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_FPS_NUM);
            int integer2 = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_FPS_DEN);
            if (integer <= 0 || integer2 <= 0) {
                return null;
            }
            return String.valueOf(integer / integer2);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.misc.IjkMediaFormat$8 */
    class C16098 extends Formatter {
        C16098() {
        }

        @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
        protected String doFormat(IjkMediaFormat ijkMediaFormat) {
            int integer = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_SAMPLE_RATE);
            if (integer <= 0) {
                return null;
            }
            return String.format(Locale.US, "%d Hz", Integer.valueOf(integer));
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.misc.IjkMediaFormat$9 */
    class C16109 extends Formatter {
        C16109() {
        }

        @Override // tv.danmaku.ijk.media.player.misc.IjkMediaFormat.Formatter
        protected String doFormat(IjkMediaFormat ijkMediaFormat) {
            int integer = ijkMediaFormat.getInteger(IjkMediaMeta.IJKM_KEY_CHANNEL_LAYOUT);
            if (integer <= 0) {
                return null;
            }
            if (integer == 4) {
                return "mono";
            }
            return ((long) integer) == 3 ? "stereo" : String.format(Locale.US, "%x", Integer.valueOf(integer));
        }
    }
}
