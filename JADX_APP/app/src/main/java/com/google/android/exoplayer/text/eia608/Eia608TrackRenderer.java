package com.google.android.exoplayer.text.eia608;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.SampleSourceTrackRenderer;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.TextRenderer;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.util.Collections;
import java.util.TreeSet;

/* loaded from: classes.dex */
public final class Eia608TrackRenderer extends SampleSourceTrackRenderer implements Handler.Callback {
    private static final int CC_MODE_PAINT_ON = 3;
    private static final int CC_MODE_POP_ON = 2;
    private static final int CC_MODE_ROLL_UP = 1;
    private static final int CC_MODE_UNKNOWN = 0;
    private static final int DEFAULT_CAPTIONS_ROW_COUNT = 4;
    private static final int MAX_SAMPLE_READAHEAD_US = 5000000;
    private static final int MSG_INVOKE_RENDERER = 0;
    private String caption;
    private int captionMode;
    private int captionRowCount;
    private final StringBuilder captionStringBuilder;
    private final Eia608Parser eia608Parser;
    private final MediaFormatHolder formatHolder;
    private boolean inputStreamEnded;
    private String lastRenderedCaption;
    private final TreeSet<ClosedCaptionList> pendingCaptionLists;
    private ClosedCaptionCtrl repeatableControl;
    private final SampleHolder sampleHolder;
    private final TextRenderer textRenderer;
    private final Handler textRendererHandler;

    public Eia608TrackRenderer(SampleSource sampleSource, TextRenderer textRenderer, Looper looper) {
        super(sampleSource);
        this.textRenderer = (TextRenderer) Assertions.checkNotNull(textRenderer);
        this.textRendererHandler = looper == null ? null : new Handler(looper, this);
        this.eia608Parser = new Eia608Parser();
        this.formatHolder = new MediaFormatHolder();
        this.sampleHolder = new SampleHolder(1);
        this.captionStringBuilder = new StringBuilder();
        this.pendingCaptionLists = new TreeSet<>();
    }

    @Override // com.google.android.exoplayer.SampleSourceTrackRenderer
    protected boolean handlesTrack(MediaFormat mediaFormat) {
        return this.eia608Parser.canParse(mediaFormat.mimeType);
    }

    @Override // com.google.android.exoplayer.SampleSourceTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(int i, long j, boolean z) {
        super.onEnabled(i, j, z);
    }

    @Override // com.google.android.exoplayer.SampleSourceTrackRenderer
    protected void onDiscontinuity(long j) {
        this.inputStreamEnded = false;
        this.repeatableControl = null;
        this.pendingCaptionLists.clear();
        clearPendingSample();
        this.captionRowCount = 4;
        setCaptionMode(0);
        invokeRenderer(null);
    }

    @Override // com.google.android.exoplayer.SampleSourceTrackRenderer
    protected void doSomeWork(long j, long j2, boolean z) {
        if (isSamplePending()) {
            maybeParsePendingSample(j);
        }
        int i = this.inputStreamEnded ? -1 : -3;
        while (!isSamplePending() && i == -3) {
            i = readSource(j, this.formatHolder, this.sampleHolder);
            if (i == -3) {
                maybeParsePendingSample(j);
            } else if (i == -1) {
                this.inputStreamEnded = true;
            }
        }
        while (!this.pendingCaptionLists.isEmpty() && this.pendingCaptionLists.first().timeUs <= j) {
            ClosedCaptionList pollFirst = this.pendingCaptionLists.pollFirst();
            consumeCaptionList(pollFirst);
            if (!pollFirst.decodeOnly) {
                invokeRenderer(this.caption);
            }
        }
    }

    @Override // com.google.android.exoplayer.SampleSourceTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected long getBufferedPositionUs() {
        return -3L;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        return this.inputStreamEnded;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return true;
    }

    private void invokeRenderer(String str) {
        if (!Util.areEqual(this.lastRenderedCaption, str)) {
            this.lastRenderedCaption = str;
            if (this.textRendererHandler != null) {
                this.textRendererHandler.obtainMessage(0, str).sendToTarget();
            } else {
                invokeRendererInternal(str);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                invokeRendererInternal((String) message.obj);
                return true;
            default:
                return false;
        }
    }

    private void invokeRendererInternal(String str) {
        if (str == null) {
            this.textRenderer.onCues(Collections.emptyList());
        } else {
            this.textRenderer.onCues(Collections.singletonList(new Cue(str)));
        }
    }

    private void maybeParsePendingSample(long j) {
        if (this.sampleHolder.timeUs <= 5000000 + j) {
            ClosedCaptionList parse = this.eia608Parser.parse(this.sampleHolder);
            clearPendingSample();
            if (parse != null) {
                this.pendingCaptionLists.add(parse);
            }
        }
    }

    private void consumeCaptionList(ClosedCaptionList closedCaptionList) {
        int length = closedCaptionList.captions.length;
        if (length != 0) {
            int i = 0;
            boolean z = false;
            while (i < length) {
                ClosedCaption closedCaption = closedCaptionList.captions[i];
                if (closedCaption.type == 0) {
                    ClosedCaptionCtrl closedCaptionCtrl = (ClosedCaptionCtrl) closedCaption;
                    z = length == 1 && closedCaptionCtrl.isRepeatable();
                    if (z && this.repeatableControl != null && this.repeatableControl.cc1 == closedCaptionCtrl.cc1 && this.repeatableControl.cc2 == closedCaptionCtrl.cc2) {
                        this.repeatableControl = null;
                    } else {
                        if (z) {
                            this.repeatableControl = closedCaptionCtrl;
                        }
                        if (closedCaptionCtrl.isMiscCode()) {
                            handleMiscCode(closedCaptionCtrl);
                        } else if (closedCaptionCtrl.isPreambleAddressCode()) {
                            handlePreambleAddressCode();
                        }
                    }
                } else {
                    handleText((ClosedCaptionText) closedCaption);
                }
                i++;
                z = z;
            }
            if (!z) {
                this.repeatableControl = null;
            }
            if (this.captionMode == 1 || this.captionMode == 3) {
                this.caption = getDisplayCaption();
            }
        }
    }

    private void handleText(ClosedCaptionText closedCaptionText) {
        if (this.captionMode != 0) {
            this.captionStringBuilder.append(closedCaptionText.text);
        }
    }

    private void handleMiscCode(ClosedCaptionCtrl closedCaptionCtrl) {
        switch (closedCaptionCtrl.cc2) {
            case 32:
                setCaptionMode(2);
                break;
            case 33:
            case 34:
            case 35:
            case 36:
            case 40:
            default:
                if (this.captionMode != 0) {
                    switch (closedCaptionCtrl.cc2) {
                        case 33:
                            if (this.captionStringBuilder.length() > 0) {
                                this.captionStringBuilder.setLength(this.captionStringBuilder.length() - 1);
                                break;
                            }
                            break;
                        case 44:
                            this.caption = null;
                            if (this.captionMode == 1 || this.captionMode == 3) {
                                this.captionStringBuilder.setLength(0);
                                break;
                            }
                            break;
                        case 45:
                            maybeAppendNewline();
                            break;
                        case 46:
                            this.captionStringBuilder.setLength(0);
                            break;
                        case 47:
                            this.caption = getDisplayCaption();
                            this.captionStringBuilder.setLength(0);
                            break;
                    }
                }
                break;
            case 37:
                this.captionRowCount = 2;
                setCaptionMode(1);
                break;
            case 38:
                this.captionRowCount = 3;
                setCaptionMode(1);
                break;
            case 39:
                this.captionRowCount = 4;
                setCaptionMode(1);
                break;
            case 41:
                setCaptionMode(3);
                break;
        }
    }

    private void handlePreambleAddressCode() {
        maybeAppendNewline();
    }

    private void setCaptionMode(int i) {
        if (this.captionMode != i) {
            this.captionMode = i;
            this.captionStringBuilder.setLength(0);
            if (i == 1 || i == 0) {
                this.caption = null;
            }
        }
    }

    private void maybeAppendNewline() {
        int length = this.captionStringBuilder.length();
        if (length > 0 && this.captionStringBuilder.charAt(length - 1) != '\n') {
            this.captionStringBuilder.append('\n');
        }
    }

    private String getDisplayCaption() {
        int length = this.captionStringBuilder.length();
        if (length == 0) {
            return null;
        }
        boolean z = this.captionStringBuilder.charAt(length + (-1)) == '\n';
        if (length == 1 && z) {
            return null;
        }
        if (z) {
            length--;
        }
        if (this.captionMode != 1) {
            return this.captionStringBuilder.substring(0, length);
        }
        int i = length;
        for (int i2 = 0; i2 < this.captionRowCount && i != -1; i2++) {
            i = this.captionStringBuilder.lastIndexOf("\n", i - 1);
        }
        int i3 = i != -1 ? i + 1 : 0;
        this.captionStringBuilder.delete(0, i3);
        return this.captionStringBuilder.substring(0, length - i3);
    }

    private void clearPendingSample() {
        this.sampleHolder.timeUs = -1L;
        this.sampleHolder.clearData();
    }

    private boolean isSamplePending() {
        return this.sampleHolder.timeUs != -1;
    }
}
