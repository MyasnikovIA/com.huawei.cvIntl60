.class public Landroid/support/v7/widget/w;
.super Landroid/widget/Spinner;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/w$b;,
        Landroid/support/v7/widget/w$a;
    }
.end annotation


# static fields
.field private static final d:[I


# instance fields
.field a:Landroid/support/v7/widget/w$b;

.field b:I

.field final c:Landroid/graphics/Rect;

.field private final e:Landroid/support/v7/widget/f;

.field private final f:Landroid/content/Context;

.field private g:Landroid/support/v7/widget/an;

.field private h:Landroid/widget/SpinnerAdapter;

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/w;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 133
    sget v0, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 148
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    .line 167
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/w;->c:Landroid/graphics/Rect;

    .line 198
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    invoke-static {p1, p2, v0, p3, v6}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bk;

    move-result-object v3

    .line 201
    new-instance v0, Landroid/support/v7/widget/f;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    .line 203
    if-eqz p5, :cond_5

    .line 204
    new-instance v0, Landroid/support/v7/view/d;

    invoke-direct {v0, p1, p5}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Landroid/support/v7/widget/w;->f:Landroid/content/Context;

    .line 216
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/w;->f:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 217
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 220
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/w;->d:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 222
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result p4

    .line 228
    :cond_0
    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    :cond_1
    :goto_1
    if-ne p4, v7, :cond_2

    .line 235
    new-instance v0, Landroid/support/v7/widget/w$b;

    iget-object v2, p0, Landroid/support/v7/widget/w;->f:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p2, p3}, Landroid/support/v7/widget/w$b;-><init>(Landroid/support/v7/widget/w;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 236
    iget-object v2, p0, Landroid/support/v7/widget/w;->f:Landroid/content/Context;

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    invoke-static {v2, p2, v4, p3, v6}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bk;

    move-result-object v2

    .line 238
    sget v4, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v5, -0x2

    invoke-virtual {v2, v4, v5}, Landroid/support/v7/widget/bk;->f(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/w;->b:I

    .line 240
    sget v4, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_popupBackground:I

    .line 241
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/bk;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 240
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/w$b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 242
    sget v4, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/bk;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/w$b;->a(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v2}, Landroid/support/v7/widget/bk;->a()V

    .line 245
    iput-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    .line 246
    new-instance v2, Landroid/support/v7/widget/w$1;

    invoke-direct {v2, p0, p0, v0}, Landroid/support/v7/widget/w$1;-><init>(Landroid/support/v7/widget/w;Landroid/view/View;Landroid/support/v7/widget/w$b;)V

    iput-object v2, p0, Landroid/support/v7/widget/w;->g:Landroid/support/v7/widget/an;

    .line 263
    :cond_2
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bk;->f(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_3

    .line 265
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v2, p1, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 267
    sget v0, Landroid/support/v7/appcompat/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 268
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/w;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 271
    :cond_3
    invoke-virtual {v3}, Landroid/support/v7/widget/bk;->a()V

    .line 273
    iput-boolean v7, p0, Landroid/support/v7/widget/w;->i:Z

    .line 277
    iget-object v0, p0, Landroid/support/v7/widget/w;->h:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Landroid/support/v7/widget/w;->h:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/w;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 279
    iput-object v1, p0, Landroid/support/v7/widget/w;->h:Landroid/widget/SpinnerAdapter;

    .line 282
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/f;->a(Landroid/util/AttributeSet;I)V

    .line 283
    return-void

    .line 206
    :cond_5
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Spinner_popupTheme:I

    invoke-virtual {v3, v0, v6}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    new-instance v2, Landroid/support/v7/view/d;

    invoke-direct {v2, p1, v0}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v7/widget/w;->f:Landroid/content/Context;

    goto/16 :goto_0

    .line 212
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_7

    move-object v0, p1

    :goto_2
    iput-object v0, p0, Landroid/support/v7/widget/w;->f:Landroid/content/Context;

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_2

    .line 225
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 226
    :goto_3
    :try_start_2
    const-string v4, "AppCompatSpinner"

    const-string v5, "Could not read android:spinnerMode"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 228
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_8

    .line 229
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    throw v0

    .line 228
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 225
    :catch_1
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, -0x2

    const/4 v0, 0x0

    .line 543
    if-nez p1, :cond_0

    .line 583
    :goto_0
    return v0

    .line 551
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/w;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 553
    invoke-virtual {p0}, Landroid/support/v7/widget/w;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 557
    invoke-virtual {p0}, Landroid/support/v7/widget/w;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 558
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v4, v1, 0xf

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 559
    sub-int v2, v8, v1

    .line 560
    rsub-int/lit8 v2, v2, 0xf

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v0

    move-object v2, v3

    move v4, v0

    .line 561
    :goto_1
    if-ge v5, v8, :cond_2

    .line 562
    invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    .line 563
    if-eq v0, v1, :cond_4

    move-object v2, v3

    .line 567
    :goto_2
    invoke-interface {p1, v5, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 568
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 569
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    :cond_1
    invoke-virtual {v2, v6, v7}, Landroid/view/View;->measure(II)V

    .line 574
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 561
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_1

    .line 578
    :cond_2
    if-eqz p2, :cond_3

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/w;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 580
    iget-object v0, p0, Landroid/support/v7/widget/w;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/w;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 536
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->c()V

    .line 540
    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/w$b;->j()I

    move-result v0

    .line 363
    :goto_0
    return v0

    .line 360
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 361
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    goto :goto_0

    .line 363
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/w$b;->k()I

    move-result v0

    .line 338
    :goto_0
    return v0

    .line 335
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 336
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownWidth()I
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_0

    .line 378
    iget v0, p0, Landroid/support/v7/widget/w;->b:I

    .line 382
    :goto_0
    return v0

    .line 379
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 380
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    goto :goto_0

    .line 382
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/w$b;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    .line 316
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 317
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/support/v7/widget/w;->f:Landroid/content/Context;

    .line 295
    :goto_0
    return-object v0

    .line 292
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 293
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/w$b;->a()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    .line 502
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    .line 531
    invoke-virtual {v0}, Landroid/support/v7/widget/f;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 406
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/w$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/w$b;->e()V

    .line 409
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 421
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 423
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 424
    invoke-virtual {p0}, Landroid/support/v7/widget/w;->getMeasuredWidth()I

    move-result v0

    .line 426
    invoke-virtual {p0}, Landroid/support/v7/widget/w;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/w;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/w;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 425
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 427
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 425
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 428
    invoke-virtual {p0}, Landroid/support/v7/widget/w;->getMeasuredHeight()I

    move-result v1

    .line 425
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/w;->setMeasuredDimension(II)V

    .line 430
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v7/widget/w;->g:Landroid/support/v7/widget/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/w;->g:Landroid/support/v7/widget/an;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/an;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/w$b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/w$b;->d()V

    .line 439
    :cond_0
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 69
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/w;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    .prologue
    .line 389
    iget-boolean v0, p0, Landroid/support/v7/widget/w;->i:Z

    if-nez v0, :cond_1

    .line 390
    iput-object p1, p0, Landroid/support/v7/widget/w;->h:Landroid/widget/SpinnerAdapter;

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 396
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Landroid/support/v7/widget/w;->f:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/w;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 398
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    new-instance v2, Landroid/support/v7/widget/w$a;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroid/support/v7/widget/w$a;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/w$b;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/w;->f:Landroid/content/Context;

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/graphics/drawable/Drawable;)V

    .line 474
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 462
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 463
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(I)V

    .line 466
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/w$b;->c(I)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 346
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/w$b;->d(I)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 327
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownWidth(I)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_1

    .line 369
    iput p1, p0, Landroid/support/v7/widget/w;->b:I

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 371
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    goto :goto_0
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/w$b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 303
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/support/v7/widget/w;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/w;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/w$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/w$b;->a(Ljava/lang/CharSequence;)V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/content/res/ColorStateList;)V

    .line 489
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Landroid/support/v7/widget/w;->e:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 518
    :cond_0
    return-void
.end method
