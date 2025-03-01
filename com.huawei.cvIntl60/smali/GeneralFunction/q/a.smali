.class public LGeneralFunction/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/q/a$a;,
        LGeneralFunction/q/a$b;
    }
.end annotation


# instance fields
.field private a:LThirdParty/OpenCV/OpenCVFunc;

.field private b:LGeneralFunction/q/a$a;

.field private c:Ljava/lang/Thread;


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, LGeneralFunction/q/a;->b:LGeneralFunction/q/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, LGeneralFunction/q/a$a;->a:Z

    .line 392
    iget-object v0, p0, LGeneralFunction/q/a;->a:LThirdParty/OpenCV/OpenCVFunc;

    invoke-virtual {v0}, LThirdParty/OpenCV/OpenCVFunc;->cancelStitchMatch()Z

    .line 393
    iget-object v0, p0, LGeneralFunction/q/a;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 394
    return-void
.end method
