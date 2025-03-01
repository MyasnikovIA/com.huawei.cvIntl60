.class public Landroid/support/graphics/drawable/c;
.super Landroid/support/graphics/drawable/h;
.source "SourceFile"

# interfaces
.implements Landroid/support/graphics/drawable/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/c$a;,
        Landroid/support/graphics/drawable/c$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/graphics/drawable/Drawable$Callback;

.field private d:Landroid/support/graphics/drawable/c$a;

.field private e:Landroid/content/Context;

.field private f:Landroid/animation/ArgbEvaluator;

.field private g:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, v0, v0, v0}, Landroid/support/graphics/drawable/c;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/c$a;Landroid/content/res/Resources;)V

    .line 169
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, v0, v0}, Landroid/support/graphics/drawable/c;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/c$a;Landroid/content/res/Resources;)V

    .line 173
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/graphics/drawable/c$a;Landroid/content/res/Resources;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/support/graphics/drawable/c$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-direct {p0}, Landroid/support/graphics/drawable/h;-><init>()V

    .line 156
    iput-object v0, p0, Landroid/support/graphics/drawable/c;->f:Landroid/animation/ArgbEvaluator;

    .line 161
    iput-object v0, p0, Landroid/support/graphics/drawable/c;->g:Landroid/animation/Animator$AnimatorListener;

    .line 164
    iput-object v0, p0, Landroid/support/graphics/drawable/c;->a:Ljava/util/ArrayList;

    .line 723
    new-instance v0, Landroid/support/graphics/drawable/c$1;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/c$1;-><init>(Landroid/support/graphics/drawable/c;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/c;->b:Landroid/graphics/drawable/Drawable$Callback;

    .line 178
    iput-object p1, p0, Landroid/support/graphics/drawable/c;->e:Landroid/content/Context;

    .line 179
    if-eqz p2, :cond_0

    .line 180
    iput-object p2, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Landroid/support/graphics/drawable/c$a;

    iget-object v1, p0, Landroid/support/graphics/drawable/c;->b:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/support/graphics/drawable/c$a;-><init>(Landroid/content/Context;Landroid/support/graphics/drawable/c$a;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/c;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Landroid/support/graphics/drawable/c;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/c;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/c;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 255
    return-object v0
.end method

.method private a(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 651
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 652
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    .line 653
    if-eqz v2, :cond_0

    .line 654
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 655
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-direct {p0, v0}, Landroid/support/graphics/drawable/c;->a(Landroid/animation/Animator;)V

    .line 654
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 659
    :cond_0
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 660
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 661
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 662
    const-string v1, "fillColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "strokeColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->f:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_2

    .line 664
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/c;->f:Landroid/animation/ArgbEvaluator;

    .line 666
    :cond_2
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->f:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 669
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 673
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 674
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 675
    invoke-direct {p0, p2}, Landroid/support/graphics/drawable/c;->a(Landroid/animation/Animator;)V

    .line 677
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 678
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/graphics/drawable/c$a;->d:Ljava/util/ArrayList;

    .line 679
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v1, v0, Landroid/support/graphics/drawable/c$a;->e:Landroid/support/v4/util/ArrayMap;

    .line 681
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->e:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 517
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i;->draw(Landroid/graphics/Canvas;)V

    .line 289
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/support/graphics/drawable/c;->invalidateSelf()V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 324
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/i;->getAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 279
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget v1, v1, Landroid/support/graphics/drawable/c$a;->a:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 266
    new-instance v0, Landroid/support/graphics/drawable/c$b;

    iget-object v1, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/c$b;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 413
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/i;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 405
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/i;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 397
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/i;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/h;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/c;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 508
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 436
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 502
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 441
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 444
    :goto_1
    if-eq v0, v6, :cond_8

    .line 445
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ge v2, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    .line 446
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 447
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v2, "animated-vector"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 452
    sget-object v0, Landroid/support/graphics/drawable/a;->e:[I

    .line 453
    invoke-static {p1, p4, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 456
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 461
    if-eqz v2, :cond_3

    .line 462
    invoke-static {p1, v2, p4}, Landroid/support/graphics/drawable/i;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/i;

    move-result-object v2

    .line 464
    invoke-virtual {v2, v5}, Landroid/support/graphics/drawable/i;->a(Z)V

    .line 465
    iget-object v3, p0, Landroid/support/graphics/drawable/c;->b:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v2, v3}, Landroid/support/graphics/drawable/i;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 466
    iget-object v3, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v3, v3, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    if-eqz v3, :cond_2

    .line 467
    iget-object v3, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v3, v3, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/graphics/drawable/i;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 469
    :cond_2
    iget-object v3, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iput-object v2, v3, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    .line 471
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 498
    :cond_4
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    .line 472
    :cond_5
    const-string v2, "target"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    sget-object v0, Landroid/support/graphics/drawable/a;->f:[I

    .line 474
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 476
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 482
    if-eqz v3, :cond_6

    .line 483
    iget-object v4, p0, Landroid/support/graphics/drawable/c;->e:Landroid/content/Context;

    if-eqz v4, :cond_7

    .line 486
    iget-object v4, p0, Landroid/support/graphics/drawable/c;->e:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/support/graphics/drawable/e;->a(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    .line 488
    invoke-direct {p0, v2, v3}, Landroid/support/graphics/drawable/c;->a(Ljava/lang/String;Landroid/animation/Animator;)V

    .line 495
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 490
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context can\'t be null when inflating animators"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_8
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/c$a;->a()V

    goto/16 :goto_0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 421
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/i;->isAutoMirrored()Z

    move-result v0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    .line 694
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 389
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/i;->isStateful()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/graphics/drawable/h;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 198
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 316
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i;->setLevel(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i;->setState([I)Z

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i;->setAlpha(I)V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i;->setAutoMirrored(Z)V

    goto :goto_0
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/h;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/h;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/h;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/h;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/h;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/h;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 353
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i;->setTint(I)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/i;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 381
    :goto_0
    return v0

    .line 380
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->b:Landroid/support/graphics/drawable/i;

    invoke-virtual {v0, p1, p2}, Landroid/support/graphics/drawable/i;->setVisible(ZZ)Z

    .line 381
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/h;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 710
    invoke-virtual {p0}, Landroid/support/graphics/drawable/c;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->c:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/c;->d:Landroid/support/graphics/drawable/c$a;

    iget-object v0, v0, Landroid/support/graphics/drawable/c$a;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0
.end method
