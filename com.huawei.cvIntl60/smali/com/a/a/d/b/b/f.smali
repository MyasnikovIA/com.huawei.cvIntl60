.class public final Lcom/a/a/d/b/b/f;
.super Lcom/a/a/d/b/b/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 13
    const-string v0, "image_manager_disk_cache"

    const/high16 v1, 0xfa00000

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/d/b/b/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/a/a/d/b/b/f$1;

    invoke-direct {v0, p1, p2}, Lcom/a/a/d/b/b/f$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/a/a/d/b/b/d;-><init>(Lcom/a/a/d/b/b/d$a;I)V

    .line 36
    return-void
.end method
