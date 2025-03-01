.class Lui_Controller/ui_Setting/UI_SettingMenuController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Setting/UI_SettingMenuController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Setting/UI_SettingMenuController;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const v5, 0x7f0202af

    const v4, 0x7f0202ad

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 362
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput p3, v0, Lui_Controller/b/f;->T:I

    .line 363
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->ac:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    .line 366
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Lui_Controller/ui_Setting/UI_SettingMenuController;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v2, v2, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v2, v2, Lui_Controller/b/f;->T:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput v1, v0, Lui_Controller/b/f;->U:I

    .line 368
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->b(Lui_Controller/ui_Setting/UI_SettingMenuController;)[I

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v1, v1, Lui_Controller/b/f;->T:I

    aput v4, v0, v1

    .line 375
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->c(Lui_Controller/ui_Setting/UI_SettingMenuController;)Lui_Controller/ui_Setting/UI_SettingMenuController$d;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v1, v1, Lui_Controller/b/f;->U:I

    invoke-virtual {v0, p3, p2, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a(ILandroid/view/View;I)V

    .line 376
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->i()V

    .line 459
    :cond_1
    :goto_1
    return-void

    .line 371
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput v7, v0, Lui_Controller/b/f;->U:I

    .line 372
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->b(Lui_Controller/ui_Setting/UI_SettingMenuController;)[I

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v1, v1, Lui_Controller/b/f;->T:I

    aput v5, v0, v1

    goto :goto_0

    .line 378
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->ac:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    .line 380
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Lui_Controller/ui_Setting/UI_SettingMenuController;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v2, v2, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v2, v2, Lui_Controller/b/f;->T:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput v1, v0, Lui_Controller/b/f;->U:I

    .line 383
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->b(Lui_Controller/ui_Setting/UI_SettingMenuController;)[I

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v2, v2, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v2, v2, Lui_Controller/b/f;->T:I

    aput v5, v0, v2

    .line 398
    :goto_2
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->c(Lui_Controller/ui_Setting/UI_SettingMenuController;)Lui_Controller/ui_Setting/UI_SettingMenuController$d;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v2, v2, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v2, v2, Lui_Controller/b/f;->U:I

    invoke-virtual {v0, p3, p2, v2, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a(ILandroid/view/View;IZ)V

    .line 399
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->i()V

    goto :goto_1

    .line 390
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iput v7, v0, Lui_Controller/b/f;->U:I

    .line 392
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->b(Lui_Controller/ui_Setting/UI_SettingMenuController;)[I

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v2, v2, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v2, v2, Lui_Controller/b/f;->T:I

    aput v4, v0, v2

    goto :goto_2

    .line 402
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->ac:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    if-eq v0, v8, :cond_6

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->T:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 409
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0, p3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Lui_Controller/ui_Setting/UI_SettingMenuController;I)V

    .line 412
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->d(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v2, "translationX"

    new-array v3, v8, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 413
    new-instance v2, Lui_Controller/ui_Setting/UI_SettingMenuController$1$1;

    invoke-direct {v2, p0}, Lui_Controller/ui_Setting/UI_SettingMenuController$1$1;-><init>(Lui_Controller/ui_Setting/UI_SettingMenuController$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 421
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 422
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v2, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Lui_Controller/ui_Setting/UI_SettingMenuController;Z)V

    .line 423
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 424
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->d(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 426
    :cond_7
    const/16 v0, 0x9

    if-ne p3, v0, :cond_8

    .line 428
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    const-class v2, Lui_Controller/ui_Setting/UI_SettingUserInstructions;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v2, 0x1020

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1, v2, v3, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 430
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 431
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->finish()V

    goto/16 :goto_1

    .line 433
    :cond_8
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v0, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->ac:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    if-ne p3, v0, :cond_9

    .line 435
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iput-boolean v1, v0, Lui_Controller/ui_Setting/UI_SettingMenuController;->g:Z

    .line 436
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 437
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0102

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0105

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    .line 438
    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a008b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v2}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0092

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    move v2, v1

    .line 437
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_1

    .line 441
    :cond_9
    const/16 v0, 0xb

    if-ne p3, v0, :cond_1

    .line 442
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->f(Lui_Controller/ui_Setting/UI_SettingMenuController;)V

    .line 444
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->g(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v2, "translationX"

    new-array v3, v8, [F

    fill-array-data v3, :array_2

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 445
    new-instance v2, Lui_Controller/ui_Setting/UI_SettingMenuController$1$2;

    invoke-direct {v2, p0}, Lui_Controller/ui_Setting/UI_SettingMenuController$1$2;-><init>(Lui_Controller/ui_Setting/UI_SettingMenuController$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 453
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 454
    iget-object v2, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v2, v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Lui_Controller/ui_Setting/UI_SettingMenuController;Z)V

    .line 455
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 456
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$1;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->g(Lui_Controller/ui_Setting/UI_SettingMenuController;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 412
    nop

    :array_0
    .array-data 4
        0x44c80000    # 1600.0f
        0x0
    .end array-data

    .line 438
    :array_1
    .array-data 4
        0x2f07
        0x2404
    .end array-data

    .line 444
    :array_2
    .array-data 4
        0x44c80000    # 1600.0f
        0x0
    .end array-data
.end method
