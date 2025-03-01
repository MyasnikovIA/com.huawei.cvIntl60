.class Lui_Controller/ui_Liveview/UI_LiveViewController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->ar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Liveview/UI_LiveViewController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;)V
    .locals 0

    .prologue
    .line 1582
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$5;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1586
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$5;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->c:I

    const/16 v1, 0x12b

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$5;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->c:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_1

    .line 1589
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$5;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2258

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    .line 1595
    :goto_0
    return-void

    .line 1593
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$5;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, "error case of btnYoutubeShare "

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Ljava/lang/String;I)V

    goto :goto_0
.end method
