.class Lcom/facebook/a/b/f$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/f$2;->onActivityResumed(Landroid/app/Activity;)V
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
    .line 115
    iput-object p1, p0, Lcom/facebook/a/b/f$2$1;->a:Lcom/facebook/a/b/f$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 118
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    .line 120
    invoke-static {}, Lcom/facebook/a/b/f;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/a/b/g;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    invoke-static {v1, v0}, Lcom/facebook/a/b/f;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 124
    invoke-static {}, Lcom/facebook/a/b/f;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/a/b/g;->c(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 126
    invoke-static {}, Lcom/facebook/a/b/f;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/a/b/g;->b(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    sget-object v4, Lcom/facebook/a/b/l;->c:Lcom/facebook/a/b/l;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {v1, v2}, Lcom/facebook/a/b/f;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 131
    return-void
.end method
