.class Lui_Controller/ui_Liveview/UI_LiveViewController$11;
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
    .line 1965
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1968
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1994
    :goto_0
    return-void

    .line 1970
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->X()V

    .line 1973
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->e(Z)V

    .line 1974
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->ae:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->e()V

    goto :goto_0

    .line 1977
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1978
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->X()V

    .line 1980
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->h(Lui_Controller/ui_Liveview/UI_LiveViewController;)V

    .line 1981
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->e(Z)V

    .line 1982
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->ae:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->e()V

    goto :goto_0

    .line 1985
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(Z)V

    goto :goto_0

    .line 1988
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(Z)V

    .line 1989
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$11;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(Z)V

    goto :goto_0

    .line 1968
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100307 -> :sswitch_0
        0x7f100309 -> :sswitch_1
        0x7f100313 -> :sswitch_2
        0x7f100317 -> :sswitch_3
    .end sparse-switch
.end method
