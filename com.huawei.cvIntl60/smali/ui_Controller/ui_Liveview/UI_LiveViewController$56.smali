.class Lui_Controller/ui_Liveview/UI_LiveViewController$56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;
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
    .line 1029
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$56;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1032
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$56;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$56;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Z)V

    .line 1034
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$56;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->e(I)V

    .line 1036
    :cond_0
    return-void
.end method
