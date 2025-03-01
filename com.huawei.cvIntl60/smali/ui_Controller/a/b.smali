.class public Lui_Controller/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(I)Z
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0x100

    invoke-static {p0, v0}, Lui_Controller/a/b;->a(II)Z

    move-result v0

    return v0
.end method

.method private static final a(II)Z
    .locals 1

    .prologue
    .line 181
    const v0, 0xff00

    and-int/2addr v0, p0

    if-ne v0, p1, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final b(I)Z
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x420

    invoke-static {p0, v0}, Lui_Controller/a/b;->b(II)Z

    move-result v0

    return v0
.end method

.method private static final b(II)Z
    .locals 1

    .prologue
    .line 193
    const v0, 0xfff0

    and-int/2addr v0, p0

    if-ne v0, p1, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
