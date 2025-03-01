.class Lcom/a/a/d/b/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/a/a/d/h;

.field private b:Lcom/a/a/d/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/l",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private c:Lcom/a/a/d/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b/r",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/a/a/d/b/f$d;Lcom/a/a/d/j;)V
    .locals 5

    .prologue
    .line 632
    const-string v0, "DecodeJob.encode"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 634
    :try_start_0
    invoke-interface {p1}, Lcom/a/a/d/b/f$d;->a()Lcom/a/a/d/b/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/f$c;->a:Lcom/a/a/d/h;

    new-instance v2, Lcom/a/a/d/b/c;

    iget-object v3, p0, Lcom/a/a/d/b/f$c;->b:Lcom/a/a/d/l;

    iget-object v4, p0, Lcom/a/a/d/b/f$c;->c:Lcom/a/a/d/b/r;

    invoke-direct {v2, v3, v4, p2}, Lcom/a/a/d/b/c;-><init>(Lcom/a/a/d/d;Ljava/lang/Object;Lcom/a/a/d/j;)V

    invoke-interface {v0, v1, v2}, Lcom/a/a/d/b/b/a;->a(Lcom/a/a/d/h;Lcom/a/a/d/b/b/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    iget-object v0, p0, Lcom/a/a/d/b/f$c;->c:Lcom/a/a/d/b/r;

    invoke-virtual {v0}, Lcom/a/a/d/b/r;->a()V

    .line 638
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 640
    return-void

    .line 637
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/a/a/d/b/f$c;->c:Lcom/a/a/d/b/r;

    invoke-virtual {v1}, Lcom/a/a/d/b/r;->a()V

    .line 638
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0
.end method

.method a(Lcom/a/a/d/h;Lcom/a/a/d/l;Lcom/a/a/d/b/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/h;",
            "Lcom/a/a/d/l",
            "<TX;>;",
            "Lcom/a/a/d/b/r",
            "<TX;>;)V"
        }
    .end annotation

    .prologue
    .line 626
    iput-object p1, p0, Lcom/a/a/d/b/f$c;->a:Lcom/a/a/d/h;

    .line 627
    iput-object p2, p0, Lcom/a/a/d/b/f$c;->b:Lcom/a/a/d/l;

    .line 628
    iput-object p3, p0, Lcom/a/a/d/b/f$c;->c:Lcom/a/a/d/b/r;

    .line 629
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/a/a/d/b/f$c;->c:Lcom/a/a/d/b/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 647
    iput-object v0, p0, Lcom/a/a/d/b/f$c;->a:Lcom/a/a/d/h;

    .line 648
    iput-object v0, p0, Lcom/a/a/d/b/f$c;->b:Lcom/a/a/d/l;

    .line 649
    iput-object v0, p0, Lcom/a/a/d/b/f$c;->c:Lcom/a/a/d/b/r;

    .line 650
    return-void
.end method
