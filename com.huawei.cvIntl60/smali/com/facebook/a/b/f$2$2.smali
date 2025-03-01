.class Lcom/facebook/a/b/f$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/f$2;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/b/f$2;


# direct methods
.method constructor <init>(Lcom/facebook/a/b/f$2;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/facebook/a/b/f$2$2;->a:Lcom/facebook/a/b/f$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/facebook/a/b/f;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/a/b/g;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-static {}, Lcom/facebook/a/b/f;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/a/b/g;->d(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 158
    :cond_0
    invoke-static {v1, v0}, Lcom/facebook/a/b/f;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 159
    return-void
.end method
