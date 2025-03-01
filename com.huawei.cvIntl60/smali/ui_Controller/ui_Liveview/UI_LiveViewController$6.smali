.class Lui_Controller/ui_Liveview/UI_LiveViewController$6;
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
    .line 1599
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v4, 0x7f0a0057

    const v5, 0x7f0a0056

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1603
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->c:I

    const/16 v3, 0x12b

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->c:I

    const/16 v3, 0x12c

    if-ne v0, v3, :cond_2

    .line 1605
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ae:I

    if-ne v0, v1, :cond_1

    .line 1606
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1607
    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1608
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1609
    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0090

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0095

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move v7, v1

    .line 1606
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    .line 1624
    :goto_0
    return-void

    .line 1613
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1614
    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1615
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 1616
    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0090

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0095

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    move v7, v1

    .line 1613
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    goto :goto_0

    .line 1622
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$6;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, "error case of btnYoutubeStop "

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Ljava/lang/String;I)V

    goto :goto_0

    .line 1609
    :array_0
    .array-data 4
        0x0
        0x2251
    .end array-data

    .line 1616
    :array_1
    .array-data 4
        0x0
        0x225c
    .end array-data
.end method
