package com.google.android.exoplayer.upstream.cache;

import android.os.ConditionVariable;
import com.google.android.exoplayer.upstream.cache.Cache;
import com.google.android.exoplayer.util.Assertions;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

/* loaded from: classes.dex */
public final class SimpleCache implements Cache {
    private final File cacheDir;
    private final CacheEvictor evictor;
    private long totalSpace = 0;
    private final HashMap<String, CacheSpan> lockedSpans = new HashMap<>();
    private final HashMap<String, TreeSet<CacheSpan>> cachedSpans = new HashMap<>();
    private final HashMap<String, ArrayList<Cache.Listener>> listeners = new HashMap<>();

    public SimpleCache(File file, CacheEvictor cacheEvictor) {
        this.cacheDir = file;
        this.evictor = cacheEvictor;
        ConditionVariable conditionVariable = new ConditionVariable();
        new Thread("SimpleCache.initialize()") { // from class: com.google.android.exoplayer.upstream.cache.SimpleCache.1
            final /* synthetic */ ConditionVariable val$conditionVariable;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C12191(String str, ConditionVariable conditionVariable2) {
                super(str);
                conditionVariable = conditionVariable2;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (SimpleCache.this) {
                    conditionVariable.open();
                    SimpleCache.this.initialize();
                }
            }
        }.start();
        conditionVariable2.block();
    }

    /* renamed from: com.google.android.exoplayer.upstream.cache.SimpleCache$1 */
    class C12191 extends Thread {
        final /* synthetic */ ConditionVariable val$conditionVariable;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C12191(String str, ConditionVariable conditionVariable2) {
            super(str);
            conditionVariable = conditionVariable2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (SimpleCache.this) {
                conditionVariable.open();
                SimpleCache.this.initialize();
            }
        }
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized NavigableSet<CacheSpan> addListener(String str, Cache.Listener listener) {
        ArrayList<Cache.Listener> arrayList = this.listeners.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.listeners.put(str, arrayList);
        }
        arrayList.add(listener);
        return getCachedSpans(str);
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized void removeListener(String str, Cache.Listener listener) {
        ArrayList<Cache.Listener> arrayList = this.listeners.get(str);
        if (arrayList != null) {
            arrayList.remove(listener);
            if (arrayList.isEmpty()) {
                this.listeners.remove(str);
            }
        }
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized NavigableSet<CacheSpan> getCachedSpans(String str) {
        TreeSet<CacheSpan> treeSet;
        treeSet = this.cachedSpans.get(str);
        return treeSet == null ? null : new TreeSet((SortedSet) treeSet);
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized Set<String> getKeys() {
        return new HashSet(this.cachedSpans.keySet());
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized long getCacheSpace() {
        return this.totalSpace;
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized CacheSpan startReadWrite(String str, long j) {
        CacheSpan startReadWriteNonBlocking;
        CacheSpan createLookup = CacheSpan.createLookup(str, j);
        while (true) {
            startReadWriteNonBlocking = startReadWriteNonBlocking(createLookup);
            if (startReadWriteNonBlocking == null) {
                wait();
            }
        }
        return startReadWriteNonBlocking;
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized CacheSpan startReadWriteNonBlocking(String str, long j) {
        return startReadWriteNonBlocking(CacheSpan.createLookup(str, j));
    }

    private synchronized CacheSpan startReadWriteNonBlocking(CacheSpan cacheSpan) {
        CacheSpan cacheSpan2;
        CacheSpan span = getSpan(cacheSpan);
        if (span.isCached) {
            TreeSet<CacheSpan> treeSet = this.cachedSpans.get(span.key);
            Assertions.checkState(treeSet.remove(span));
            CacheSpan cacheSpan3 = span.touch();
            treeSet.add(cacheSpan3);
            notifySpanTouched(span, cacheSpan3);
            cacheSpan2 = cacheSpan3;
        } else if (!this.lockedSpans.containsKey(cacheSpan.key)) {
            this.lockedSpans.put(cacheSpan.key, span);
            cacheSpan2 = span;
        } else {
            cacheSpan2 = null;
        }
        return cacheSpan2;
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized File startFile(String str, long j, long j2) {
        Assertions.checkState(this.lockedSpans.containsKey(str));
        if (!this.cacheDir.exists()) {
            removeStaleSpans();
            this.cacheDir.mkdirs();
        }
        this.evictor.onStartFile(this, str, j, j2);
        return CacheSpan.getCacheFileName(this.cacheDir, str, j, System.currentTimeMillis());
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized void commitFile(File file) {
        CacheSpan createCacheEntry = CacheSpan.createCacheEntry(file);
        Assertions.checkState(createCacheEntry != null);
        Assertions.checkState(this.lockedSpans.containsKey(createCacheEntry.key));
        if (file.exists()) {
            if (file.length() == 0) {
                file.delete();
            } else {
                addSpan(createCacheEntry);
                notifyAll();
            }
        }
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized void releaseHoleSpan(CacheSpan cacheSpan) {
        Assertions.checkState(cacheSpan == this.lockedSpans.remove(cacheSpan.key));
        notifyAll();
    }

    private CacheSpan getSpan(CacheSpan cacheSpan) {
        String str = cacheSpan.key;
        long j = cacheSpan.position;
        TreeSet<CacheSpan> treeSet = this.cachedSpans.get(str);
        if (treeSet == null) {
            return CacheSpan.createOpenHole(str, cacheSpan.position);
        }
        CacheSpan floor = treeSet.floor(cacheSpan);
        if (floor != null && floor.position <= j && j < floor.position + floor.length) {
            if (!floor.file.exists()) {
                removeStaleSpans();
                return getSpan(cacheSpan);
            }
            return floor;
        }
        CacheSpan ceiling = treeSet.ceiling(cacheSpan);
        return ceiling == null ? CacheSpan.createOpenHole(str, cacheSpan.position) : CacheSpan.createClosedHole(str, cacheSpan.position, ceiling.position - cacheSpan.position);
    }

    public void initialize() {
        if (!this.cacheDir.exists()) {
            this.cacheDir.mkdirs();
        }
        File[] listFiles = this.cacheDir.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.length() == 0) {
                    file.delete();
                } else {
                    File upgradeIfNeeded = CacheSpan.upgradeIfNeeded(file);
                    CacheSpan createCacheEntry = CacheSpan.createCacheEntry(upgradeIfNeeded);
                    if (createCacheEntry == null) {
                        upgradeIfNeeded.delete();
                    } else {
                        addSpan(createCacheEntry);
                    }
                }
            }
            this.evictor.onCacheInitialized();
        }
    }

    private void addSpan(CacheSpan cacheSpan) {
        TreeSet<CacheSpan> treeSet = this.cachedSpans.get(cacheSpan.key);
        if (treeSet == null) {
            treeSet = new TreeSet<>();
            this.cachedSpans.put(cacheSpan.key, treeSet);
        }
        treeSet.add(cacheSpan);
        this.totalSpace += cacheSpan.length;
        notifySpanAdded(cacheSpan);
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized void removeSpan(CacheSpan cacheSpan) {
        TreeSet<CacheSpan> treeSet = this.cachedSpans.get(cacheSpan.key);
        this.totalSpace -= cacheSpan.length;
        Assertions.checkState(treeSet.remove(cacheSpan));
        cacheSpan.file.delete();
        if (treeSet.isEmpty()) {
            this.cachedSpans.remove(cacheSpan.key);
        }
        notifySpanRemoved(cacheSpan);
    }

    private void removeStaleSpans() {
        boolean z;
        Iterator<Map.Entry<String, TreeSet<CacheSpan>>> it = this.cachedSpans.entrySet().iterator();
        while (it.hasNext()) {
            Iterator<CacheSpan> it2 = it.next().getValue().iterator();
            boolean z2 = true;
            while (true) {
                z = z2;
                if (!it2.hasNext()) {
                    break;
                }
                CacheSpan next = it2.next();
                if (!next.file.exists()) {
                    it2.remove();
                    if (next.isCached) {
                        this.totalSpace -= next.length;
                    }
                    notifySpanRemoved(next);
                    z2 = z;
                } else {
                    z2 = false;
                }
            }
            if (z) {
                it.remove();
            }
        }
    }

    private void notifySpanRemoved(CacheSpan cacheSpan) {
        ArrayList<Cache.Listener> arrayList = this.listeners.get(cacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanRemoved(this, cacheSpan);
            }
        }
        this.evictor.onSpanRemoved(this, cacheSpan);
    }

    private void notifySpanAdded(CacheSpan cacheSpan) {
        ArrayList<Cache.Listener> arrayList = this.listeners.get(cacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanAdded(this, cacheSpan);
            }
        }
        this.evictor.onSpanAdded(this, cacheSpan);
    }

    private void notifySpanTouched(CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        ArrayList<Cache.Listener> arrayList = this.listeners.get(cacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanTouched(this, cacheSpan, cacheSpan2);
            }
        }
        this.evictor.onSpanTouched(this, cacheSpan, cacheSpan2);
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized boolean isCached(String str, long j, long j2) {
        boolean z;
        TreeSet<CacheSpan> treeSet = this.cachedSpans.get(str);
        if (treeSet == null) {
            z = false;
        } else {
            CacheSpan floor = treeSet.floor(CacheSpan.createLookup(str, j));
            if (floor == null || floor.position + floor.length <= j) {
                z = false;
            } else {
                long j3 = j + j2;
                long j4 = floor.position + floor.length;
                if (j4 >= j3) {
                    z = true;
                } else {
                    Iterator<CacheSpan> it = treeSet.tailSet(floor, false).iterator();
                    while (true) {
                        if (it.hasNext()) {
                            CacheSpan next = it.next();
                            if (next.position > j4) {
                                z = false;
                                break;
                            }
                            long max = Math.max(j4, next.length + next.position);
                            if (max >= j3) {
                                z = true;
                                break;
                            }
                            j4 = max;
                        } else {
                            z = false;
                            break;
                        }
                    }
                }
            }
        }
        return z;
    }
}
