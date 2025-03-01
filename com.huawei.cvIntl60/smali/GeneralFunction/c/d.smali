.class public LGeneralFunction/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field private g:Z

.field private h:[B


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v2, p0, LGeneralFunction/c/d;->f:J

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/c/d;->g:Z

    .line 21
    iput-object p1, p0, LGeneralFunction/c/d;->h:[B

    .line 22
    array-length v0, p1

    iput v0, p0, LGeneralFunction/c/d;->a:I

    .line 23
    iput-wide v2, p0, LGeneralFunction/c/d;->b:J

    .line 24
    iput-wide v2, p0, LGeneralFunction/c/d;->c:J

    .line 25
    iput-wide v2, p0, LGeneralFunction/c/d;->d:J

    .line 26
    iput-wide v2, p0, LGeneralFunction/c/d;->e:J

    .line 27
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LGeneralFunction/c/d;->h:[B

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, LGeneralFunction/c/d;->g:Z

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/c/d;->g:Z

    .line 47
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/c/d;->g:Z

    .line 52
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/c/d;->h:[B

    .line 57
    return-void
.end method
