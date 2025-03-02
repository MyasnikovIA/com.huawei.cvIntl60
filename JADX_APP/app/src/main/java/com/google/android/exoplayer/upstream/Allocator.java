package com.google.android.exoplayer.upstream;

/* loaded from: classes.dex */
public interface Allocator {
    Allocation allocate();

    void blockWhileTotalBytesAllocatedExceeds(int i);

    int getIndividualAllocationLength();

    int getTotalBytesAllocated();

    void release(Allocation allocation);

    void release(Allocation[] allocationArr);

    void trim(int i);
}
