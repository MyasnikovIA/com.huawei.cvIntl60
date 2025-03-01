.class public Lui_Controller/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lui_Controller/b/o;->i:I

    .line 21
    iput v1, p0, Lui_Controller/b/o;->a:I

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/b/o;->b:I

    .line 23
    iput-boolean v1, p0, Lui_Controller/b/o;->c:Z

    .line 24
    const-string v0, "Wearable Cam"

    iput-object v0, p0, Lui_Controller/b/o;->d:Ljava/lang/String;

    .line 25
    const-string v0, "12345678"

    iput-object v0, p0, Lui_Controller/b/o;->e:Ljava/lang/String;

    .line 26
    iput-boolean v2, p0, Lui_Controller/b/o;->f:Z

    .line 27
    iput-boolean v2, p0, Lui_Controller/b/o;->g:Z

    .line 28
    iput-boolean v1, p0, Lui_Controller/b/o;->h:Z

    .line 29
    return-void
.end method
