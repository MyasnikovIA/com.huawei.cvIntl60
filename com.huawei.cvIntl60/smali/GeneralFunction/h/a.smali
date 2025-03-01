.class public LGeneralFunction/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "La/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lui_Controller/b/b;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, LGeneralFunction/h/a;->a:I

    .line 21
    iput v0, p0, LGeneralFunction/h/a;->b:I

    .line 22
    iput-boolean v0, p0, LGeneralFunction/h/a;->c:Z

    .line 23
    iput-object v1, p0, LGeneralFunction/h/a;->d:Ljava/util/concurrent/BlockingQueue;

    .line 24
    iput-object v1, p0, LGeneralFunction/h/a;->e:Lui_Controller/b/b;

    .line 25
    iput-object v1, p0, LGeneralFunction/h/a;->f:Ljava/lang/String;

    .line 26
    return-void
.end method
