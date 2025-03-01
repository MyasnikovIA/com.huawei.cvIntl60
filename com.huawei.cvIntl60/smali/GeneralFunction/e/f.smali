.class public LGeneralFunction/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/e/f$a;
    }
.end annotation


# static fields
.field public static final a:[LGeneralFunction/e/f$a;

.field public static final b:[LGeneralFunction/e/f$a;

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 20
    const-wide/16 v0, -0x1

    sput-wide v0, LGeneralFunction/e/f;->c:J

    .line 56
    const/16 v0, 0x17

    new-array v0, v0, [LGeneralFunction/e/f$a;

    new-instance v1, LGeneralFunction/e/f$a;

    const-string v2, "_id"

    const-string v3, "INT"

    invoke-direct {v1, v2, v3}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, LGeneralFunction/e/f$a;

    const-string v2, "FileName"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, LGeneralFunction/e/f$a;

    const-string v2, "FilePath"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, LGeneralFunction/e/f$a;

    const-string v2, "FileSize"

    const-string v3, "INT"

    invoke-direct {v1, v2, v3}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, LGeneralFunction/e/f$a;

    const-string v2, "FileType"

    const-string v3, "INT"

    invoke-direct {v1, v2, v3}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "Orientation"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "Width"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "Height"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "VideoDurationTime"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "CaptureTime"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "DownloadTime"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "GroupIndex"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "FileIndexInGroup"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "HaveTN"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "HaveLRG"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "HaveQuickView"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "IsCaptureDuringAppON"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "IsFileProtected"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "Is360File"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "Have360Stitch"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "Reserved"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "IsSDCard"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "IsMyAlbum"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, LGeneralFunction/e/f;->a:[LGeneralFunction/e/f$a;

    .line 82
    const/16 v0, 0x11

    new-array v0, v0, [LGeneralFunction/e/f$a;

    new-instance v1, LGeneralFunction/e/f$a;

    const-string v2, "_id"

    const-string v3, "INT"

    invoke-direct {v1, v2, v3}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, LGeneralFunction/e/f$a;

    const-string v2, "FileName"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, LGeneralFunction/e/f$a;

    const-string v2, "FilePath"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, LGeneralFunction/e/f$a;

    const-string v2, "FileSize"

    const-string v3, "INT"

    invoke-direct {v1, v2, v3}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, LGeneralFunction/e/f$a;

    const-string v2, "FileType"

    const-string v3, "INT"

    invoke-direct {v1, v2, v3}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "Orientation"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "Width"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "Height"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "VideoDurationTime"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "CaptureTime"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "DownloadTime"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "GroupIndex"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "FileIndexInGroup"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "Is360File"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "Have360Stitch"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "IsSDCard"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, LGeneralFunction/e/f$a;

    const-string v3, "IsMyAlbum"

    const-string v4, "INT"

    invoke-direct {v2, v3, v4}, LGeneralFunction/e/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, LGeneralFunction/e/f;->b:[LGeneralFunction/e/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 542
    sget-object v0, LGeneralFunction/e/f;->b:[LGeneralFunction/e/f$a;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 543
    const/4 v0, 0x0

    :goto_0
    sget-object v2, LGeneralFunction/e/f;->b:[LGeneralFunction/e/f$a;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 545
    sget-object v2, LGeneralFunction/e/f;->b:[LGeneralFunction/e/f$a;

    aget-object v2, v2, v0

    iget-object v2, v2, LGeneralFunction/e/f$a;->a:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_0
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAX("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 562
    invoke-direct {p0, p1}, LGeneralFunction/e/f;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    :goto_0
    return-object v0

    .line 566
    :cond_0
    invoke-direct {p0, p1}, LGeneralFunction/e/f;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, LGeneralFunction/e/f;->h(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 577
    invoke-direct {p0, p1}, LGeneralFunction/e/f;->e(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, p1}, LGeneralFunction/e/f;->f(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 585
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    const/4 v0, 0x1

    .line 588
    :goto_0
    return v0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    const/4 v0, 0x1

    .line 597
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 601
    invoke-direct {p0, p1}, LGeneralFunction/e/f;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 602
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 604
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, LGeneralFunction/e/f;->h(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 608
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    const/4 v0, 0x1

    .line 611
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 224
    .line 226
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "CaptureTime"

    aput-object v0, v2, v10

    const/4 v0, 0x1

    const-string v1, "FileName"

    aput-object v1, v2, v0

    const-string v7, "CaptureTime ASC"

    move-object v0, p1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 232
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 233
    const/16 v1, 0x1388

    if-lt v1, v0, :cond_0

    move v0, v10

    .line 241
    :goto_0
    if-nez v0, :cond_1

    .line 243
    sput-wide v8, LGeneralFunction/e/f;->c:J

    move-wide v0, v8

    .line 250
    :goto_1
    return-wide v0

    .line 239
    :cond_0
    add-int/lit16 v0, v0, -0x1388

    goto :goto_0

    .line 246
    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 247
    const-string v0, "CaptureTime"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 248
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 249
    sput-wide v0, LGeneralFunction/e/f;->c:J

    goto :goto_1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 384
    invoke-static {}, LGeneralFunction/e/f;->a()[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LGeneralFunction/e/f;->a(Z)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FileIndexInGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move-object v1, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 385
    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 366
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "GroupIndex"

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v1, "FileIndexInGroup"

    .line 368
    invoke-static {v1}, LGeneralFunction/e/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "IsSDCard"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "IsMyAlbum"

    aput-object v1, v2, v0

    .line 369
    invoke-virtual {p0, v3}, LGeneralFunction/e/f;->a(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "GroupIndex"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileIndexInGroup"

    .line 372
    invoke-static {v1}, LGeneralFunction/e/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move-object v1, p2

    .line 366
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 374
    return-object v0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND CaptureTime>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, LGeneralFunction/e/f;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureTime>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, LGeneralFunction/e/f;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 284
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    .line 285
    const-string v3, "IsSDCard = ? AND IsMyAlbum = ? AND GroupIndex >= ? AND GroupIndex <= ?"

    .line 286
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    const/4 v0, 0x1

    const-string v1, "0"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 287
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 295
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 298
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 306
    return-object v8
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIIIIIIIIII)V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 143
    const-string v1, "FileName"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "FilePath"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "FileSize"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string v1, "FileType"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v1, "Orientation"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v1, "Width"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v1, "Height"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v1, "VideoDurationTime"

    invoke-static {p11, p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string v1, "CaptureTime"

    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    const-string v1, "DownloadTime"

    invoke-static/range {p15 .. p16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    const-string v1, "GroupIndex"

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v1, "FileIndexInGroup"

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v1, "HaveTN"

    invoke-static/range {p19 .. p19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v1, "HaveLRG"

    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v1, "HaveQuickView"

    invoke-static/range {p21 .. p21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v1, "IsCaptureDuringAppON"

    invoke-static/range {p22 .. p22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v1, "IsFileProtected"

    invoke-static/range {p23 .. p23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v1, "Is360File"

    invoke-static/range {p24 .. p24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v1, "Have360Stitch"

    invoke-static/range {p25 .. p25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v1, "Reserved"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "IsSDCard"

    invoke-static/range {p26 .. p26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v1, "IsMyAlbum"

    invoke-static/range {p27 .. p27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 168
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p4}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p6}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 492
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 494
    invoke-direct {p0, p8}, LGeneralFunction/e/f;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-direct {p0, p8}, LGeneralFunction/e/f;->g(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p4}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p6}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 500
    return-void

    .line 497
    :cond_0
    invoke-virtual {v0, p7, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 340
    .line 342
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "GroupIndex"

    invoke-static {v0}, LGeneralFunction/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-virtual {p0, v8}, LGeneralFunction/e/f;->a(Z)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move v0, v8

    .line 343
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    const-string v0, "GroupIndex"

    invoke-static {v0}, LGeneralFunction/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 346
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 347
    return v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 313
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    .line 314
    const-string v3, "IsMyAlbum = ? AND GroupIndex >= ? AND GroupIndex <= ?"

    .line 315
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 316
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 324
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 327
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 335
    return-object v8
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 461
    .line 463
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p4}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p6}, LGeneralFunction/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 465
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 467
    const/4 v0, 0x1

    .line 473
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 475
    return v0

    .line 471
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
