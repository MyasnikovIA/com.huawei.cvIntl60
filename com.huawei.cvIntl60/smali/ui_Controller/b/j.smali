.class public Lui_Controller/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:LGeneralFunction/a/a;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lui_Controller/b/h;

.field public h:Lui_Controller/b/k;

.field public i:Lui_Controller/b/i;

.field public j:Lui_Controller/b/o;

.field public k:Lui_Controller/b/b;

.field public l:Lui_Controller/b/f;

.field public m:Lui_Controller/b/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lui_Controller/b/j;->d:Z

    .line 12
    iput-boolean v0, p0, Lui_Controller/b/j;->e:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/b/j;->f:Z

    .line 29
    invoke-virtual {p0}, Lui_Controller/b/j;->a()V

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 34
    const-wide/32 v0, 0xfffffff

    iput-wide v0, p0, Lui_Controller/b/j;->a:J

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/b/j;->c:I

    .line 36
    new-instance v0, Lui_Controller/b/k;

    invoke-direct {v0}, Lui_Controller/b/k;-><init>()V

    iput-object v0, p0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    .line 37
    new-instance v0, Lui_Controller/b/i;

    invoke-direct {v0}, Lui_Controller/b/i;-><init>()V

    iput-object v0, p0, Lui_Controller/b/j;->i:Lui_Controller/b/i;

    .line 38
    new-instance v0, Lui_Controller/b/o;

    invoke-direct {v0}, Lui_Controller/b/o;-><init>()V

    iput-object v0, p0, Lui_Controller/b/j;->j:Lui_Controller/b/o;

    .line 39
    new-instance v0, Lui_Controller/b/b;

    invoke-direct {v0}, Lui_Controller/b/b;-><init>()V

    iput-object v0, p0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    .line 40
    new-instance v0, Lui_Controller/b/f;

    invoke-direct {v0}, Lui_Controller/b/f;-><init>()V

    iput-object v0, p0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    .line 41
    new-instance v0, Lui_Controller/b/h;

    invoke-direct {v0}, Lui_Controller/b/h;-><init>()V

    iput-object v0, p0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/b/j;->b:LGeneralFunction/a/a;

    .line 43
    new-instance v0, Lui_Controller/b/g;

    invoke-direct {v0}, Lui_Controller/b/g;-><init>()V

    iput-object v0, p0, Lui_Controller/b/j;->m:Lui_Controller/b/g;

    .line 44
    return-void
.end method
