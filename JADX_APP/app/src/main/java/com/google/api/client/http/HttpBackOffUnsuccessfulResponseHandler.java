package com.google.api.client.http;

import com.google.api.client.util.BackOff;
import com.google.api.client.util.BackOffUtils;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Sleeper;

@Beta
/* loaded from: classes.dex */
public class HttpBackOffUnsuccessfulResponseHandler implements HttpUnsuccessfulResponseHandler {
    private final BackOff backOff;
    private BackOffRequired backOffRequired = BackOffRequired.ON_SERVER_ERROR;
    private Sleeper sleeper = Sleeper.DEFAULT;

    public HttpBackOffUnsuccessfulResponseHandler(BackOff backOff) {
        this.backOff = (BackOff) Preconditions.checkNotNull(backOff);
    }

    public final BackOff getBackOff() {
        return this.backOff;
    }

    public final BackOffRequired getBackOffRequired() {
        return this.backOffRequired;
    }

    public HttpBackOffUnsuccessfulResponseHandler setBackOffRequired(BackOffRequired backOffRequired) {
        this.backOffRequired = (BackOffRequired) Preconditions.checkNotNull(backOffRequired);
        return this;
    }

    public final Sleeper getSleeper() {
        return this.sleeper;
    }

    public HttpBackOffUnsuccessfulResponseHandler setSleeper(Sleeper sleeper) {
        this.sleeper = (Sleeper) Preconditions.checkNotNull(sleeper);
        return this;
    }

    @Override // com.google.api.client.http.HttpUnsuccessfulResponseHandler
    public final boolean handleResponse(HttpRequest httpRequest, HttpResponse httpResponse, boolean z) {
        if (!z || !this.backOffRequired.isRequired(httpResponse)) {
            return false;
        }
        try {
            return BackOffUtils.next(this.sleeper, this.backOff);
        } catch (InterruptedException e) {
            return false;
        }
    }

    @Beta
    public interface BackOffRequired {
        public static final BackOffRequired ALWAYS = new BackOffRequired() { // from class: com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler.BackOffRequired.1
            C14401() {
            }

            @Override // com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler.BackOffRequired
            public boolean isRequired(HttpResponse httpResponse) {
                return true;
            }
        };
        public static final BackOffRequired ON_SERVER_ERROR = new BackOffRequired() { // from class: com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler.BackOffRequired.2
            C14412() {
            }

            @Override // com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler.BackOffRequired
            public boolean isRequired(HttpResponse httpResponse) {
                return httpResponse.getStatusCode() / 100 == 5;
            }
        };

        boolean isRequired(HttpResponse httpResponse);

        /* renamed from: com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler$BackOffRequired$1 */
        static class C14401 implements BackOffRequired {
            C14401() {
            }

            @Override // com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler.BackOffRequired
            public boolean isRequired(HttpResponse httpResponse) {
                return true;
            }
        }

        /* renamed from: com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler$BackOffRequired$2 */
        static class C14412 implements BackOffRequired {
            C14412() {
            }

            @Override // com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler.BackOffRequired
            public boolean isRequired(HttpResponse httpResponse) {
                return httpResponse.getStatusCode() / 100 == 5;
            }
        }
    }
}
