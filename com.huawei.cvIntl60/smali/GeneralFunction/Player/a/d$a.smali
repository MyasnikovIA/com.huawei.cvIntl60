.class LGeneralFunction/Player/a/d$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/a/d;

.field private b:Z

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(LGeneralFunction/Player/a/d;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 276
    iput-object p1, p0, LGeneralFunction/Player/a/d$a;->a:LGeneralFunction/Player/a/d;

    .line 277
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 272
    iput-boolean v0, p0, LGeneralFunction/Player/a/d$a;->b:Z

    .line 273
    iput v0, p0, LGeneralFunction/Player/a/d$a;->c:I

    .line 274
    iput v0, p0, LGeneralFunction/Player/a/d$a;->d:I

    .line 278
    iput p2, p0, LGeneralFunction/Player/a/d$a;->c:I

    .line 279
    iput p3, p0, LGeneralFunction/Player/a/d$a;->d:I

    .line 280
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, LGeneralFunction/Player/a/d$a;->b:Z

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, LGeneralFunction/Player/a/d$a;->a:LGeneralFunction/Player/a/d;

    iget v1, p0, LGeneralFunction/Player/a/d$a;->c:I

    iget v2, p0, LGeneralFunction/Player/a/d$a;->d:I

    invoke-static {v0, v1, v2}, LGeneralFunction/Player/a/d;->a(LGeneralFunction/Player/a/d;II)V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/Player/a/d$a;->b:Z

    .line 285
    return-void
.end method
