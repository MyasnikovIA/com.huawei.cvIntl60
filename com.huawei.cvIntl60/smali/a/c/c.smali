.class public La/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "La/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "La/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, La/c/c;->d:I

    .line 13
    iput-object v1, p0, La/c/c;->e:Ljava/util/concurrent/BlockingQueue;

    .line 14
    iput-object v1, p0, La/c/c;->f:Ljava/util/concurrent/BlockingQueue;

    .line 20
    iput v0, p0, La/c/c;->a:I

    .line 21
    iput v0, p0, La/c/c;->b:I

    .line 22
    iput v0, p0, La/c/c;->c:I

    .line 23
    iput v0, p0, La/c/c;->d:I

    .line 24
    iput-boolean v0, p0, La/c/c;->g:Z

    .line 25
    return-void
.end method
