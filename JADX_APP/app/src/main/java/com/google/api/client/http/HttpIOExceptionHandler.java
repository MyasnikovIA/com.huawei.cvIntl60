package com.google.api.client.http;

import com.google.api.client.util.Beta;

@Beta
/* loaded from: classes.dex */
public interface HttpIOExceptionHandler {
    boolean handleIOException(HttpRequest httpRequest, boolean z);
}
