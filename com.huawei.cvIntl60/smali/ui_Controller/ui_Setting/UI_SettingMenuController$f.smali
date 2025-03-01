.class public Lui_Controller/ui_Setting/UI_SettingMenuController$f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Setting/UI_SettingMenuController;

.field private b:[I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Z


# direct methods
.method public constructor <init>(Lui_Controller/ui_Setting/UI_SettingMenuController;Landroid/content/Context;[ILjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1379
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1380
    iput-object p4, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->c:Ljava/util/List;

    .line 1381
    iput-object p3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->b:[I

    .line 1382
    iput-object p5, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->d:Ljava/util/List;

    .line 1384
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->e:[Z

    .line 1386
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1388
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->e:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 1386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1390
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1393
    invoke-virtual {p0}, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->notifyDataSetChanged()V

    .line 1394
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1404
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->c:Ljava/util/List;

    invoke-virtual {p0, p1}, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1409
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1414
    .line 1416
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1418
    const v0, 0x7f100116

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1419
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1420
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v2, v2, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1421
    const v0, 0x7f100118

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1422
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1423
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v2, v2, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1425
    const v0, 0x7f1000f9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1426
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->q(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1429
    const v1, 0x7f100119

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1430
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->b:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1432
    const v1, 0x7f100117

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1433
    const v2, 0x7f0202a9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1445
    if-nez p1, :cond_0

    .line 1448
    const v2, 0x7f1000fc

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1449
    iget-object v4, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v4, v4, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v4, v4, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v4}, La/c/d;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1450
    iget-object v4, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1451
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iget-object v0, v0, Lui_Controller/b/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1452
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->r:Z

    if-eqz v0, :cond_1

    .line 1453
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1462
    :cond_0
    :goto_0
    return-object v3

    .line 1455
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1458
    :cond_2
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$f;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f0098

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1459
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
