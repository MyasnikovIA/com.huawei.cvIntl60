.class LGeneralFunction/Player/player/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 454
    iput-object p1, p0, LGeneralFunction/Player/player/e$4;->a:LGeneralFunction/Player/player/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, LGeneralFunction/Player/player/e$4;->a:LGeneralFunction/Player/player/e;

    invoke-virtual {v0}, LGeneralFunction/Player/player/e;->a()V

    .line 459
    iget-object v0, p0, LGeneralFunction/Player/player/e$4;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, LGeneralFunction/Player/player/e$4;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->pause()V

    .line 468
    :goto_0
    iget-object v0, p0, LGeneralFunction/Player/player/e$4;->a:LGeneralFunction/Player/player/e;

    invoke-virtual {v0}, LGeneralFunction/Player/player/e;->show()V

    .line 469
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/e$4;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->start()V

    goto :goto_0
.end method
