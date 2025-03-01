.class public Lcom/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static volatile a:Lcom/a/a/c;

.field private static volatile b:Z


# instance fields
.field private final c:Lcom/a/a/d/b/i;

.field private final d:Lcom/a/a/d/b/a/e;

.field private final e:Lcom/a/a/d/b/b/h;

.field private final f:Lcom/a/a/d/b/d/a;

.field private final g:Lcom/a/a/e;

.field private final h:Lcom/a/a/h;

.field private final i:Lcom/a/a/d/b/a/b;

.field private final j:Lcom/a/a/e/l;

.field private final k:Lcom/a/a/e/d;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/a/a/f;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/a/a/d/b/i;Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/a/e;Lcom/a/a/d/b/a/b;Lcom/a/a/e/l;Lcom/a/a/e/d;ILcom/a/a/h/d;Ljava/util/Map;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/a/a/d/b/i;",
            "Lcom/a/a/d/b/b/h;",
            "Lcom/a/a/d/b/a/e;",
            "Lcom/a/a/d/b/a/b;",
            "Lcom/a/a/e/l;",
            "Lcom/a/a/e/d;",
            "I",
            "Lcom/a/a/h/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/k",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/a/a/c;->l:Ljava/util/List;

    .line 108
    sget-object v1, Lcom/a/a/f;->b:Lcom/a/a/f;

    iput-object v1, p0, Lcom/a/a/c;->m:Lcom/a/a/f;

    .line 281
    iput-object p2, p0, Lcom/a/a/c;->c:Lcom/a/a/d/b/i;

    .line 282
    iput-object p4, p0, Lcom/a/a/c;->d:Lcom/a/a/d/b/a/e;

    .line 283
    iput-object p5, p0, Lcom/a/a/c;->i:Lcom/a/a/d/b/a/b;

    .line 284
    iput-object p3, p0, Lcom/a/a/c;->e:Lcom/a/a/d/b/b/h;

    .line 285
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/a/a/c;->j:Lcom/a/a/e/l;

    .line 286
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/a/a/c;->k:Lcom/a/a/e/d;

    .line 288
    invoke-virtual/range {p9 .. p9}, Lcom/a/a/h/d;->k()Lcom/a/a/d/j;

    move-result-object v1

    sget-object v2, Lcom/a/a/d/d/a/l;->a:Lcom/a/a/d/i;

    invoke-virtual {v1, v2}, Lcom/a/a/d/j;->a(Lcom/a/a/d/i;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/d/b;

    .line 289
    new-instance v2, Lcom/a/a/d/b/d/a;

    invoke-direct {v2, p3, p4, v1}, Lcom/a/a/d/b/d/a;-><init>(Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/a/e;Lcom/a/a/d/b;)V

    iput-object v2, p0, Lcom/a/a/c;->f:Lcom/a/a/d/b/d/a;

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 293
    new-instance v2, Lcom/a/a/h;

    invoke-direct {v2}, Lcom/a/a/h;-><init>()V

    iput-object v2, p0, Lcom/a/a/c;->h:Lcom/a/a/h;

    .line 294
    iget-object v2, p0, Lcom/a/a/c;->h:Lcom/a/a/h;

    new-instance v3, Lcom/a/a/d/d/a/j;

    invoke-direct {v3}, Lcom/a/a/d/d/a/j;-><init>()V

    invoke-virtual {v2, v3}, Lcom/a/a/h;->a(Lcom/a/a/d/f;)Lcom/a/a/h;

    .line 296
    new-instance v2, Lcom/a/a/d/d/a/l;

    iget-object v3, p0, Lcom/a/a/c;->h:Lcom/a/a/h;

    invoke-virtual {v3}, Lcom/a/a/h;->a()Ljava/util/List;

    move-result-object v3

    .line 297
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-direct {v2, v3, v4, p4, p5}, Lcom/a/a/d/d/a/l;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/a/a/d/b/a/e;Lcom/a/a/d/b/a/b;)V

    .line 298
    new-instance v3, Lcom/a/a/d/d/e/a;

    iget-object v4, p0, Lcom/a/a/c;->h:Lcom/a/a/h;

    .line 299
    invoke-virtual {v4}, Lcom/a/a/h;->a()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p1, v4, p4, p5}, Lcom/a/a/d/d/e/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/a/a/d/b/a/e;Lcom/a/a/d/b/a/b;)V

    .line 301
    iget-object v4, p0, Lcom/a/a/c;->h:Lcom/a/a/h;

    const-class v5, Ljava/nio/ByteBuffer;

    new-instance v6, Lcom/a/a/d/c/c;

    invoke-direct {v6}, Lcom/a/a/d/c/c;-><init>()V

    .line 302
    invoke-virtual {v4, v5, v6}, Lcom/a/a/h;->a(Ljava/lang/Class;Lcom/a/a/d/d;)Lcom/a/a/h;

    move-result-object v4

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lcom/a/a/d/c/t;

    invoke-direct {v6, p5}, Lcom/a/a/d/c/t;-><init>(Lcom/a/a/d/b/a/b;)V

    .line 303
    invoke-virtual {v4, v5, v6}, Lcom/a/a/h;->a(Ljava/lang/Class;Lcom/a/a/d/d;)Lcom/a/a/h;

    move-result-object v4

    const-string v5, "Bitmap"

    const-class v6, Ljava/nio/ByteBuffer;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/a/a/d/d/a/g;

    invoke-direct {v8, v2}, Lcom/a/a/d/d/a/g;-><init>(Lcom/a/a/d/d/a/l;)V

    .line 305
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;

    move-result-object v4

    const-string v5, "Bitmap"

    const-class v6, Ljava/io/InputStream;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/a/a/d/d/a/q;

    invoke-direct {v8, v2, p5}, Lcom/a/a/d/d/a/q;-><init>(Lcom/a/a/d/d/a/l;Lcom/a/a/d/b/a/b;)V

    .line 307
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;

    move-result-object v4

    const-string v5, "Bitmap"

    const-class v6, Landroid/os/ParcelFileDescriptor;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/a/a/d/d/a/s;

    invoke-direct {v8, p4}, Lcom/a/a/d/d/a/s;-><init>(Lcom/a/a/d/b/a/e;)V

    .line 309
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;

    move-result-object v4

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/a/a/d/d/a/d;

    invoke-direct {v6}, Lcom/a/a/d/d/a/d;-><init>()V

    .line 311
    invoke-virtual {v4, v5, v6}, Lcom/a/a/h;->a(Ljava/lang/Class;Lcom/a/a/d/l;)Lcom/a/a/h;

    move-result-object v4

    const-string v5, "BitmapDrawable"

    const-class v6, Ljava/nio/ByteBuffer;

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/a/a/d/d/a/a;

    new-instance v9, Lcom/a/a/d/d/a/g;

    invoke-direct {v9, v2}, Lcom/a/a/d/d/a/g;-><init>(Lcom/a/a/d/d/a/l;)V

    invoke-direct {v8, v1, p4, v9}, Lcom/a/a/d/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/a/a/d/b/a/e;Lcom/a/a/d/k;)V

    .line 313
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;

    move-result-object v4

    const-string v5, "BitmapDrawable"

    const-class v6, Ljava/io/InputStream;

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/a/a/d/d/a/a;

    new-instance v9, Lcom/a/a/d/d/a/q;

    invoke-direct {v9, v2, p5}, Lcom/a/a/d/d/a/q;-><init>(Lcom/a/a/d/d/a/l;Lcom/a/a/d/b/a/b;)V

    invoke-direct {v8, v1, p4, v9}, Lcom/a/a/d/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/a/a/d/b/a/e;Lcom/a/a/d/k;)V

    .line 316
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;

    move-result-object v2

    const-string v4, "BitmapDrawable"

    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lcom/a/a/d/d/a/a;

    new-instance v8, Lcom/a/a/d/d/a/s;

    invoke-direct {v8, p4}, Lcom/a/a/d/d/a/s;-><init>(Lcom/a/a/d/b/a/e;)V

    invoke-direct {v7, v1, p4, v8}, Lcom/a/a/d/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/a/a/d/b/a/e;Lcom/a/a/d/k;)V

    .line 319
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;

    move-result-object v2

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Lcom/a/a/d/d/a/b;

    new-instance v6, Lcom/a/a/d/d/a/d;

    invoke-direct {v6}, Lcom/a/a/d/d/a/d;-><init>()V

    invoke-direct {v5, p4, v6}, Lcom/a/a/d/d/a/b;-><init>(Lcom/a/a/d/b/a/e;Lcom/a/a/d/l;)V

    .line 321
    invoke-virtual {v2, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Lcom/a/a/d/l;)Lcom/a/a/h;

    move-result-object v2

    const-string v4, "Gif"

    const-class v5, Ljava/io/InputStream;

    const-class v6, Lcom/a/a/d/d/e/c;

    new-instance v7, Lcom/a/a/d/d/e/i;

    iget-object v8, p0, Lcom/a/a/c;->h:Lcom/a/a/h;

    .line 324
    invoke-virtual {v8}, Lcom/a/a/h;->a()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8, v3, p5}, Lcom/a/a/d/d/e/i;-><init>(Ljava/util/List;Lcom/a/a/d/k;Lcom/a/a/d/b/a/b;)V

    .line 323
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;

    move-result-object v2

    const-string v4, "Gif"

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Lcom/a/a/d/d/e/c;

    .line 325
    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Lcom/a/a/d/d/e/c;

    new-instance v4, Lcom/a/a/d/d/e/d;

    invoke-direct {v4}, Lcom/a/a/d/d/e/d;-><init>()V

    .line 326
    invoke-virtual {v2, v3, v4}, Lcom/a/a/h;->a(Ljava/lang/Class;Lcom/a/a/d/l;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Lcom/a/a/b/a;

    const-class v4, Lcom/a/a/b/a;

    new-instance v5, Lcom/a/a/d/c/v$a;

    invoke-direct {v5}, Lcom/a/a/d/c/v$a;-><init>()V

    .line 329
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-string v3, "Bitmap"

    const-class v4, Lcom/a/a/b/a;

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/a/a/d/d/e/h;

    invoke-direct {v6, p4}, Lcom/a/a/d/d/e/h;-><init>(Lcom/a/a/d/b/a/e;)V

    .line 330
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;

    move-result-object v2

    new-instance v3, Lcom/a/a/d/d/b/a$a;

    invoke-direct {v3}, Lcom/a/a/d/d/b/a$a;-><init>()V

    .line 333
    invoke-virtual {v2, v3}, Lcom/a/a/h;->a(Lcom/a/a/d/a/c$a;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v5, Lcom/a/a/d/c/d$b;

    invoke-direct {v5}, Lcom/a/a/d/c/d$b;-><init>()V

    .line 334
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/f$e;

    invoke-direct {v5}, Lcom/a/a/d/c/f$e;-><init>()V

    .line 335
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/File;

    new-instance v5, Lcom/a/a/d/d/d/a;

    invoke-direct {v5}, Lcom/a/a/d/d/d/a;-><init>()V

    .line 336
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/k;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/a/a/d/c/f$b;

    invoke-direct {v5}, Lcom/a/a/d/c/f$b;-><init>()V

    .line 337
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/File;

    new-instance v5, Lcom/a/a/d/c/v$a;

    invoke-direct {v5}, Lcom/a/a/d/c/v$a;-><init>()V

    .line 339
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    new-instance v3, Lcom/a/a/d/a/i$a;

    invoke-direct {v3, p5}, Lcom/a/a/d/a/i$a;-><init>(Lcom/a/a/d/b/a/b;)V

    .line 341
    invoke-virtual {v2, v3}, Lcom/a/a/h;->a(Lcom/a/a/d/a/c$a;)Lcom/a/a/h;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/s$b;

    invoke-direct {v5, v1}, Lcom/a/a/d/c/s$b;-><init>(Landroid/content/res/Resources;)V

    .line 342
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/a/a/d/c/s$a;

    invoke-direct {v5, v1}, Lcom/a/a/d/c/s$a;-><init>(Landroid/content/res/Resources;)V

    .line 343
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/s$b;

    invoke-direct {v5, v1}, Lcom/a/a/d/c/s$b;-><init>(Landroid/content/res/Resources;)V

    .line 347
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/a/a/d/c/s$a;

    invoke-direct {v5, v1}, Lcom/a/a/d/c/s$a;-><init>(Landroid/content/res/Resources;)V

    .line 348
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/e$c;

    invoke-direct {v5}, Lcom/a/a/d/c/e$c;-><init>()V

    .line 352
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/u$b;

    invoke-direct {v5}, Lcom/a/a/d/c/u$b;-><init>()V

    .line 353
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/a/a/d/c/u$a;

    invoke-direct {v5}, Lcom/a/a/d/c/u$a;-><init>()V

    .line 354
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/a/b$a;

    invoke-direct {v5}, Lcom/a/a/d/c/a/b$a;-><init>()V

    .line 355
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/a$c;

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/a/a/d/c/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/a/a/d/c/a$b;

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/a/a/d/c/a$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 357
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/a/c$a;

    invoke-direct {v5, p1}, Lcom/a/a/d/c/a/c$a;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/a/d$a;

    invoke-direct {v5, p1}, Lcom/a/a/d/c/a/d$a;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/w$c;

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/a/a/d/c/w$c;-><init>(Landroid/content/ContentResolver;)V

    .line 363
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lcom/a/a/d/c/w$a;

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/a/a/d/c/w$a;-><init>(Landroid/content/ContentResolver;)V

    .line 367
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/x$a;

    invoke-direct {v5}, Lcom/a/a/d/c/x$a;-><init>()V

    .line 369
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Ljava/net/URL;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/a/e$a;

    invoke-direct {v5}, Lcom/a/a/d/c/a/e$a;-><init>()V

    .line 370
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/File;

    new-instance v5, Lcom/a/a/d/c/k$a;

    invoke-direct {v5, p1}, Lcom/a/a/d/c/k$a;-><init>(Landroid/content/Context;)V

    .line 371
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Lcom/a/a/d/c/g;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/a/a$a;

    invoke-direct {v5}, Lcom/a/a/d/c/a/a$a;-><init>()V

    .line 372
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, [B

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v5, Lcom/a/a/d/c/b$a;

    invoke-direct {v5}, Lcom/a/a/d/c/b$a;-><init>()V

    .line 373
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, [B

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lcom/a/a/d/c/b$d;

    invoke-direct {v5}, Lcom/a/a/d/c/b$d;-><init>()V

    .line 374
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/c/o;)Lcom/a/a/h;

    move-result-object v2

    const-class v3, Landroid/graphics/Bitmap;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Lcom/a/a/d/d/f/b;

    invoke-direct {v5, v1, p4}, Lcom/a/a/d/d/f/b;-><init>(Landroid/content/res/Resources;Lcom/a/a/d/b/a/e;)V

    .line 376
    invoke-virtual {v2, v3, v4, v5}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/d/f/d;)Lcom/a/a/h;

    move-result-object v1

    const-class v2, Landroid/graphics/Bitmap;

    const-class v3, [B

    new-instance v4, Lcom/a/a/d/d/f/a;

    invoke-direct {v4}, Lcom/a/a/d/d/f/a;-><init>()V

    .line 378
    invoke-virtual {v1, v2, v3, v4}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/d/f/d;)Lcom/a/a/h;

    move-result-object v1

    const-class v2, Lcom/a/a/d/d/e/c;

    const-class v3, [B

    new-instance v4, Lcom/a/a/d/d/f/c;

    invoke-direct {v4}, Lcom/a/a/d/d/f/c;-><init>()V

    .line 379
    invoke-virtual {v1, v2, v3, v4}, Lcom/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/d/f/d;)Lcom/a/a/h;

    .line 381
    new-instance v4, Lcom/a/a/h/a/e;

    invoke-direct {v4}, Lcom/a/a/h/a/e;-><init>()V

    .line 382
    new-instance v1, Lcom/a/a/e;

    iget-object v3, p0, Lcom/a/a/c;->h:Lcom/a/a/h;

    move-object v2, p1

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object v7, p2

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/a/a/e;-><init>(Landroid/content/Context;Lcom/a/a/h;Lcom/a/a/h/a/e;Lcom/a/a/h/d;Ljava/util/Map;Lcom/a/a/d/b/i;I)V

    iput-object v1, p0, Lcom/a/a/c;->g:Lcom/a/a/e;

    .line 386
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/a/a/c;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/a/a/c;->a:Lcom/a/a/c;

    if-nez v0, :cond_1

    .line 154
    const-class v1, Lcom/a/a/c;

    monitor-enter v1

    .line 155
    :try_start_0
    sget-object v0, Lcom/a/a/c;->a:Lcom/a/a/c;

    if-nez v0, :cond_0

    .line 156
    invoke-static {p0}, Lcom/a/a/c;->c(Landroid/content/Context;)V

    .line 158
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    sget-object v0, Lcom/a/a/c;->a:Lcom/a/a/c;

    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/a/a/j;
    .locals 1

    .prologue
    .line 566
    invoke-static {p0}, Lcom/a/a/c;->e(Landroid/content/Context;)Lcom/a/a/e/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/e/l;->a(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 167
    sget-boolean v0, Lcom/a/a/c;->b:Z

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/a/a/c;->b:Z

    .line 172
    invoke-static {p0}, Lcom/a/a/c;->d(Landroid/content/Context;)V

    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lcom/a/a/c;->b:Z

    .line 174
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 190
    invoke-static {}, Lcom/a/a/c;->i()Lcom/a/a/a;

    move-result-object v3

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 192
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/a/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 193
    :cond_0
    new-instance v0, Lcom/a/a/f/e;

    invoke-direct {v0, v2}, Lcom/a/a/f/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/a/a/f/e;->a()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 196
    :goto_0
    if-eqz v3, :cond_3

    .line 197
    invoke-virtual {v3}, Lcom/a/a/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 199
    invoke-virtual {v3}, Lcom/a/a/a;->a()Ljava/util/Set;

    move-result-object v4

    .line 200
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/f/c;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 205
    const-string v6, "Glide"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    const-string v6, "Glide"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 212
    :cond_3
    const-string v0, "Glide"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/f/c;

    .line 214
    const-string v5, "Glide"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discovered GlideModule from manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 218
    :cond_4
    if-eqz v3, :cond_5

    .line 220
    invoke-virtual {v3}, Lcom/a/a/a;->b()Lcom/a/a/e/l$a;

    move-result-object v0

    .line 221
    :goto_3
    new-instance v4, Lcom/a/a/d;

    invoke-direct {v4}, Lcom/a/a/d;-><init>()V

    .line 222
    invoke-virtual {v4, v0}, Lcom/a/a/d;->a(Lcom/a/a/e/l$a;)Lcom/a/a/d;

    move-result-object v4

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/f/c;

    .line 224
    invoke-interface {v0, v2, v4}, Lcom/a/a/f/c;->a(Landroid/content/Context;Lcom/a/a/d;)V

    goto :goto_4

    .line 220
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 226
    :cond_6
    if-eqz v3, :cond_7

    .line 227
    invoke-virtual {v3, v2, v4}, Lcom/a/a/a;->a(Landroid/content/Context;Lcom/a/a/d;)V

    .line 229
    :cond_7
    invoke-virtual {v4, v2}, Lcom/a/a/d;->a(Landroid/content/Context;)Lcom/a/a/c;

    move-result-object v4

    .line 230
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/f/c;

    .line 231
    iget-object v5, v4, Lcom/a/a/c;->h:Lcom/a/a/h;

    invoke-interface {v0, v2, v4, v5}, Lcom/a/a/f/c;->a(Landroid/content/Context;Lcom/a/a/c;Lcom/a/a/h;)V

    goto :goto_5

    .line 233
    :cond_8
    if-eqz v3, :cond_9

    .line 234
    iget-object v0, v4, Lcom/a/a/c;->h:Lcom/a/a/h;

    invoke-virtual {v3, v2, v4, v0}, Lcom/a/a/a;->a(Landroid/content/Context;Lcom/a/a/c;Lcom/a/a/h;)V

    .line 236
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 237
    sput-object v4, Lcom/a/a/c;->a:Lcom/a/a/c;

    .line 238
    return-void

    :cond_a
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private static e(Landroid/content/Context;)Lcom/a/a/e/l;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 535
    const-string v0, "You cannot start a load on a not yet attached View or a  Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lcom/a/a/j/h;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 540
    invoke-static {p0}, Lcom/a/a/c;->a(Landroid/content/Context;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/e/l;

    move-result-object v0

    return-object v0
.end method

.method private static i()Lcom/a/a/a;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 245
    :try_start_0
    const-string v0, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 247
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 266
    :goto_0
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string v0, "Glide"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "Glide"

    const-string v2, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    .line 265
    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 261
    :catch_2
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()Lcom/a/a/d/b/a/e;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/a/a/c;->d:Lcom/a/a/d/b/a/e;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 481
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 483
    iget-object v0, p0, Lcom/a/a/c;->e:Lcom/a/a/d/b/b/h;

    invoke-interface {v0, p1}, Lcom/a/a/d/b/b/h;->a(I)V

    .line 484
    iget-object v0, p0, Lcom/a/a/c;->d:Lcom/a/a/d/b/a/e;

    invoke-interface {v0, p1}, Lcom/a/a/d/b/a/e;->a(I)V

    .line 485
    iget-object v0, p0, Lcom/a/a/c;->i:Lcom/a/a/d/b/a/b;

    invoke-interface {v0, p1}, Lcom/a/a/d/b/a/b;->a(I)V

    .line 486
    return-void
.end method

.method a(Lcom/a/a/h/a/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/h",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 649
    iget-object v1, p0, Lcom/a/a/c;->l:Ljava/util/List;

    monitor-enter v1

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/a/a/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/j;

    .line 651
    invoke-virtual {v0, p1}, Lcom/a/a/j;->b(Lcom/a/a/h/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    monitor-exit v1

    return-void

    .line 655
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to remove target from managers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Lcom/a/a/j;)V
    .locals 3

    .prologue
    .line 660
    iget-object v1, p0, Lcom/a/a/c;->l:Ljava/util/List;

    monitor-enter v1

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/a/a/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register already registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 664
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/a/a/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    return-void
.end method

.method public b()Lcom/a/a/d/b/a/b;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/a/a/c;->i:Lcom/a/a/d/b/a/b;

    return-object v0
.end method

.method b(Lcom/a/a/j;)V
    .locals 3

    .prologue
    .line 669
    iget-object v1, p0, Lcom/a/a/c;->l:Ljava/util/List;

    monitor-enter v1

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/a/a/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 673
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/a/a/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 674
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/a/a/c;->g:Lcom/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/e;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/a/a/e/d;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/a/a/c;->k:Lcom/a/a/e/d;

    return-object v0
.end method

.method e()Lcom/a/a/e;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/a/a/c;->g:Lcom/a/a/e;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 467
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 469
    iget-object v0, p0, Lcom/a/a/c;->e:Lcom/a/a/d/b/b/h;

    invoke-interface {v0}, Lcom/a/a/d/b/b/h;->a()V

    .line 470
    iget-object v0, p0, Lcom/a/a/c;->d:Lcom/a/a/d/b/a/e;

    invoke-interface {v0}, Lcom/a/a/d/b/a/e;->a()V

    .line 471
    iget-object v0, p0, Lcom/a/a/c;->i:Lcom/a/a/d/b/a/b;

    invoke-interface {v0}, Lcom/a/a/d/b/a/b;->a()V

    .line 472
    return-void
.end method

.method public g()Lcom/a/a/e/l;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/a/a/c;->j:Lcom/a/a/e/l;

    return-object v0
.end method

.method public h()Lcom/a/a/h;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/a/a/c;->h:Lcom/a/a/h;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 685
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/a/a/c;->f()V

    .line 690
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .prologue
    .line 679
    invoke-virtual {p0, p1}, Lcom/a/a/c;->a(I)V

    .line 680
    return-void
.end method
