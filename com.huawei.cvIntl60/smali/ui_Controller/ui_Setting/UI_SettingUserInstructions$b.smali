.class Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Setting/UI_SettingUserInstructions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;


# direct methods
.method constructor <init>(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 290
    move v0, v1

    :goto_0
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)[Landroid/widget/ImageView;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 291
    if-ne p1, v0, :cond_0

    .line 292
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)[Landroid/widget/ImageView;

    move-result-object v2

    aget-object v2, v2, p1

    const v3, 0x7f020189

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 297
    :goto_1
    if-nez p1, :cond_1

    .line 298
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->e(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->f(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->g(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->h(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 290
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)[Landroid/widget/ImageView;

    move-result-object v2

    aget-object v2, v2, v0

    const v3, 0x7f020188

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 303
    :cond_1
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->c(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)[Landroid/widget/ImageView;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_2

    .line 304
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->e(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->f(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->g(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->h(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 310
    :cond_2
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->e(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->f(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->g(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 313
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingUserInstructions$b;->a:Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-static {v2}, Lui_Controller/ui_Setting/UI_SettingUserInstructions;->h(Lui_Controller/ui_Setting/UI_SettingUserInstructions;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 316
    :cond_3
    return-void
.end method
