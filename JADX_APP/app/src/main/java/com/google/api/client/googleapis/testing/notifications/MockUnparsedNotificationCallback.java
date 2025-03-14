package com.google.api.client.googleapis.testing.notifications;

import com.google.api.client.googleapis.notifications.StoredChannel;
import com.google.api.client.googleapis.notifications.UnparsedNotification;
import com.google.api.client.googleapis.notifications.UnparsedNotificationCallback;
import com.google.api.client.util.Beta;

@Beta
/* loaded from: classes.dex */
public class MockUnparsedNotificationCallback implements UnparsedNotificationCallback {
    private static final long serialVersionUID = 0;
    private boolean wasCalled;

    public boolean wasCalled() {
        return this.wasCalled;
    }

    @Override // com.google.api.client.googleapis.notifications.UnparsedNotificationCallback
    public void onNotification(StoredChannel storedChannel, UnparsedNotification unparsedNotification) {
        this.wasCalled = true;
    }
}
