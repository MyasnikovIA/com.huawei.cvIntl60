.class public LGeneralFunction/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 15
    const-string v0, "ImageWidth"

    invoke-static {p0, v0}, LGeneralFunction/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 35
    .line 37
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 42
    :goto_0
    return v0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 20
    const-string v0, "ImageLength"

    invoke-static {p0, v0}, LGeneralFunction/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
