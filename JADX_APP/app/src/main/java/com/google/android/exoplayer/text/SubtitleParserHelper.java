package com.google.android.exoplayer.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* loaded from: classes.dex */
final class SubtitleParserHelper implements Handler.Callback {
    private static final int MSG_FORMAT = 0;
    private static final int MSG_SAMPLE = 1;
    private IOException error;
    private final Handler handler;
    private final SubtitleParser parser;
    private boolean parsing;
    private PlayableSubtitle result;
    private RuntimeException runtimeError;
    private SampleHolder sampleHolder;
    private long subtitleOffsetUs;
    private boolean subtitlesAreRelative;

    public SubtitleParserHelper(Looper looper, SubtitleParser subtitleParser) {
        this.handler = new Handler(looper, this);
        this.parser = subtitleParser;
        flush();
    }

    public synchronized void flush() {
        this.sampleHolder = new SampleHolder(1);
        this.parsing = false;
        this.result = null;
        this.error = null;
        this.runtimeError = null;
    }

    public synchronized boolean isParsing() {
        return this.parsing;
    }

    public synchronized SampleHolder getSampleHolder() {
        return this.sampleHolder;
    }

    public void setFormat(MediaFormat mediaFormat) {
        this.handler.obtainMessage(0, mediaFormat).sendToTarget();
    }

    public synchronized void startParseOperation() {
        synchronized (this) {
            Assertions.checkState(this.parsing ? false : true);
            this.parsing = true;
            this.result = null;
            this.error = null;
            this.runtimeError = null;
            this.handler.obtainMessage(1, Util.getTopInt(this.sampleHolder.timeUs), Util.getBottomInt(this.sampleHolder.timeUs), this.sampleHolder).sendToTarget();
        }
    }

    public synchronized PlayableSubtitle getAndClearResult() {
        PlayableSubtitle playableSubtitle;
        try {
            if (this.error != null) {
                throw this.error;
            }
            if (this.runtimeError != null) {
                throw this.runtimeError;
            }
            playableSubtitle = this.result;
            this.result = null;
            this.error = null;
            this.runtimeError = null;
        } catch (Throwable th) {
            this.result = null;
            this.error = null;
            this.runtimeError = null;
            throw th;
        }
        return playableSubtitle;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                handleFormat((MediaFormat) message.obj);
                break;
            case 1:
                handleSample(Util.getLong(message.arg1, message.arg2), (SampleHolder) message.obj);
                break;
        }
        return true;
    }

    private void handleFormat(MediaFormat mediaFormat) {
        this.subtitlesAreRelative = mediaFormat.subsampleOffsetUs == Long.MAX_VALUE;
        this.subtitleOffsetUs = this.subtitlesAreRelative ? 0L : mediaFormat.subsampleOffsetUs;
    }

    private void handleSample(long j, SampleHolder sampleHolder) {
        ParserException parserException;
        Subtitle subtitle;
        try {
            subtitle = this.parser.parse(sampleHolder.data.array(), 0, sampleHolder.size);
            e = null;
            parserException = null;
        } catch (ParserException e) {
            e = null;
            parserException = e;
            subtitle = null;
        } catch (RuntimeException e2) {
            e = e2;
            parserException = null;
            subtitle = null;
        }
        synchronized (this) {
            if (this.sampleHolder == sampleHolder) {
                this.result = new PlayableSubtitle(subtitle, this.subtitlesAreRelative, j, this.subtitleOffsetUs);
                this.error = parserException;
                this.runtimeError = e;
                this.parsing = false;
            }
        }
    }
}
