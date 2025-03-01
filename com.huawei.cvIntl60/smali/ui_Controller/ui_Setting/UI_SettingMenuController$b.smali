.class public Lui_Controller/ui_Setting/UI_SettingMenuController$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
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


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1498
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->c:Ljava/util/List;

    invoke-virtual {p0, p1}, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1503
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 1508
    .line 1510
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1512
    const v0, 0x7f100116

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1513
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1514
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1515
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->q(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x320

    div-int/lit16 v1, v1, 0x384

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1516
    const v0, 0x7f100118

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1517
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1518
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1519
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->q(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int/lit16 v1, v1, 0x384

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1522
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->q(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x1b

    int-to-float v1, v1

    invoke-static {v0, v1}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v3

    .line 1523
    const v0, 0x7f1000f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1524
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1525
    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1526
    const v0, 0x7f100119

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1527
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$b;->b:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1529
    return-object v2
.end method
