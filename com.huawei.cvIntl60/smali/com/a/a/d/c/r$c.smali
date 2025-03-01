.class Lcom/a/a/d/c/r$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)Lcom/a/a/d/c/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/c/n",
            "<TModel;TData;>;>;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;)",
            "Lcom/a/a/d/c/q",
            "<TModel;TData;>;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/a/a/d/c/q;

    invoke-direct {v0, p1, p2}, Lcom/a/a/d/c/q;-><init>(Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V

    return-object v0
.end method
