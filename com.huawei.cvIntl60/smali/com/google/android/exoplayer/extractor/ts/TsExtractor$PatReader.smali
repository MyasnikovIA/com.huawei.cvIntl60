.class Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;
.super Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatReader"
.end annotation


# instance fields
.field private crc:I

.field private final patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private sectionBytesRead:I

.field private final sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private sectionLength:I

.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V
    .locals 2

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor$1;)V

    .line 272
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 273
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 274
    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v2, 0xc

    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 285
    if-eqz p2, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 287
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 291
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {p1, v1, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 292
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 293
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    .line 294
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    .line 295
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    const/4 v2, -0x1

    invoke-static {v1, v0, v6, v2}, Lcom/google/android/exoplayer/util/Util;->crc([BIII)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->crc:I

    .line 297
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset(I)V

    .line 300
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 301
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 302
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    .line 303
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionBytesRead:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    if-ge v1, v2, :cond_2

    .line 331
    :cond_1
    return-void

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->crc:I

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/exoplayer/util/Util;->crc([BIII)I

    move-result v1

    if-nez v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 317
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionLength:I

    add-int/lit8 v1, v1, -0x9

    div-int/lit8 v1, v1, 0x4

    .line 318
    :goto_0
    if-ge v0, v1, :cond_1

    .line 319
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 320
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 321
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 322
    if-nez v2, :cond_3

    .line 323
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 318
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 326
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method
