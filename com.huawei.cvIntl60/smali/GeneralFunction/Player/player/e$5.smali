.class LGeneralFunction/Player/player/e$5;
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
    .line 711
    iput-object p1, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 768
    :goto_0
    return-void

    .line 718
    :pswitch_0
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->n(LGeneralFunction/Player/player/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;

    move-result-object v0

    .line 721
    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->c(I)V

    .line 722
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v3}, LGeneralFunction/Player/player/e;->d(LGeneralFunction/Player/player/e;Z)Z

    .line 723
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v3}, LGeneralFunction/Player/player/e;->e(LGeneralFunction/Player/player/e;Z)V

    goto :goto_0

    .line 727
    :cond_0
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v2}, LGeneralFunction/Player/player/e;->d(LGeneralFunction/Player/player/e;Z)Z

    .line 728
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v2}, LGeneralFunction/Player/player/e;->e(LGeneralFunction/Player/player/e;Z)V

    goto :goto_0

    .line 734
    :pswitch_1
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;

    move-result-object v0

    .line 735
    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->c(I)V

    goto :goto_0

    .line 739
    :pswitch_2
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->n(LGeneralFunction/Player/player/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 741
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;

    move-result-object v0

    const/4 v1, 0x2

    .line 742
    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->c(I)V

    .line 743
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->o(LGeneralFunction/Player/player/e;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 744
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v3}, LGeneralFunction/Player/player/e;->d(LGeneralFunction/Player/player/e;Z)Z

    goto :goto_0

    .line 748
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->o(LGeneralFunction/Player/player/e;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 749
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v2}, LGeneralFunction/Player/player/e;->d(LGeneralFunction/Player/player/e;Z)Z

    goto :goto_0

    .line 754
    :pswitch_3
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->n(LGeneralFunction/Player/player/e;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 756
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0}, LGeneralFunction/Player/player/e;->a(LGeneralFunction/Player/player/e;)LGeneralFunction/Player/player/SphericalVideoPlayer;

    move-result-object v0

    const/4 v1, 0x3

    .line 757
    invoke-virtual {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->c(I)V

    .line 758
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v3}, LGeneralFunction/Player/player/e;->d(LGeneralFunction/Player/player/e;Z)Z

    .line 759
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v3}, LGeneralFunction/Player/player/e;->f(LGeneralFunction/Player/player/e;Z)V

    goto/16 :goto_0

    .line 763
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v2}, LGeneralFunction/Player/player/e;->d(LGeneralFunction/Player/player/e;Z)Z

    .line 764
    iget-object v0, p0, LGeneralFunction/Player/player/e$5;->a:LGeneralFunction/Player/player/e;

    invoke-static {v0, v2}, LGeneralFunction/Player/player/e;->f(LGeneralFunction/Player/player/e;Z)V

    goto/16 :goto_0

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000c6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
