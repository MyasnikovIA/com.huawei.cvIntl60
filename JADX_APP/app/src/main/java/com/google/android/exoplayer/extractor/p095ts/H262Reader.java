package com.google.android.exoplayer.extractor.p095ts;

import android.util.Pair;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes.dex */
final class H262Reader extends ElementaryStreamReader {
    private static final double[] FRAME_RATE_VALUES = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private static final int START_EXTENSION = 181;
    private static final int START_GROUP = 184;
    private static final int START_PICTURE = 0;
    private static final int START_SEQUENCE_HEADER = 179;
    private final CsdBuffer csdBuffer;
    private boolean foundFirstFrameInGroup;
    private long frameDurationUs;
    private long framePosition;
    private long frameTimeUs;
    private boolean hasOutputFormat;
    private boolean isKeyframe;
    private boolean pesPtsUsAvailable;
    private long pesTimeUs;
    private final boolean[] prefixFlags;
    private long totalBytesWritten;

    public H262Reader(TrackOutput trackOutput) {
        super(trackOutput);
        this.prefixFlags = new boolean[4];
        this.csdBuffer = new CsdBuffer(128);
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void seek() {
        NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.csdBuffer.reset();
        this.pesPtsUsAvailable = false;
        this.foundFirstFrameInGroup = false;
        this.totalBytesWritten = 0L;
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void packetStarted(long j, boolean z) {
        this.pesPtsUsAvailable = j != -1;
        if (this.pesPtsUsAvailable) {
            this.pesTimeUs = j;
        }
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.bytesLeft() > 0) {
            int position = parsableByteArray.getPosition();
            int limit = parsableByteArray.limit();
            byte[] bArr = parsableByteArray.data;
            this.totalBytesWritten += parsableByteArray.bytesLeft();
            this.output.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
            int i = position;
            int i2 = position;
            while (true) {
                int findNalUnit = NalUnitUtil.findNalUnit(bArr, i, limit, this.prefixFlags);
                if (findNalUnit == limit) {
                    break;
                }
                int i3 = parsableByteArray.data[findNalUnit + 3] & 255;
                if (!this.hasOutputFormat) {
                    int i4 = findNalUnit - i2;
                    if (i4 > 0) {
                        this.csdBuffer.onData(bArr, i2, findNalUnit);
                    }
                    if (this.csdBuffer.onStartCode(i3, i4 < 0 ? -i4 : 0)) {
                        Pair<MediaFormat, Long> parseCsdBuffer = parseCsdBuffer(this.csdBuffer);
                        this.output.format((MediaFormat) parseCsdBuffer.first);
                        this.frameDurationUs = ((Long) parseCsdBuffer.second).longValue();
                        this.hasOutputFormat = true;
                    }
                }
                if (this.hasOutputFormat && (i3 == START_GROUP || i3 == 0)) {
                    int i5 = limit - findNalUnit;
                    if (this.foundFirstFrameInGroup) {
                        this.output.sampleMetadata(this.frameTimeUs, this.isKeyframe ? 1 : 0, ((int) (this.totalBytesWritten - this.framePosition)) - i5, i5, null);
                        this.isKeyframe = false;
                    }
                    if (i3 == START_GROUP) {
                        this.foundFirstFrameInGroup = false;
                        this.isKeyframe = true;
                    } else {
                        this.frameTimeUs = this.pesPtsUsAvailable ? this.pesTimeUs : this.frameTimeUs + this.frameDurationUs;
                        this.framePosition = this.totalBytesWritten - i5;
                        this.pesPtsUsAvailable = false;
                        this.foundFirstFrameInGroup = true;
                    }
                }
                i = findNalUnit + 3;
                i2 = findNalUnit;
            }
            if (!this.hasOutputFormat) {
                this.csdBuffer.onData(bArr, i2, limit);
            }
        }
    }

    @Override // com.google.android.exoplayer.extractor.p095ts.ElementaryStreamReader
    public void packetFinished() {
    }

    private static Pair<MediaFormat, Long> parseCsdBuffer(CsdBuffer csdBuffer) {
        byte[] copyOf = Arrays.copyOf(csdBuffer.data, csdBuffer.length);
        int i = copyOf[4] & 255;
        int i2 = copyOf[5] & 255;
        int i3 = (i << 4) | (i2 >> 4);
        int i4 = ((i2 & 15) << 8) | (copyOf[6] & 255);
        float f = 1.0f;
        switch ((copyOf[7] & 240) >> 4) {
            case 2:
                f = (i4 * 4) / (i3 * 3);
                break;
            case 3:
                f = (i4 * 16) / (i3 * 9);
                break;
            case 4:
                f = (i4 * 121) / (i3 * 100);
                break;
        }
        MediaFormat createVideoFormat = MediaFormat.createVideoFormat(null, MimeTypes.VIDEO_MPEG2, -1, -1, -1L, i3, i4, Collections.singletonList(copyOf), -1, f);
        long j = 0;
        int i5 = (copyOf[7] & 15) - 1;
        if (i5 >= 0 && i5 < FRAME_RATE_VALUES.length) {
            double d = FRAME_RATE_VALUES[i5];
            int i6 = csdBuffer.sequenceExtensionPosition;
            int i7 = (copyOf[i6 + 9] & 96) >> 5;
            if (i7 != (copyOf[i6 + 9] & ClosedCaptionCtrl.TAB_OFFSET_CHAN_2)) {
                d *= (i7 + 1.0d) / (r3 + 1);
            }
            j = (long) (1000000.0d / d);
        }
        return Pair.create(createVideoFormat, Long.valueOf(j));
    }

    private static final class CsdBuffer {
        public byte[] data;
        private boolean isFilling;
        public int length;
        public int sequenceExtensionPosition;

        public CsdBuffer(int i) {
            this.data = new byte[i];
        }

        public void reset() {
            this.isFilling = false;
            this.length = 0;
            this.sequenceExtensionPosition = 0;
        }

        public boolean onStartCode(int i, int i2) {
            if (this.isFilling) {
                if (this.sequenceExtensionPosition == 0 && i == H262Reader.START_EXTENSION) {
                    this.sequenceExtensionPosition = this.length;
                } else {
                    this.length -= i2;
                    this.isFilling = false;
                    return true;
                }
            } else if (i == H262Reader.START_SEQUENCE_HEADER) {
                this.isFilling = true;
            }
            return false;
        }

        public void onData(byte[] bArr, int i, int i2) {
            if (this.isFilling) {
                int i3 = i2 - i;
                if (this.data.length < this.length + i3) {
                    this.data = Arrays.copyOf(this.data, (this.length + i3) * 2);
                }
                System.arraycopy(bArr, i, this.data, this.length, i3);
                this.length = i3 + this.length;
            }
        }
    }
}
