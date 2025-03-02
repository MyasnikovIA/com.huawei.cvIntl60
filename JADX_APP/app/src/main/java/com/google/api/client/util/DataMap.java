package com.google.api.client.util;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class DataMap extends AbstractMap<String, Object> {
    final ClassInfo classInfo;
    final Object object;

    DataMap(Object obj, boolean z) {
        this.object = obj;
        this.classInfo = ClassInfo.m6681of(obj.getClass(), z);
        Preconditions.checkArgument(!this.classInfo.isEnum());
    }

    @Override // java.util.AbstractMap, java.util.Map
    public EntrySet entrySet() {
        return new EntrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        FieldInfo fieldInfo;
        if ((obj instanceof String) && (fieldInfo = this.classInfo.getFieldInfo((String) obj)) != null) {
            return fieldInfo.getValue(this.object);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(String str, Object obj) {
        FieldInfo fieldInfo = this.classInfo.getFieldInfo(str);
        String valueOf = String.valueOf(str);
        Preconditions.checkNotNull(fieldInfo, valueOf.length() != 0 ? "no field of key ".concat(valueOf) : new String("no field of key "));
        Object value = fieldInfo.getValue(this.object);
        fieldInfo.setValue(this.object, Preconditions.checkNotNull(obj));
        return value;
    }

    final class EntrySet extends AbstractSet<Map.Entry<String, Object>> {
        EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public EntryIterator iterator() {
            return DataMap.this.new EntryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int i = 0;
            Iterator<String> it = DataMap.this.classInfo.names.iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    i = DataMap.this.classInfo.getFieldInfo(it.next()).getValue(DataMap.this.object) != null ? i2 + 1 : i2;
                } else {
                    return i2;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Iterator<String> it = DataMap.this.classInfo.names.iterator();
            while (it.hasNext()) {
                DataMap.this.classInfo.getFieldInfo(it.next()).setValue(DataMap.this.object, null);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            Iterator<String> it = DataMap.this.classInfo.names.iterator();
            while (it.hasNext()) {
                if (DataMap.this.classInfo.getFieldInfo(it.next()).getValue(DataMap.this.object) != null) {
                    return false;
                }
            }
            return true;
        }
    }

    final class EntryIterator implements Iterator<Map.Entry<String, Object>> {
        private FieldInfo currentFieldInfo;
        private boolean isComputed;
        private boolean isRemoved;
        private FieldInfo nextFieldInfo;
        private Object nextFieldValue;
        private int nextKeyIndex = -1;

        EntryIterator() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (!this.isComputed) {
                this.isComputed = true;
                this.nextFieldValue = null;
                while (this.nextFieldValue == null) {
                    int i = this.nextKeyIndex + 1;
                    this.nextKeyIndex = i;
                    if (i >= DataMap.this.classInfo.names.size()) {
                        break;
                    }
                    this.nextFieldInfo = DataMap.this.classInfo.getFieldInfo(DataMap.this.classInfo.names.get(this.nextKeyIndex));
                    this.nextFieldValue = this.nextFieldInfo.getValue(DataMap.this.object);
                }
            }
            return this.nextFieldValue != null;
        }

        @Override // java.util.Iterator
        public Map.Entry<String, Object> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.currentFieldInfo = this.nextFieldInfo;
            Object obj = this.nextFieldValue;
            this.isComputed = false;
            this.isRemoved = false;
            this.nextFieldInfo = null;
            this.nextFieldValue = null;
            return DataMap.this.new Entry(this.currentFieldInfo, obj);
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState((this.currentFieldInfo == null || this.isRemoved) ? false : true);
            this.isRemoved = true;
            this.currentFieldInfo.setValue(DataMap.this.object, null);
        }
    }

    final class Entry implements Map.Entry<String, Object> {
        private final FieldInfo fieldInfo;
        private Object fieldValue;

        Entry(FieldInfo fieldInfo, Object obj) {
            this.fieldInfo = fieldInfo;
            this.fieldValue = Preconditions.checkNotNull(obj);
        }

        @Override // java.util.Map.Entry
        public String getKey() {
            String name = this.fieldInfo.getName();
            if (DataMap.this.classInfo.getIgnoreCase()) {
                return name.toLowerCase();
            }
            return name;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.fieldValue;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = this.fieldValue;
            this.fieldValue = Preconditions.checkNotNull(obj);
            this.fieldInfo.setValue(DataMap.this.object, obj);
            return obj2;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return getKey().hashCode() ^ getValue().hashCode();
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return getKey().equals(entry.getKey()) && getValue().equals(entry.getValue());
        }
    }
}
