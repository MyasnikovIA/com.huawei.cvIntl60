package com.google.api.client.util.store;

import com.google.api.client.util.Preconditions;
import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class AbstractDataStore<V extends Serializable> implements DataStore<V> {
    private final DataStoreFactory dataStoreFactory;

    /* renamed from: id */
    private final String f6955id;

    protected AbstractDataStore(DataStoreFactory dataStoreFactory, String str) {
        this.dataStoreFactory = (DataStoreFactory) Preconditions.checkNotNull(dataStoreFactory);
        this.f6955id = (String) Preconditions.checkNotNull(str);
    }

    @Override // com.google.api.client.util.store.DataStore
    public DataStoreFactory getDataStoreFactory() {
        return this.dataStoreFactory;
    }

    @Override // com.google.api.client.util.store.DataStore
    public final String getId() {
        return this.f6955id;
    }

    @Override // com.google.api.client.util.store.DataStore
    public boolean containsKey(String str) {
        return get(str) != null;
    }

    @Override // com.google.api.client.util.store.DataStore
    public boolean containsValue(V v) {
        return values().contains(v);
    }

    @Override // com.google.api.client.util.store.DataStore
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.api.client.util.store.DataStore
    public int size() {
        return keySet().size();
    }
}
