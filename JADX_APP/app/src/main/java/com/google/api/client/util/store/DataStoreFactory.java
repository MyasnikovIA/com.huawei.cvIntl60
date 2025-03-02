package com.google.api.client.util.store;

import java.io.Serializable;

/* loaded from: classes.dex */
public interface DataStoreFactory {
    <V extends Serializable> DataStore<V> getDataStore(String str);
}
