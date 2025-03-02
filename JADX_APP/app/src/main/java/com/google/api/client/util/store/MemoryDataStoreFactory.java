package com.google.api.client.util.store;

import java.io.Serializable;

/* loaded from: classes.dex */
public class MemoryDataStoreFactory extends AbstractDataStoreFactory {
    @Override // com.google.api.client.util.store.AbstractDataStoreFactory
    protected <V extends Serializable> DataStore<V> createDataStore(String str) {
        return new MemoryDataStore(this, str);
    }

    public static MemoryDataStoreFactory getDefaultInstance() {
        return InstanceHolder.INSTANCE;
    }

    static class InstanceHolder {
        static final MemoryDataStoreFactory INSTANCE = new MemoryDataStoreFactory();

        InstanceHolder() {
        }
    }

    static class MemoryDataStore<V extends Serializable> extends AbstractMemoryDataStore<V> {
        MemoryDataStore(MemoryDataStoreFactory memoryDataStoreFactory, String str) {
            super(memoryDataStoreFactory, str);
        }

        @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
        public MemoryDataStoreFactory getDataStoreFactory() {
            return (MemoryDataStoreFactory) super.getDataStoreFactory();
        }
    }
}
