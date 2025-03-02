package com.google.api.client.googleapis.notifications.json;

import com.google.api.client.googleapis.notifications.TypedNotificationCallback;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.util.Beta;

@Beta
/* loaded from: classes.dex */
public abstract class JsonNotificationCallback<T> extends TypedNotificationCallback<T> {
    private static final long serialVersionUID = 1;

    protected abstract JsonFactory getJsonFactory();

    @Override // com.google.api.client.googleapis.notifications.TypedNotificationCallback
    public final JsonObjectParser getObjectParser() {
        return new JsonObjectParser(getJsonFactory());
    }
}
