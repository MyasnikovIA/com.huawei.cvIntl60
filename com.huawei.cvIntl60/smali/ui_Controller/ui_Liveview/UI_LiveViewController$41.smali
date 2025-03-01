.class Lui_Controller/ui_Liveview/UI_LiveViewController$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->aM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lui_Controller/ui_Liveview/UI_LiveViewController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;)V
    .locals 1

    .prologue
    .line 3460
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$41;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3461
    invoke-static {}, LGeneralFunction/m/a;->n()I

    move-result v0

    iput v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$41;->a:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 3467
    iput p2, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$41;->a:I

    .line 3468
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$41;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->y(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$41;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->W:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3470
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$41;->b:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$41;->a:I

    invoke-static {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->e(Lui_Controller/ui_Liveview/UI_LiveViewController;I)V

    .line 3472
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 3478
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 3484
    return-void
.end method
