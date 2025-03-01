.class Lcom/a/a/d/b/i$f;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/a/a/d/b/n",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/a/a/d/h;


# direct methods
.method public constructor <init>(Lcom/a/a/d/h;Lcom/a/a/d/b/n;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            "Lcom/a/a/d/b/n",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/a/a/d/b/n",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 368
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 369
    iput-object p1, p0, Lcom/a/a/d/b/i$f;->a:Lcom/a/a/d/h;

    .line 370
    return-void
.end method
