.class final Lcom/a/a/d/b/h$1;
.super Lcom/a/a/d/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/a/a/d/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/a/a/d/a;)Z
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/a/a/d/a;->b:Lcom/a/a/d/a;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ZLcom/a/a/d/a;Lcom/a/a/d/c;)Z
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/a/a/d/a;->d:Lcom/a/a/d/a;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/a/a/d/a;->e:Lcom/a/a/d/a;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method
