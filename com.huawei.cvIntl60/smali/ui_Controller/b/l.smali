.class public Lui_Controller/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:LThirdParty/b/b;

.field public i:Landroid/graphics/Bitmap;

.field public j:LGeneralFunction/c/c;

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LGeneralFunction/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v2, p0, Lui_Controller/b/l;->a:I

    .line 15
    iput-wide v0, p0, Lui_Controller/b/l;->b:J

    .line 16
    iput-wide v0, p0, Lui_Controller/b/l;->c:J

    .line 17
    iput-wide v0, p0, Lui_Controller/b/l;->d:J

    .line 19
    iput-wide v0, p0, Lui_Controller/b/l;->e:J

    .line 20
    iput-wide v0, p0, Lui_Controller/b/l;->f:J

    .line 21
    iput-wide v0, p0, Lui_Controller/b/l;->g:J

    .line 23
    iput-object v3, p0, Lui_Controller/b/l;->h:LThirdParty/b/b;

    .line 25
    iput-object v3, p0, Lui_Controller/b/l;->i:Landroid/graphics/Bitmap;

    .line 26
    iput-object v3, p0, Lui_Controller/b/l;->j:LGeneralFunction/c/c;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/b/l;->k:Ljava/util/ArrayList;

    .line 28
    iput-boolean v2, p0, Lui_Controller/b/l;->l:Z

    .line 29
    iput-boolean v2, p0, Lui_Controller/b/l;->m:Z

    .line 31
    iput v2, p0, Lui_Controller/b/l;->n:I

    .line 32
    iput v2, p0, Lui_Controller/b/l;->o:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lui_Controller/b/l;->p:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/b/l;->q:Ljava/util/ArrayList;

    .line 42
    return-void
.end method
