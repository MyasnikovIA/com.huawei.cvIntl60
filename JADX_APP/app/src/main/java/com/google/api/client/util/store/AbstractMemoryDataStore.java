package com.google.api.client.util.store;

import com.google.api.client.util.IOUtils;
import com.google.api.client.util.Lists;
import com.google.api.client.util.Maps;
import com.google.api.client.util.Preconditions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
class AbstractMemoryDataStore<V extends Serializable> extends AbstractDataStore<V> {
    HashMap<String, byte[]> keyValueMap;
    private final Lock lock;

    protected AbstractMemoryDataStore(DataStoreFactory dataStoreFactory, String str) {
        super(dataStoreFactory, str);
        this.lock = new ReentrantLock();
        this.keyValueMap = Maps.newHashMap();
    }

    @Override // com.google.api.client.util.store.DataStore
    public final Set<String> keySet() {
        this.lock.lock();
        try {
            return Collections.unmodifiableSet(this.keyValueMap.keySet());
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.DataStore
    public final Collection<V> values() {
        this.lock.lock();
        try {
            ArrayList newArrayList = Lists.newArrayList();
            Iterator<byte[]> it = this.keyValueMap.values().iterator();
            while (it.hasNext()) {
                newArrayList.add(IOUtils.deserialize(it.next()));
            }
            return Collections.unmodifiableList(newArrayList);
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.DataStore
    public final V get(String str) {
        if (str == null) {
            return null;
        }
        this.lock.lock();
        try {
            return (V) IOUtils.deserialize(this.keyValueMap.get(str));
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.DataStore
    public final DataStore<V> set(String str, V v) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(v);
        this.lock.lock();
        try {
            this.keyValueMap.put(str, IOUtils.serialize(v));
            save();
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.DataStore
    public DataStore<V> delete(String str) {
        if (str != null) {
            this.lock.lock();
            try {
                this.keyValueMap.remove(str);
                save();
            } finally {
                this.lock.unlock();
            }
        }
        return this;
    }

    @Override // com.google.api.client.util.store.DataStore
    public final DataStore<V> clear() {
        this.lock.lock();
        try {
            this.keyValueMap.clear();
            save();
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
    public boolean containsKey(String str) {
        if (str == null) {
            return false;
        }
        this.lock.lock();
        try {
            return this.keyValueMap.containsKey(str);
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
    public boolean containsValue(V v) {
        if (v == null) {
            return false;
        }
        this.lock.lock();
        try {
            byte[] serialize = IOUtils.serialize(v);
            Iterator<byte[]> it = this.keyValueMap.values().iterator();
            while (it.hasNext()) {
                if (Arrays.equals(serialize, it.next())) {
                    return true;
                }
            }
            return false;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
    public boolean isEmpty() {
        this.lock.lock();
        try {
            return this.keyValueMap.isEmpty();
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
    public int size() {
        this.lock.lock();
        try {
            return this.keyValueMap.size();
        } finally {
            this.lock.unlock();
        }
    }

    void save() {
    }

    public String toString() {
        return DataStoreUtils.toString(this);
    }
}
