.class public Lui_Controller/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lui_Controller/ui_Gallery/a/a;

.field public b:Lui_Controller/b/e;

.field public c:I

.field public d:I

.field public e:LGeneralFunction/e/e;

.field public f:LGeneralFunction/e/b;

.field public g:LGeneralFunction/e/b;

.field public h:LGeneralFunction/e/b;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lui_Controller/b/b;->k:I

    .line 29
    iput v1, p0, Lui_Controller/b/b;->l:I

    .line 34
    new-instance v0, Lui_Controller/ui_Gallery/a/a;

    invoke-direct {v0}, Lui_Controller/ui_Gallery/a/a;-><init>()V

    iput-object v0, p0, Lui_Controller/b/b;->a:Lui_Controller/ui_Gallery/a/a;

    .line 35
    new-instance v0, Lui_Controller/b/e;

    invoke-direct {v0}, Lui_Controller/b/e;-><init>()V

    iput-object v0, p0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lui_Controller/b/b;->c:I

    .line 37
    iput v1, p0, Lui_Controller/b/b;->d:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    .line 39
    iput-boolean v1, p0, Lui_Controller/b/b;->i:Z

    .line 40
    iput-boolean v1, p0, Lui_Controller/b/b;->j:Z

    .line 41
    new-instance v0, LGeneralFunction/e/b;

    invoke-direct {v0}, LGeneralFunction/e/b;-><init>()V

    iput-object v0, p0, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    .line 42
    new-instance v0, LGeneralFunction/e/b;

    invoke-direct {v0}, LGeneralFunction/e/b;-><init>()V

    iput-object v0, p0, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    .line 43
    new-instance v0, LGeneralFunction/e/b;

    invoke-direct {v0}, LGeneralFunction/e/b;-><init>()V

    iput-object v0, p0, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    .line 50
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
