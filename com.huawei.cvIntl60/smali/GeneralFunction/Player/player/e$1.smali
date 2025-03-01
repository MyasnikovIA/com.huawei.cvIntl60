.class LGeneralFunction/Player/player/e$1;
.super Landroid/os/Handler;
.source "SourceFile"


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
.method constructor <init>(LGeneralFunction/Player/player/e;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 284
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 285
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->o()V

    .line 289
    iget-object v0, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v5}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;Z)Z

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v2}, LGeneralFunction/Player/player/e;->b(LGeneralFunction/Player/player/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 291
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 293
    iget-object v2, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v2}, LGeneralFunction/Player/player/e;->c(LGeneralFunction/Player/player/e;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    iget-object v2, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v2, v4}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;Z)Z

    .line 296
    iget-object v2, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v2, v4}, LGeneralFunction/Player/player/e;->b(LGeneralFunction/Player/player/e;Z)Z

    .line 297
    iget-object v2, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    sub-long v0, v6, v0

    long-to-int v0, v0

    invoke-static {v2, v4, v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;II)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;J)J

    .line 303
    iget-object v0, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v5}, LGeneralFunction/Player/player/e;->b(LGeneralFunction/Player/player/e;Z)Z

    .line 306
    iget-object v0, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v1}, LGeneralFunction/Player/player/e;->d(LGeneralFunction/Player/player/e;)I

    move-result v1

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->seekTo(I)V

    .line 307
    iget-object v0, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->e(LGeneralFunction/Player/player/e;)I

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object v0, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->f(LGeneralFunction/Player/player/e;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 319
    :pswitch_2
    iget-object v0, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->g(LGeneralFunction/Player/player/e;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    goto :goto_0

    .line 324
    :pswitch_3
    iget-object v0, p0, LGeneralFunction/Player/player/e$1;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->g(LGeneralFunction/Player/player/e;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    goto/16 :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
