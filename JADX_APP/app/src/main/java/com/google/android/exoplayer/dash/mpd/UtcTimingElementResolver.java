package com.google.android.exoplayer.dash.mpd;

import android.os.SystemClock;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.upstream.UriDataSource;
import com.google.android.exoplayer.upstream.UriLoadable;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class UtcTimingElementResolver implements Loader.Callback {
    private final UtcTimingCallback callback;
    private UriLoadable<Long> singleUseLoadable;
    private Loader singleUseLoader;
    private final UtcTimingElement timingElement;
    private final long timingElementElapsedRealtime;
    private final UriDataSource uriDataSource;

    public interface UtcTimingCallback {
        void onTimestampError(UtcTimingElement utcTimingElement, IOException iOException);

        void onTimestampResolved(UtcTimingElement utcTimingElement, long j);
    }

    public static void resolveTimingElement(UriDataSource uriDataSource, UtcTimingElement utcTimingElement, long j, UtcTimingCallback utcTimingCallback) {
        new UtcTimingElementResolver(uriDataSource, utcTimingElement, j, utcTimingCallback).resolve();
    }

    private UtcTimingElementResolver(UriDataSource uriDataSource, UtcTimingElement utcTimingElement, long j, UtcTimingCallback utcTimingCallback) {
        this.uriDataSource = uriDataSource;
        this.timingElement = (UtcTimingElement) Assertions.checkNotNull(utcTimingElement);
        this.timingElementElapsedRealtime = j;
        this.callback = (UtcTimingCallback) Assertions.checkNotNull(utcTimingCallback);
    }

    private void resolve() {
        String str = this.timingElement.schemeIdUri;
        if (Util.areEqual(str, "urn:mpeg:dash:utc:direct:2012")) {
            resolveDirect();
            return;
        }
        if (Util.areEqual(str, "urn:mpeg:dash:utc:http-iso:2014")) {
            resolveHttp(new Iso8601Parser());
        } else if (Util.areEqual(str, "urn:mpeg:dash:utc:http-xsdate:2012") || Util.areEqual(str, "urn:mpeg:dash:utc:http-xsdate:2014")) {
            resolveHttp(new XsDateTimeParser());
        } else {
            this.callback.onTimestampError(this.timingElement, new IOException("Unsupported utc timing scheme"));
        }
    }

    private void resolveDirect() {
        try {
            this.callback.onTimestampResolved(this.timingElement, Util.parseXsDateTime(this.timingElement.value) - this.timingElementElapsedRealtime);
        } catch (ParseException e) {
            this.callback.onTimestampError(this.timingElement, new ParserException(e));
        }
    }

    private void resolveHttp(UriLoadable.Parser<Long> parser) {
        this.singleUseLoader = new Loader("utctiming");
        this.singleUseLoadable = new UriLoadable<>(this.timingElement.value, this.uriDataSource, parser);
        this.singleUseLoader.startLoading(this.singleUseLoadable, this);
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCanceled(Loader.Loadable loadable) {
        onLoadError(loadable, new IOException("Load cancelled", new CancellationException()));
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadCompleted(Loader.Loadable loadable) {
        releaseLoader();
        this.callback.onTimestampResolved(this.timingElement, this.singleUseLoadable.getResult().longValue() - SystemClock.elapsedRealtime());
    }

    @Override // com.google.android.exoplayer.upstream.Loader.Callback
    public void onLoadError(Loader.Loadable loadable, IOException iOException) {
        releaseLoader();
        this.callback.onTimestampError(this.timingElement, iOException);
    }

    private void releaseLoader() {
        this.singleUseLoader.release();
    }

    private static class XsDateTimeParser implements UriLoadable.Parser<Long> {
        private XsDateTimeParser() {
        }

        /* synthetic */ XsDateTimeParser(C11951 c11951) {
            this();
        }

        @Override // com.google.android.exoplayer.upstream.UriLoadable.Parser
        public Long parse(String str, InputStream inputStream) {
            try {
                return Long.valueOf(Util.parseXsDateTime(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
            } catch (ParseException e) {
                throw new ParserException(e);
            }
        }
    }

    private static class Iso8601Parser implements UriLoadable.Parser<Long> {
        private Iso8601Parser() {
        }

        /* synthetic */ Iso8601Parser(C11951 c11951) {
            this();
        }

        @Override // com.google.android.exoplayer.upstream.UriLoadable.Parser
        public Long parse(String str, InputStream inputStream) {
            String readLine = new BufferedReader(new InputStreamReader(inputStream)).readLine();
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                return Long.valueOf(simpleDateFormat.parse(readLine).getTime());
            } catch (ParseException e) {
                throw new ParserException(e);
            }
        }
    }
}
