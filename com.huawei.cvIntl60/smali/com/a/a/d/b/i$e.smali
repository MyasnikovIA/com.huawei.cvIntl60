.class Lcom/a/a/d/b/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/d/h;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/a/a/d/b/n",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/a/a/d/b/n",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/d/h;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/a/a/d/b/n",
            "<*>;>;>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/a/a/d/b/n",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Lcom/a/a/d/b/i$e;->a:Ljava/util/Map;

    .line 382
    iput-object p2, p0, Lcom/a/a/d/b/i$e;->b:Ljava/lang/ref/ReferenceQueue;

    .line 383
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/a/a/d/b/i$e;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/i$f;

    .line 388
    if-eqz v0, :cond_0

    .line 389
    iget-object v1, p0, Lcom/a/a/d/b/i$e;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/a/a/d/b/i$f;->a:Lcom/a/a/d/h;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
