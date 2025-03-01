.class LGeneralFunction/Player/player/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 331
    iput-object p1, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 334
    if-nez p3, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 341
    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 343
    iget-object v2, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-static {v2}, LGeneralFunction/Player/player/e;->c(LGeneralFunction/Player/player/e;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 344
    iget-object v2, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-static {v2, v4}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;Z)Z

    .line 345
    iget-object v2, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;II)V

    .line 348
    :cond_2
    iget-object v2, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    long-to-int v3, v0

    invoke-static {v2, v3}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;I)I

    .line 349
    iget-object v2, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "================"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "==========="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;Ljava/lang/String;I)V

    .line 350
    iget-object v2, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-static {v2}, LGeneralFunction/Player/player/e;->h(LGeneralFunction/Player/player/e;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-static {v2}, LGeneralFunction/Player/player/e;->h(LGeneralFunction/Player/player/e;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    long-to-int v0, v0

    invoke-static {v3, v0}, LGeneralFunction/Player/player/e;->b(LGeneralFunction/Player/player/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-virtual {v0}, LGeneralFunction/Player/player/e;->show()V

    .line 357
    iget-object v0, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LGeneralFunction/Player/player/e;->c(LGeneralFunction/Player/player/e;Z)Z

    .line 358
    iget-object v0, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    iget-object v1, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-static {v1}, LGeneralFunction/Player/player/e;->i(LGeneralFunction/Player/player/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/e;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LGeneralFunction/Player/player/e;->c(LGeneralFunction/Player/player/e;Z)Z

    .line 364
    iget-object v0, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->e(LGeneralFunction/Player/player/e;)I

    .line 365
    iget-object v0, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->j(LGeneralFunction/Player/player/e;)V

    .line 366
    iget-object v0, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-virtual {v0}, LGeneralFunction/Player/player/e;->show()V

    .line 371
    iget-object v0, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    iget-object v1, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-static {v1}, LGeneralFunction/Player/player/e;->i(LGeneralFunction/Player/player/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/e;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 372
    iget-object v0, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    iget-object v1, p0, LGeneralFunction/Player/player/e$2;->a:LGeneralFunction/Player/player/e;

    invoke-static {v1}, LGeneralFunction/Player/player/e;->i(LGeneralFunction/Player/player/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/e;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method
