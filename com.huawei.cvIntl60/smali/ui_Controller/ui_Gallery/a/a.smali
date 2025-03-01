.class public Lui_Controller/ui_Gallery/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LGeneralFunction/e/d;

.field public b:LGeneralFunction/e/d;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lui_Controller/CustomWidget/a/a/a;

.field public k:Lui_Controller/CustomWidget/a/a/d;

.field public l:Lui_Controller/CustomWidget/a/a/d;

.field public m:Lui_Controller/CustomWidget/a/a/d;

.field public n:J

.field public o:J

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Lui_Controller/b/e$a;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->e:I

    .line 25
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->f:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/ui_Gallery/a/a;->s:Z

    .line 48
    iput-boolean v1, p0, Lui_Controller/ui_Gallery/a/a;->t:Z

    .line 49
    iput-boolean v1, p0, Lui_Controller/ui_Gallery/a/a;->u:Z

    .line 52
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->v:I

    .line 53
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->w:I

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lui_Controller/ui_Gallery/a/a;->x:I

    .line 55
    iput v3, p0, Lui_Controller/ui_Gallery/a/a;->y:I

    .line 56
    iput-object v2, p0, Lui_Controller/ui_Gallery/a/a;->z:Lui_Controller/b/e$a;

    .line 60
    new-instance v0, LGeneralFunction/e/d;

    invoke-direct {v0}, LGeneralFunction/e/d;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/a/a;->a:LGeneralFunction/e/d;

    .line 61
    new-instance v0, LGeneralFunction/e/d;

    invoke-direct {v0}, LGeneralFunction/e/d;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/a/a;->b:LGeneralFunction/e/d;

    .line 63
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->c:I

    .line 64
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->f:I

    .line 65
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->d:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/a/a;->g:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/a/a;->h:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/a/a;->i:Ljava/util/ArrayList;

    .line 71
    iput-object v2, p0, Lui_Controller/ui_Gallery/a/a;->j:Lui_Controller/CustomWidget/a/a/a;

    .line 72
    iput-object v2, p0, Lui_Controller/ui_Gallery/a/a;->k:Lui_Controller/CustomWidget/a/a/d;

    .line 73
    iput-object v2, p0, Lui_Controller/ui_Gallery/a/a;->l:Lui_Controller/CustomWidget/a/a/d;

    .line 74
    iput-object v2, p0, Lui_Controller/ui_Gallery/a/a;->m:Lui_Controller/CustomWidget/a/a/d;

    .line 76
    iput-wide v4, p0, Lui_Controller/ui_Gallery/a/a;->n:J

    .line 77
    iput-wide v4, p0, Lui_Controller/ui_Gallery/a/a;->o:J

    .line 78
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->p:I

    .line 79
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->q:I

    .line 81
    iput-boolean v1, p0, Lui_Controller/ui_Gallery/a/a;->r:Z

    .line 83
    iput-boolean v1, p0, Lui_Controller/ui_Gallery/a/a;->t:Z

    .line 84
    iput-boolean v1, p0, Lui_Controller/ui_Gallery/a/a;->u:Z

    .line 86
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->v:I

    .line 87
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->w:I

    .line 88
    iput v1, p0, Lui_Controller/ui_Gallery/a/a;->x:I

    .line 89
    iput v3, p0, Lui_Controller/ui_Gallery/a/a;->y:I

    .line 90
    new-instance v0, Lui_Controller/b/e$a;

    invoke-direct {v0}, Lui_Controller/b/e$a;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/a/a;->z:Lui_Controller/b/e$a;

    .line 91
    return-void
.end method
