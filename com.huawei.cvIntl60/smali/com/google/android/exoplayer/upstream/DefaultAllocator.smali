.class public final Lcom/google/android/exoplayer/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Allocator;


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(II)V

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 55
    if-ltz p2, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 56
    iput p1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 57
    iput p2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    .line 58
    add-int/lit8 v0, p2, 0x64

    new-array v0, v0, [Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    .line 59
    if-lez p2, :cond_2

    .line 60
    mul-int v0, p2, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 61
    :goto_2
    if-ge v2, p2, :cond_3

    .line 62
    mul-int v0, v2, p1

    .line 63
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    new-instance v3, Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v3, v4, v0}, Lcom/google/android/exoplayer/upstream/Allocation;-><init>([BI)V

    aput-object v3, v1, v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    :cond_1
    move v1, v2

    .line 55
    goto :goto_1

    .line 66
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 68
    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Lcom/google/android/exoplayer/upstream/Allocation;
    .locals 4

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 74
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aget-object v0, v0, v1

    .line 76
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit p0

    return-object v0

    .line 78
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/exoplayer/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/upstream/Allocation;-><init>([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blockWhileTotalBytesAllocatedExceeds(I)V
    .locals 1

    .prologue
    .line 166
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public getIndividualAllocationLength()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Lcom/google/android/exoplayer/upstream/Allocation;)V
    .locals 3

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 88
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 89
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aput-object p1, v0, v1

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 86
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release([Lcom/google/android/exoplayer/upstream/Allocation;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 99
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    array-length v2, p1

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    array-length v4, p1

    add-int/2addr v3, v4

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 100
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    .line 105
    :cond_0
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p1, v2

    .line 107
    iget-object v0, v4, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v5, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v0, v5, :cond_1

    iget-object v0, v4, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    array-length v0, v0

    iget v5, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    if-ne v0, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v5, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aput-object v4, v0, v5

    .line 105
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 107
    goto :goto_1

    .line 111
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trim(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 118
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/util/Util;->ceilDivide(II)I

    move-result v0

    .line 119
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v0, :cond_5

    .line 130
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v0, v0, -0x1

    .line 131
    :goto_1
    if-gt v1, v0, :cond_4

    .line 132
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    aget-object v4, v2, v1

    .line 133
    iget-object v2, v4, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v5, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v2, v5, :cond_2

    .line 134
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_2
    move v1, v2

    .line 144
    goto :goto_1

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    aget-object v5, v2, v0

    .line 137
    iget-object v2, v5, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v2, v6, :cond_3

    .line 138
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    goto :goto_2

    .line 140
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    add-int/lit8 v2, v1, 0x1

    aput-object v5, v6, v1

    .line 141
    iget-object v5, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    add-int/lit8 v1, v0, -0x1

    aput-object v4, v5, v0

    move v0, v1

    goto :goto_2

    .line 146
    :cond_4
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 147
    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    if-ge v0, v1, :cond_0

    .line 154
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 155
    iput v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v0, v3

    goto :goto_3
.end method
