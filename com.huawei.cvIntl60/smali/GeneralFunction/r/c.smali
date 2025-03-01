.class public LGeneralFunction/r/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/media/MediaFormat;

.field public b:Landroid/media/MediaFormat;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:J

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, LGeneralFunction/r/c;->a:Landroid/media/MediaFormat;

    .line 11
    iput-object v1, p0, LGeneralFunction/r/c;->b:Landroid/media/MediaFormat;

    .line 13
    iput v2, p0, LGeneralFunction/r/c;->c:I

    .line 14
    iput v2, p0, LGeneralFunction/r/c;->d:I

    .line 16
    iput v0, p0, LGeneralFunction/r/c;->e:I

    .line 17
    iput v0, p0, LGeneralFunction/r/c;->f:I

    .line 19
    iput-boolean v0, p0, LGeneralFunction/r/c;->g:Z

    .line 20
    iput-boolean v0, p0, LGeneralFunction/r/c;->h:Z

    .line 22
    iput-boolean v0, p0, LGeneralFunction/r/c;->i:Z

    .line 23
    iput-boolean v0, p0, LGeneralFunction/r/c;->j:Z

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LGeneralFunction/r/c;->k:J

    .line 27
    iput v2, p0, LGeneralFunction/r/c;->l:I

    .line 34
    return-void
.end method
