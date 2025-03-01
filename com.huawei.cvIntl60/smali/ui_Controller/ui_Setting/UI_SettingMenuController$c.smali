.class public Lui_Controller/ui_Setting/UI_SettingMenuController$c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
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
    .line 1296
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1297
    iput-object p4, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->c:Ljava/util/List;

    .line 1298
    iput-object p3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->b:[I

    .line 1299
    iput-object p5, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->d:Ljava/util/List;

    .line 1301
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->e:[Z

    .line 1303
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1305
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->e:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 1303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1307
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1321
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->c:Ljava/util/List;

    invoke-virtual {p0, p1}, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1326
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1331
    .line 1333
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1335
    const v0, 0x7f1000f8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1336
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1337
    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v3

    iget-object v4, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v4, v4, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1338
    const v1, 0x7f1000fb

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1339
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1340
    iget-object v4, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v4

    iget-object v5, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v5, v5, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1343
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v4

    iget-object v5, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v5, v5, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v4, v5

    const/high16 v5, 0x44160000    # 600.0f

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1344
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v3

    iget-object v4, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v4, v4, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v3, v4

    const/high16 v4, 0x43960000    # 300.0f

    invoke-direct {v0, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1347
    const v0, 0x7f1000f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1348
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1349
    const v0, 0x7f1000fd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1350
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->b:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1352
    if-nez p1, :cond_1

    .line 1354
    const v0, 0x7f1000fa

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1355
    const v1, 0x7f0202a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1356
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v1, v1, Lui_Controller/b/f;->n:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$c;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v1, v1, Lui_Controller/b/f;->r:Z

    if-eqz v1, :cond_2

    .line 1357
    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1368
    :cond_1
    :goto_0
    return-object v2

    .line 1359
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
