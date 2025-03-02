package com.google.api.client.googleapis.json;

import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Preconditions;

/* loaded from: classes.dex */
public class GoogleJsonResponseException extends HttpResponseException {
    private static final long serialVersionUID = 409811126989994864L;
    private final transient GoogleJsonError details;

    public GoogleJsonResponseException(HttpResponseException.Builder builder, GoogleJsonError googleJsonError) {
        super(builder);
        this.details = googleJsonError;
    }

    public final GoogleJsonError getDetails() {
        return this.details;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005e A[Catch: IOException -> 0x00c6, TRY_ENTER, TRY_LEAVE, TryCatch #4 {IOException -> 0x00c6, blocks: (B:25:0x005e, B:36:0x0087), top: B:23:0x005c }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00a9 A[Catch: IOException -> 0x00ad, TRY_ENTER, TryCatch #7 {IOException -> 0x00ad, blocks: (B:63:0x00a9, B:64:0x00ac, B:67:0x00b7), top: B:61:0x00a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.api.client.googleapis.json.GoogleJsonResponseException from(com.google.api.client.json.JsonFactory r7, com.google.api.client.http.HttpResponse r8) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.json.GoogleJsonResponseException.from(com.google.api.client.json.JsonFactory, com.google.api.client.http.HttpResponse):com.google.api.client.googleapis.json.GoogleJsonResponseException");
    }

    public static HttpResponse execute(JsonFactory jsonFactory, HttpRequest httpRequest) {
        Preconditions.checkNotNull(jsonFactory);
        boolean throwExceptionOnExecuteError = httpRequest.getThrowExceptionOnExecuteError();
        if (throwExceptionOnExecuteError) {
            httpRequest.setThrowExceptionOnExecuteError(false);
        }
        HttpResponse execute = httpRequest.execute();
        httpRequest.setThrowExceptionOnExecuteError(throwExceptionOnExecuteError);
        if (!throwExceptionOnExecuteError || execute.isSuccessStatusCode()) {
            return execute;
        }
        throw from(jsonFactory, execute);
    }
}
