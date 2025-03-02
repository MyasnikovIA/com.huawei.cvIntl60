package com.google.android.exoplayer.hls;

import android.text.TextUtils;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.extractor.p095ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.android.exoplayer.text.webvtt.WebvttCueParser;
import com.google.android.exoplayer.text.webvtt.WebvttParserUtil;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class WebvttExtractor implements Extractor {
    private static final Pattern LOCAL_TIMESTAMP = Pattern.compile("LOCAL:([^,]+)");
    private static final Pattern MEDIA_TIMESTAMP = Pattern.compile("MPEGTS:(\\d+)");
    private ExtractorOutput output;
    private final PtsTimestampAdjuster ptsTimestampAdjuster;
    private int sampleSize;
    private final ParsableByteArray sampleDataWrapper = new ParsableByteArray();
    private byte[] sampleData = new byte[1024];

    public WebvttExtractor(PtsTimestampAdjuster ptsTimestampAdjuster) {
        this.ptsTimestampAdjuster = ptsTimestampAdjuster;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
        extractorOutput.seekMap(SeekMap.UNSEEKABLE);
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void seek() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        int length = (int) extractorInput.getLength();
        if (this.sampleSize == this.sampleData.length) {
            this.sampleData = Arrays.copyOf(this.sampleData, ((length != -1 ? length : this.sampleData.length) * 3) / 2);
        }
        int read = extractorInput.read(this.sampleData, this.sampleSize, this.sampleData.length - this.sampleSize);
        if (read != -1) {
            this.sampleSize = read + this.sampleSize;
            if (length == -1 || this.sampleSize != length) {
                return 0;
            }
        }
        processSample();
        return -1;
    }

    private void processSample() {
        ParsableByteArray parsableByteArray = new ParsableByteArray(this.sampleData);
        WebvttParserUtil.validateWebvttHeaderLine(parsableByteArray);
        long j = 0;
        long j2 = 0;
        while (true) {
            String readLine = parsableByteArray.readLine();
            if (!TextUtils.isEmpty(readLine)) {
                if (readLine.startsWith("X-TIMESTAMP-MAP")) {
                    Matcher matcher = LOCAL_TIMESTAMP.matcher(readLine);
                    if (!matcher.find()) {
                        throw new ParserException("X-TIMESTAMP-MAP doesn't contain local timestamp: " + readLine);
                    }
                    Matcher matcher2 = MEDIA_TIMESTAMP.matcher(readLine);
                    if (!matcher2.find()) {
                        throw new ParserException("X-TIMESTAMP-MAP doesn't contain media timestamp: " + readLine);
                    }
                    j2 = WebvttParserUtil.parseTimestampUs(matcher.group(1));
                    j = PtsTimestampAdjuster.ptsToUs(Long.parseLong(matcher2.group(1)));
                }
            } else {
                Matcher findNextCueHeader = WebvttCueParser.findNextCueHeader(parsableByteArray);
                if (findNextCueHeader == null) {
                    buildTrackOutput(0L);
                    return;
                }
                long parseTimestampUs = WebvttParserUtil.parseTimestampUs(findNextCueHeader.group(1));
                long adjustTimestamp = this.ptsTimestampAdjuster.adjustTimestamp(PtsTimestampAdjuster.usToPts((j + parseTimestampUs) - j2));
                TrackOutput buildTrackOutput = buildTrackOutput(adjustTimestamp - parseTimestampUs);
                this.sampleDataWrapper.reset(this.sampleData, this.sampleSize);
                buildTrackOutput.sampleData(this.sampleDataWrapper, this.sampleSize);
                buildTrackOutput.sampleMetadata(adjustTimestamp, 1, this.sampleSize, 0, null);
                return;
            }
        }
    }

    private TrackOutput buildTrackOutput(long j) {
        TrackOutput track = this.output.track(0);
        track.format(MediaFormat.createTextFormat(TtmlNode.ATTR_ID, MimeTypes.TEXT_VTT, -1, -1L, "en", j));
        this.output.endTracks();
        return track;
    }
}
