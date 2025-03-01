.class LGeneralFunction/Player/player/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/player/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/e;


# direct methods
.method constructor <init>(LGeneralFunction/Player/player/e;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, LGeneralFunction/Player/player/e$3;->a:LGeneralFunction/Player/player/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, LGeneralFunction/Player/player/e$3;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->k(LGeneralFunction/Player/player/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/player/e$3;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->l(LGeneralFunction/Player/player/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/player/e$3;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->m(LGeneralFunction/Player/player/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, LGeneralFunction/Player/player/e$3;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->e(LGeneralFunction/Player/player/e;)I

    .line 382
    iget-object v0, p0, LGeneralFunction/Player/player/e$3;->a:LGeneralFunction/Player/player/e;

    iget-object v1, p0, LGeneralFunction/Player/player/e$3;->a:LGeneralFunction/Player/player/e;

    invoke-static {v1}, LGeneralFunction/Player/player/e;->i(LGeneralFunction/Player/player/e;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, LGeneralFunction/Player/player/e;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    :cond_0
    return-void
.end method
