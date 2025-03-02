package com.google.android.exoplayer.upstream;

import android.text.TextUtils;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Predicate;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface HttpDataSource extends UriDataSource {
    public static final Predicate<String> REJECT_PAYWALL_TYPES = new Predicate<String>() { // from class: com.google.android.exoplayer.upstream.HttpDataSource.1
        C12181() {
        }

        @Override // com.google.android.exoplayer.util.Predicate
        public boolean evaluate(String str) {
            String lowerInvariant = Util.toLowerInvariant(str);
            return (TextUtils.isEmpty(lowerInvariant) || (lowerInvariant.contains(MimeTypes.BASE_TYPE_TEXT) && !lowerInvariant.contains(MimeTypes.TEXT_VTT)) || lowerInvariant.contains("html") || lowerInvariant.contains("xml")) ? false : true;
        }
    };

    void clearAllRequestProperties();

    void clearRequestProperty(String str);

    @Override // com.google.android.exoplayer.upstream.DataSource
    void close();

    Map<String, List<String>> getResponseHeaders();

    @Override // com.google.android.exoplayer.upstream.DataSource
    long open(DataSpec dataSpec);

    @Override // com.google.android.exoplayer.upstream.DataSource
    int read(byte[] bArr, int i, int i2);

    void setRequestProperty(String str, String str2);

    /* renamed from: com.google.android.exoplayer.upstream.HttpDataSource$1 */
    static class C12181 implements Predicate<String> {
        C12181() {
        }

        @Override // com.google.android.exoplayer.util.Predicate
        public boolean evaluate(String str) {
            String lowerInvariant = Util.toLowerInvariant(str);
            return (TextUtils.isEmpty(lowerInvariant) || (lowerInvariant.contains(MimeTypes.BASE_TYPE_TEXT) && !lowerInvariant.contains(MimeTypes.TEXT_VTT)) || lowerInvariant.contains("html") || lowerInvariant.contains("xml")) ? false : true;
        }
    }

    public static class HttpDataSourceException extends IOException {
        public static final int TYPE_CLOSE = 3;
        public static final int TYPE_OPEN = 1;
        public static final int TYPE_READ = 2;
        public final DataSpec dataSpec;
        public final int type;

        public HttpDataSourceException(DataSpec dataSpec, int i) {
            this.dataSpec = dataSpec;
            this.type = i;
        }

        public HttpDataSourceException(String str, DataSpec dataSpec, int i) {
            super(str);
            this.dataSpec = dataSpec;
            this.type = i;
        }

        public HttpDataSourceException(IOException iOException, DataSpec dataSpec, int i) {
            super(iOException);
            this.dataSpec = dataSpec;
            this.type = i;
        }

        public HttpDataSourceException(String str, IOException iOException, DataSpec dataSpec, int i) {
            super(str, iOException);
            this.dataSpec = dataSpec;
            this.type = i;
        }
    }

    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        public InvalidContentTypeException(String str, DataSpec dataSpec) {
            super("Invalid content type: " + str, dataSpec, 1);
            this.contentType = str;
        }
    }

    public static final class InvalidResponseCodeException extends HttpDataSourceException {
        public final Map<String, List<String>> headerFields;
        public final int responseCode;

        public InvalidResponseCodeException(int i, Map<String, List<String>> map, DataSpec dataSpec) {
            super("Response code: " + i, dataSpec, 1);
            this.responseCode = i;
            this.headerFields = map;
        }
    }
}
