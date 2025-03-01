.class public Lui_Controller/ui_Gallery/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LGeneralFunction/e/d;I)I
    .locals 2

    .prologue
    .line 23
    add-int/lit8 v0, p1, 0x1

    .line 25
    invoke-virtual {p0, v0}, LGeneralFunction/e/d;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static b(LGeneralFunction/e/d;I)I
    .locals 2

    .prologue
    .line 33
    add-int/lit8 v0, p1, -0x1

    .line 35
    invoke-virtual {p0, v0}, LGeneralFunction/e/d;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
