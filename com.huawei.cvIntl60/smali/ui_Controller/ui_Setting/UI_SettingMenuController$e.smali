.class public Lui_Controller/ui_Setting/UI_SettingMenuController$e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "e"
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
    .line 1209
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1210
    iput-object p4, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->c:Ljava/util/List;

    .line 1211
    iput-object p3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->b:[I

    .line 1212
    iput-object p5, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->d:Ljava/util/List;

    .line 1214
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->e:[Z

    .line 1216
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1218
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->e:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1220
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1223
    invoke-virtual {p0}, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->notifyDataSetChanged()V

    .line 1224
    return-void
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const v3, 0x7f100115

    .line 1229
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1231
    if-ne v1, p1, :cond_0

    .line 1232
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1233
    const v2, 0x7f0202ac

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1229
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1237
    :cond_0
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1238
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1239
    const v2, 0x7f0202ab

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1242
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1252
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->c:Ljava/util/List;

    invoke-virtual {p0, p1}, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1257
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 1262
    .line 1264
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1266
    const v0, 0x7f100113

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1267
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1268
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1269
    const v0, 0x7f100114

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1270
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1271
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1273
    const v0, 0x7f1000fc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1274
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const v4, 0x7f0a00d6

    invoke-virtual {v3, v4}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1276
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v1, v1, Lui_Controller/b/f;->ad:Z

    if-nez v1, :cond_1

    .line 1277
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0098

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1281
    :cond_0
    :goto_0
    const v0, 0x7f100115

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1282
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->b:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1284
    return-object v2

    .line 1279
    :cond_1
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$e;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0091

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
