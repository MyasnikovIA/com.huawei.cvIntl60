.class LGeneralFunction/Player/a/d$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/a/d;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:I


# direct methods
.method public constructor <init>(LGeneralFunction/Player/a/d;IIIFFFFFFI)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, LGeneralFunction/Player/a/d$b;->a:LGeneralFunction/Player/a/d;

    .line 246
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/Player/a/d$b;->b:Z

    .line 247
    iput p2, p0, LGeneralFunction/Player/a/d$b;->c:I

    .line 248
    iput p3, p0, LGeneralFunction/Player/a/d$b;->d:I

    .line 249
    iput p4, p0, LGeneralFunction/Player/a/d$b;->e:I

    .line 250
    iput p5, p0, LGeneralFunction/Player/a/d$b;->f:F

    .line 251
    iput p6, p0, LGeneralFunction/Player/a/d$b;->g:F

    .line 252
    iput p7, p0, LGeneralFunction/Player/a/d$b;->h:F

    .line 253
    iput p8, p0, LGeneralFunction/Player/a/d$b;->i:F

    .line 254
    iput p9, p0, LGeneralFunction/Player/a/d$b;->j:F

    .line 255
    iput p10, p0, LGeneralFunction/Player/a/d$b;->k:F

    .line 256
    iput p11, p0, LGeneralFunction/Player/a/d$b;->l:I

    .line 257
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, LGeneralFunction/Player/a/d$b;->b:Z

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 261
    iget-object v0, p0, LGeneralFunction/Player/a/d$b;->a:LGeneralFunction/Player/a/d;

    iget v1, p0, LGeneralFunction/Player/a/d$b;->c:I

    iget v2, p0, LGeneralFunction/Player/a/d$b;->d:I

    iget v3, p0, LGeneralFunction/Player/a/d$b;->e:I

    iget v4, p0, LGeneralFunction/Player/a/d$b;->f:F

    iget v5, p0, LGeneralFunction/Player/a/d$b;->g:F

    iget v6, p0, LGeneralFunction/Player/a/d$b;->h:F

    iget v7, p0, LGeneralFunction/Player/a/d$b;->i:F

    iget v8, p0, LGeneralFunction/Player/a/d$b;->j:F

    iget v9, p0, LGeneralFunction/Player/a/d$b;->k:F

    iget v10, p0, LGeneralFunction/Player/a/d$b;->l:I

    invoke-static/range {v0 .. v10}, LGeneralFunction/Player/a/d;->a(LGeneralFunction/Player/a/d;IIIFFFFFFI)V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/a/d$b;->b:Z

    .line 263
    return-void
.end method
