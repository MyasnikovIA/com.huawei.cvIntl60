.class public Lcom/a/a/d/d/a/m;
.super Lcom/a/a/d/d/a/f;
.source "SourceFile"


# static fields
.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "com.bumptech.glide.load.resource.bitmap.FitCenter"

    sget-object v1, Lcom/a/a/d/d/a/m;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/a/a/d/d/a/m;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/a/a/d/d/a/f;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/d/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/a/a/d/b/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-static {p1, p2, p3, p4}, Lcom/a/a/d/d/a/r;->b(Lcom/a/a/d/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/a/a/d/d/a/m;->b:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 57
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 46
    instance-of v0, p1, Lcom/a/a/d/d/a/m;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    const-string v0, "com.bumptech.glide.load.resource.bitmap.FitCenter"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
