.class public Lui_Controller/CustomWidget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui_Controller/CustomWidget/a$a;,
        Lui_Controller/CustomWidget/a$d;,
        Lui_Controller/CustomWidget/a$c;,
        Lui_Controller/CustomWidget/a$b;
    }
.end annotation


# static fields
.field public static final a:LGeneralFunction/j;


# instance fields
.field private b:Landroid/media/ExifInterface;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Landroid/os/Handler;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Landroid/graphics/BitmapFactory$Options;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lui_Controller/CustomWidget/a$b;

.field private l:I

.field private m:I

.field private n:Lui_Controller/CustomWidget/a$d;

.field private o:Lui_Controller/CustomWidget/a$d;

.field private final p:LGeneralFunction/j;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, LGeneralFunction/j;

    invoke-direct {v0}, LGeneralFunction/j;-><init>()V

    sput-object v0, Lui_Controller/CustomWidget/a;->a:LGeneralFunction/j;

    return-void
.end method

.method public constructor <init>(Lui_Controller/CustomWidget/a$b;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v2, p0, Lui_Controller/CustomWidget/a;->b:Landroid/media/ExifInterface;

    .line 96
    iput-object v2, p0, Lui_Controller/CustomWidget/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 97
    iput-object v2, p0, Lui_Controller/CustomWidget/a;->d:Ljava/util/concurrent/ExecutorService;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/a;->e:Landroid/os/Handler;

    .line 99
    iput-object v2, p0, Lui_Controller/CustomWidget/a;->f:Landroid/os/HandlerThread;

    .line 100
    iput-object v2, p0, Lui_Controller/CustomWidget/a;->g:Landroid/os/Handler;

    .line 101
    iput-object v2, p0, Lui_Controller/CustomWidget/a;->h:Landroid/graphics/BitmapFactory$Options;

    .line 103
    iput-object v2, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    .line 104
    iput-object v2, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    .line 106
    iput-object v2, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    .line 108
    iput v3, p0, Lui_Controller/CustomWidget/a;->l:I

    .line 109
    iput v3, p0, Lui_Controller/CustomWidget/a;->m:I

    .line 111
    iput-object v2, p0, Lui_Controller/CustomWidget/a;->n:Lui_Controller/CustomWidget/a$d;

    .line 112
    iput-object v2, p0, Lui_Controller/CustomWidget/a;->o:Lui_Controller/CustomWidget/a$d;

    .line 115
    new-instance v0, LGeneralFunction/j;

    invoke-direct {v0}, LGeneralFunction/j;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/a;->p:LGeneralFunction/j;

    .line 116
    iput-boolean v3, p0, Lui_Controller/CustomWidget/a;->q:Z

    .line 136
    iput-object p1, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    .line 140
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/CustomWidget/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 141
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/CustomWidget/a;->d:Ljava/util/concurrent/ExecutorService;

    .line 142
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/a;->h:Landroid/graphics/BitmapFactory$Options;

    .line 143
    iput-boolean v3, p0, Lui_Controller/CustomWidget/a;->q:Z

    .line 144
    invoke-direct {p0}, Lui_Controller/CustomWidget/a;->b()V

    .line 147
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    iget-object v2, v2, Lui_Controller/CustomWidget/a$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 149
    return-void
.end method

.method public static a(III)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 827
    .line 828
    if-ne p2, v6, :cond_1

    move v0, v1

    .line 829
    :goto_0
    const/16 v2, 0x80

    .line 831
    if-ge v2, v0, :cond_2

    .line 847
    :cond_0
    :goto_1
    div-int v2, p0, v0

    const/16 v3, 0x1000

    if-le v2, v3, :cond_3

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 828
    :cond_1
    int-to-double v2, p0

    int-to-double v4, p1

    mul-double/2addr v2, v4

    int-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0

    .line 837
    :cond_2
    if-ne p2, v6, :cond_0

    move v0, v1

    .line 839
    goto :goto_1

    .line 852
    :cond_3
    const/16 v2, 0x8

    if-gt v0, v2, :cond_4

    .line 855
    :goto_2
    if-ge v1, v0, :cond_5

    .line 857
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 861
    :cond_4
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 864
    :goto_3
    return v0

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method private static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 585
    .line 587
    if-eqz p0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 589
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 590
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v4, v1

    .line 591
    int-to-float v1, p1

    div-float/2addr v1, v0

    .line 592
    int-to-float v2, p2

    div-float/2addr v2, v4

    .line 594
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 596
    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    .line 598
    sub-float v1, v2, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, v2

    float-to-int v3, v1

    .line 599
    if-eqz v3, :cond_1

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveBlackPorion W>H:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 602
    div-int/lit8 v1, v3, 0x2

    const/4 v2, 0x0

    float-to-int v0, v0

    sub-int v3, v0, v3

    float-to-int v4, v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 603
    if-eq p0, v0, :cond_0

    .line 605
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object p0, v0

    .line 625
    :cond_1
    :goto_0
    return-object p0

    .line 610
    :cond_2
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    .line 612
    sub-float v2, v1, v2

    mul-float/2addr v2, v4

    div-float v1, v2, v1

    float-to-int v6, v1

    .line 613
    if-eqz v6, :cond_1

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveBlackPorion H>W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 616
    const/4 v1, 0x0

    div-int/lit8 v2, v6, 0x2

    float-to-int v3, v0

    float-to-int v0, v4

    sub-int v4, v0, v6

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 617
    if-eq p0, v0, :cond_3

    .line 619
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object p0, v0

    .line 621
    goto :goto_0
.end method

.method private a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x4

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadThumbnialFromSD S: pszFilePath "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ulWidth "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ulHeight "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 462
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 463
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 464
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 465
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    iget-object v5, v5, Lui_Controller/CustomWidget/a$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "thm_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 469
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "thm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 580
    :cond_0
    :goto_0
    return-object v7

    .line 477
    :cond_1
    sget-object v2, Lui_Controller/CustomWidget/a;->a:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->a()I

    move-result v2

    .line 478
    if-gez v2, :cond_2

    .line 479
    const-string v0, "pFileCreateMutex.Get() fail "

    invoke-static {v0, v10}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 482
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    const-string v0, "runtime file exist"

    invoke-static {v0, v9}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 486
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->h:Landroid/graphics/BitmapFactory$Options;

    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 487
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->h:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 488
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->h:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 490
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->h:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 491
    sget-object v0, Lui_Controller/CustomWidget/a;->a:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    goto :goto_0

    .line 494
    :cond_3
    sget-object v2, Lui_Controller/CustomWidget/a;->a:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->b()V

    .line 496
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "thm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 497
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 500
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    iget v0, v0, Lui_Controller/CustomWidget/a$b;->c:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0, p2, p3}, Lui_Controller/CustomWidget/a;->a(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 541
    :goto_1
    if-eqz v1, :cond_d

    .line 543
    sget-object v0, Lui_Controller/CustomWidget/a;->a:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    move-result v0

    .line 544
    if-gez v0, :cond_b

    .line 545
    const-string v0, "pFileCreateMutex.Get() fail "

    invoke-static {v0, v10}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 504
    :cond_5
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/a;->b:Landroid/media/ExifInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_2
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->b:Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    .line 509
    iget-object v2, p0, Lui_Controller/CustomWidget/a;->b:Landroid/media/ExifInterface;

    const-string v3, "Orientation"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 510
    if-eqz v0, :cond_9

    .line 511
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 512
    iget-object v3, p0, Lui_Controller/CustomWidget/a;->b:Landroid/media/ExifInterface;

    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    div-int/lit16 v3, v3, 0x300

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 513
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_0

    .line 518
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 521
    invoke-static {v0, p2, p3}, Lui_Controller/CustomWidget/a;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 523
    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    :cond_6
    :goto_3
    move-object v1, v0

    .line 534
    goto :goto_1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 525
    :cond_7
    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 526
    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 527
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 528
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 530
    goto :goto_3

    .line 531
    :cond_8
    const/16 v1, 0x8

    if-ne v2, v1, :cond_6

    goto :goto_3

    .line 535
    :cond_9
    const-string v0, "thm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 536
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    iget v0, v0, Lui_Controller/CustomWidget/a$b;->c:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0, p2, p3}, Lui_Controller/CustomWidget/a;->a(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    .line 538
    :cond_a
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    iget v0, v0, Lui_Controller/CustomWidget/a$b;->c:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0, p2, p3}, Lui_Controller/CustomWidget/a;->c(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    .line 548
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create runtime file:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 549
    const-string v0, "tmp"

    invoke-static {v8, v0}, LGeneralFunction/g/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 556
    :goto_4
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 558
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 562
    :goto_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 563
    const-string v0, "tmp"

    invoke-static {p1, v0}, LGeneralFunction/g/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    :try_start_3
    invoke-static {v2, v0}, LGeneralFunction/g/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 571
    :cond_c
    :goto_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 572
    sget-object v0, Lui_Controller/CustomWidget/a;->a:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 579
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadThumbnialFromSD E:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    move-object v7, v1

    .line 580
    goto/16 :goto_0

    .line 553
    :catch_1
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v7

    goto :goto_4

    .line 559
    :catch_2
    move-exception v0

    .line 560
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 567
    :catch_3
    move-exception v0

    .line 568
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 693
    .line 694
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 695
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    const-string v3, "jpg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "thm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gif"

    .line 698
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    :goto_0
    return-object v0

    .line 702
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 730
    :goto_1
    invoke-static {v0, p2, p3}, Lui_Controller/CustomWidget/a;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 720
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 721
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 722
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 723
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 724
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit16 v1, v1, 0x280

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 725
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 726
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 727
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lui_Controller/CustomWidget/a;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 878
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 880
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 881
    if-eqz v0, :cond_0

    .line 882
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 883
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    check-cast v0, Ljava/util/Map$Entry;

    .line 886
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 891
    :cond_0
    new-instance v0, Lui_Controller/CustomWidget/a$3;

    invoke-direct {v0, p0}, Lui_Controller/CustomWidget/a$3;-><init>(Lui_Controller/CustomWidget/a;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 900
    return-object v1
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0, p1}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lui_Controller/CustomWidget/a$a;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 418
    invoke-interface {p1, p2, p3}, Lui_Controller/CustomWidget/a$a;->a(Landroid/graphics/Bitmap;I)V

    .line 419
    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/a;Lui_Controller/CustomWidget/a$a;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lui_Controller/CustomWidget/a;->a(Lui_Controller/CustomWidget/a$a;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/a;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lui_Controller/CustomWidget/a;->q:Z

    return v0
.end method

.method public static b(III)I
    .locals 3

    .prologue
    .line 869
    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 870
    div-int v1, p0, v0

    div-int v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AAA "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 872
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/a;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lui_Controller/CustomWidget/a;->l:I

    return v0
.end method

.method private b(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadMainImageFromSD pszFilePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ulWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ulHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 668
    :try_start_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 669
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-object v0

    .line 675
    :cond_1
    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "thm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "gif"

    .line 676
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    :cond_2
    const-string v0, "LoadMainImageFromSD jpg thm gif"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 679
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    iget v0, v0, Lui_Controller/CustomWidget/a$b;->b:I

    invoke-static {p1, v0, p2, p3}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x3

    .line 737
    .line 738
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 739
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-object v1

    .line 744
    :cond_1
    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "thm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "gif"

    .line 745
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_1
    const-string v1, "Orientation"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 758
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 759
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 760
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 761
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 762
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, p1}, Lui_Controller/CustomWidget/a;->a(III)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 763
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 764
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 765
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 766
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 768
    invoke-static {v1, p2, p3}, Lui_Controller/CustomWidget/a;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 770
    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    .line 772
    const-string v0, "ORIENTATION_ROTATE_90"

    invoke-static {v0, v4}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 774
    :cond_3
    if-ne v0, v4, :cond_4

    .line 776
    const-string v0, "ORIENTATION_ROTATE_180"

    invoke-static {v0, v4}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 778
    :cond_4
    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 780
    const-string v0, "ORIENTATION_ROTATE_2700"

    invoke-static {v0, v4}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic b(Lui_Controller/CustomWidget/a;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lui_Controller/CustomWidget/a;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    iget-boolean v0, v0, Lui_Controller/CustomWidget/a$b;->h:Z

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/a;->g:Landroid/os/Handler;

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FileLoadThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/a;->f:Landroid/os/HandlerThread;

    .line 160
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 161
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lui_Controller/CustomWidget/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/a;->g:Landroid/os/Handler;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 128
    const-string v0, "AsyncImageLoader"

    invoke-static {v0, p0, p1}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method public static c(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 789
    .line 790
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 791
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-object v0

    .line 796
    :cond_1
    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 802
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 803
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 804
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 805
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p1}, Lui_Controller/CustomWidget/a;->a(III)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 806
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 807
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 809
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, v2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 811
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p1}, Lui_Controller/CustomWidget/a;->b(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 812
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 817
    :goto_1
    invoke-static {v0, p2, p3}, Lui_Controller/CustomWidget/a;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_3
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic c(Lui_Controller/CustomWidget/a;)Lui_Controller/CustomWidget/a$b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 423
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    iget v1, v1, Lui_Controller/CustomWidget/a$b;->e:I

    if-ne v0, v1, :cond_3

    .line 425
    iget v3, p0, Lui_Controller/CustomWidget/a;->m:I

    .line 426
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/a;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v4

    .line 429
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v1, v3, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v3

    if-le v1, v0, :cond_0

    .line 431
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_0
    move v0, v2

    .line 437
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pKeyList:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 441
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckFreeThumbnalImage onFree:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 442
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 443
    iget-object v2, p0, Lui_Controller/CustomWidget/a;->o:Lui_Controller/CustomWidget/a$d;

    if-eqz v2, :cond_2

    .line 445
    new-instance v2, Lui_Controller/CustomWidget/a$c;

    iget-object v3, p0, Lui_Controller/CustomWidget/a;->o:Lui_Controller/CustomWidget/a$d;

    invoke-direct {v2, p0, v3, v1, v0}, Lui_Controller/CustomWidget/a$c;-><init>(Lui_Controller/CustomWidget/a;Lui_Controller/CustomWidget/a$d;ILandroid/graphics/Bitmap;)V

    .line 446
    iget-object v3, p0, Lui_Controller/CustomWidget/a;->e:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 447
    invoke-virtual {v2}, Lui_Controller/CustomWidget/a$c;->a()V

    .line 449
    :cond_2
    iget-object v2, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 452
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 456
    :cond_3
    return-void
.end method

.method static synthetic d(Lui_Controller/CustomWidget/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 630
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lui_Controller/CustomWidget/a;->k:Lui_Controller/CustomWidget/a$b;

    iget v1, v1, Lui_Controller/CustomWidget/a$b;->d:I

    if-ne v0, v1, :cond_3

    .line 632
    iget v3, p0, Lui_Controller/CustomWidget/a;->l:I

    .line 633
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/a;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v4

    .line 636
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v1, v3, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v3

    if-le v1, v0, :cond_0

    .line 638
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_0
    move v0, v2

    .line 644
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pKeyList:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 642
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 648
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckFreeMainImage onFree:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 649
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 650
    iget-object v2, p0, Lui_Controller/CustomWidget/a;->n:Lui_Controller/CustomWidget/a$d;

    if-eqz v2, :cond_2

    .line 652
    iget-object v2, p0, Lui_Controller/CustomWidget/a;->n:Lui_Controller/CustomWidget/a$d;

    invoke-interface {v2, v1, v0}, Lui_Controller/CustomWidget/a$d;->a(ILandroid/graphics/Bitmap;)V

    .line 654
    :cond_2
    iget-object v2, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 657
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 661
    :cond_3
    return-void
.end method

.method static synthetic e(Lui_Controller/CustomWidget/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lui_Controller/CustomWidget/a;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lui_Controller/CustomWidget/a;->d()V

    return-void
.end method

.method static synthetic g(Lui_Controller/CustomWidget/a;)LGeneralFunction/j;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->p:LGeneralFunction/j;

    return-object v0
.end method

.method static synthetic h(Lui_Controller/CustomWidget/a;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lui_Controller/CustomWidget/a;->m:I

    return v0
.end method

.method static synthetic i(Lui_Controller/CustomWidget/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lui_Controller/CustomWidget/a;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lui_Controller/CustomWidget/a;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 167
    const-string v0, "AsyncImageLoader Release"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 168
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->p:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/CustomWidget/a;->q:Z

    .line 172
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/a;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v4

    move v2, v3

    .line 173
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 175
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    .line 176
    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->n:Lui_Controller/CustomWidget/a$d;

    if-eqz v0, :cond_0

    .line 182
    iget-object v5, p0, Lui_Controller/CustomWidget/a;->n:Lui_Controller/CustomWidget/a$d;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v0, v1}, Lui_Controller/CustomWidget/a$d;->a(ILandroid/graphics/Bitmap;)V

    .line 184
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 187
    :cond_1
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/a;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    .line 190
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 192
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 193
    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 197
    iget-object v1, p0, Lui_Controller/CustomWidget/a;->o:Lui_Controller/CustomWidget/a$d;

    if-eqz v1, :cond_3

    .line 199
    iget-object v4, p0, Lui_Controller/CustomWidget/a;->o:Lui_Controller/CustomWidget/a$d;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1, v0}, Lui_Controller/CustomWidget/a$d;->a(ILandroid/graphics/Bitmap;)V

    .line 201
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    :cond_4
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    :cond_5
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_6

    .line 208
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 210
    :cond_6
    iput-object v6, p0, Lui_Controller/CustomWidget/a;->g:Landroid/os/Handler;

    .line 211
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 212
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 213
    iput-object v6, p0, Lui_Controller/CustomWidget/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 214
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 215
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 216
    iput-object v6, p0, Lui_Controller/CustomWidget/a;->d:Ljava/util/concurrent/ExecutorService;

    .line 217
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->p:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 218
    return-void
.end method

.method public a(I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 355
    .line 356
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->p:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 357
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/a;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v3

    .line 358
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    .line 359
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 361
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 363
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v5, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 367
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteImage:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    invoke-static {v0, v5}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;I)V

    .line 374
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->o:Lui_Controller/CustomWidget/a$d;

    if-eqz v0, :cond_2

    .line 376
    iget-object v5, p0, Lui_Controller/CustomWidget/a;->o:Lui_Controller/CustomWidget/a$d;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v5, v6, v0}, Lui_Controller/CustomWidget/a$d;->a(ILandroid/graphics/Bitmap;)V

    .line 378
    :cond_2
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 383
    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 386
    :cond_4
    iput-object v4, p0, Lui_Controller/CustomWidget/a;->j:Ljava/util/Map;

    .line 388
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/a;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    .line 389
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 390
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 392
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p1, :cond_6

    .line 394
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 396
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_8

    .line 398
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 400
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->n:Lui_Controller/CustomWidget/a$d;

    if-eqz v0, :cond_7

    .line 402
    iget-object v4, p0, Lui_Controller/CustomWidget/a;->n:Lui_Controller/CustomWidget/a$d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v4, v5, v0}, Lui_Controller/CustomWidget/a$d;->a(ILandroid/graphics/Bitmap;)V

    .line 404
    :cond_7
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 409
    :cond_8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 412
    :cond_9
    iput-object v3, p0, Lui_Controller/CustomWidget/a;->i:Ljava/util/Map;

    .line 413
    iget-object v0, p0, Lui_Controller/CustomWidget/a;->p:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 414
    return-void
.end method

.method public a(Ljava/lang/String;IIIILui_Controller/CustomWidget/a$a;)V
    .locals 8

    .prologue
    .line 232
    iput p3, p0, Lui_Controller/CustomWidget/a;->l:I

    .line 233
    iget-object v7, p0, Lui_Controller/CustomWidget/a;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lui_Controller/CustomWidget/a$1;

    move-object v1, p0

    move v2, p2

    move-object v3, p6

    move-object v4, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lui_Controller/CustomWidget/a$1;-><init>(Lui_Controller/CustomWidget/a;ILui_Controller/CustomWidget/a$a;Ljava/lang/String;II)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 287
    return-void
.end method

.method public a(Lui_Controller/CustomWidget/a$d;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lui_Controller/CustomWidget/a;->o:Lui_Controller/CustomWidget/a$d;

    .line 228
    return-void
.end method

.method public b(Ljava/lang/String;IIIILui_Controller/CustomWidget/a$a;)V
    .locals 8

    .prologue
    .line 291
    iput p3, p0, Lui_Controller/CustomWidget/a;->m:I

    .line 292
    iget-object v7, p0, Lui_Controller/CustomWidget/a;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lui_Controller/CustomWidget/a$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p6

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lui_Controller/CustomWidget/a$2;-><init>(Lui_Controller/CustomWidget/a;Ljava/lang/String;ILui_Controller/CustomWidget/a$a;II)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 351
    return-void
.end method
