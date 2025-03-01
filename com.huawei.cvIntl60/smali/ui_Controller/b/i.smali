.class public Lui_Controller/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:LGeneralFunction/e/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lui_Controller/b/i;->a:I

    .line 31
    iput v1, p0, Lui_Controller/b/i;->b:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/b/i;->c:I

    .line 33
    iput v1, p0, Lui_Controller/b/i;->d:I

    .line 34
    iput-boolean v1, p0, Lui_Controller/b/i;->e:Z

    .line 35
    iput-boolean v1, p0, Lui_Controller/b/i;->f:Z

    .line 36
    iput-boolean v1, p0, Lui_Controller/b/i;->g:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/b/i;->h:LGeneralFunction/e/d;

    .line 38
    return-void
.end method
