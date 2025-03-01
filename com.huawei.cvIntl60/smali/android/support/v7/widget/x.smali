.class Landroid/support/v7/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroid/support/v7/widget/bi;

.field private c:Landroid/support/v7/widget/bi;

.field private d:Landroid/support/v7/widget/bi;

.field private e:Landroid/support/v7/widget/bi;

.field private f:Landroid/support/v7/widget/bi;

.field private g:Landroid/support/v7/widget/bi;

.field private final h:Landroid/support/v7/widget/z;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private i:I

.field private j:Landroid/graphics/Typeface;

.field private k:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/x;->i:I

    .line 65
    iput-object p1, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    .line 66
    new-instance v0, Landroid/support/v7/widget/z;

    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/z;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    .line 67
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/support/v7/widget/k;I)Landroid/support/v7/widget/bi;
    .locals 3

    .prologue
    .line 377
    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/k;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_0

    .line 379
    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-direct {v0}, Landroid/support/v7/widget/bi;-><init>()V

    .line 380
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/bi;->d:Z

    .line 381
    iput-object v1, v0, Landroid/support/v7/widget/bi;->a:Landroid/content/res/ColorStateList;

    .line 384
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/support/v7/widget/bk;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v3, p0, Landroid/support/v7/widget/x;->i:I

    invoke-virtual {p2, v0, v3}, Landroid/support/v7/widget/bk;->a(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/x;->i:I

    .line 244
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 245
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 246
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    .line 247
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 250
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 252
    new-instance v4, Landroid/support/v7/widget/x$1;

    invoke-direct {v4, p0, v3}, Landroid/support/v7/widget/x$1;-><init>(Landroid/support/v7/widget/x;Ljava/lang/ref/WeakReference;)V

    .line 265
    :try_start_0
    iget v3, p0, Landroid/support/v7/widget/x;->i:I

    invoke-virtual {p2, v0, v3, v4}, Landroid/support/v7/widget/bk;->a(IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    .line 267
    iget-object v3, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    if-nez v3, :cond_4

    :goto_1
    iput-boolean v1, p0, Landroid/support/v7/widget/x;->k:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    :cond_1
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    if-nez v1, :cond_2

    .line 274
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/bk;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_2

    .line 276
    iget v1, p0, Landroid/support/v7/widget/x;->i:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    .line 300
    :cond_2
    :goto_3
    return-void

    .line 247
    :cond_3
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    goto :goto_0

    :cond_4
    move v1, v2

    .line 267
    goto :goto_1

    .line 282
    :cond_5
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iput-boolean v2, p0, Landroid/support/v7/widget/x;->k:Z

    .line 285
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/bk;->a(II)I

    move-result v0

    .line 286
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 288
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    goto :goto_3

    .line 292
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    goto :goto_3

    .line 296
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    goto :goto_3

    .line 268
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;)V
    .locals 1

    .prologue
    .line 370
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 371
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;[I)V

    .line 373
    :cond_0
    return-void
.end method

.method private b(IF)V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/z;->a(IF)V

    .line 419
    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 352
    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/bi;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->c:Landroid/support/v7/widget/bi;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->d:Landroid/support/v7/widget/bi;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/x;->e:Landroid/support/v7/widget/bi;

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 355
    aget-object v1, v0, v3

    iget-object v2, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/bi;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/x;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;)V

    .line 356
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/x;->c:Landroid/support/v7/widget/bi;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/x;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;)V

    .line 357
    aget-object v1, v0, v4

    iget-object v2, p0, Landroid/support/v7/widget/x;->d:Landroid/support/v7/widget/bi;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/x;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;)V

    .line 358
    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/x;->e:Landroid/support/v7/widget/bi;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/x;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;)V

    .line 360
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/x;->f:Landroid/support/v7/widget/bi;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/bi;

    if-eqz v0, :cond_3

    .line 362
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 363
    aget-object v1, v0, v3

    iget-object v2, p0, Landroid/support/v7/widget/x;->f:Landroid/support/v7/widget/bi;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/x;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;)V

    .line 364
    aget-object v0, v0, v4

    iget-object v1, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/bi;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/x;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;)V

    .line 367
    :cond_3
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/z;->a(I)V

    .line 423
    return-void
.end method

.method a(IF)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 398
    sget-boolean v0, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/x;->b(IF)V

    .line 403
    :cond_0
    return-void
.end method

.method a(IIII)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/z;->a(IIII)V

    .line 432
    return-void
.end method

.method a(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/bk;

    move-result-object v0

    .line 316
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/bk;->a(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/x;->a(Z)V

    .line 323
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 324
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 328
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bk;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_1

    .line 330
    iget-object v2, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 334
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bk;->e(II)I

    move-result v1

    if-nez v1, :cond_2

    .line 336
    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    :cond_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/x;->a(Landroid/content/Context;Landroid/support/v7/widget/bk;)V

    .line 341
    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->a()V

    .line 342
    iget-object v0, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    iget v2, p0, Landroid/support/v7/widget/x;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 345
    :cond_3
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v12, 0x17

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 72
    invoke-static {}, Landroid/support/v7/widget/k;->a()Landroid/support/v7/widget/k;

    move-result-object v0

    .line 75
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I

    invoke-static {v8, p1, v3, p2, v2}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bk;

    move-result-object v3

    .line 77
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    invoke-virtual {v3, v4, v11}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v4

    .line 79
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 81
    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v6

    .line 80
    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/x;->a(Landroid/content/Context;Landroid/support/v7/widget/k;I)Landroid/support/v7/widget/bi;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/bi;

    .line 83
    :cond_0
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 85
    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v6

    .line 84
    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/x;->a(Landroid/content/Context;Landroid/support/v7/widget/k;I)Landroid/support/v7/widget/bi;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/x;->c:Landroid/support/v7/widget/bi;

    .line 87
    :cond_1
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 89
    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v6

    .line 88
    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/x;->a(Landroid/content/Context;Landroid/support/v7/widget/k;I)Landroid/support/v7/widget/bi;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/x;->d:Landroid/support/v7/widget/bi;

    .line 91
    :cond_2
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 93
    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v6

    .line 92
    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/x;->a(Landroid/content/Context;Landroid/support/v7/widget/k;I)Landroid/support/v7/widget/bi;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/x;->e:Landroid/support/v7/widget/bi;

    .line 96
    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_5

    .line 97
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 98
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 99
    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v6

    .line 98
    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/x;->a(Landroid/content/Context;Landroid/support/v7/widget/k;I)Landroid/support/v7/widget/bi;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/x;->f:Landroid/support/v7/widget/bi;

    .line 101
    :cond_4
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 102
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 103
    invoke-virtual {v3, v6, v2}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v6

    .line 102
    invoke-static {v8, v0, v6}, Landroid/support/v7/widget/x;->a(Landroid/content/Context;Landroid/support/v7/widget/k;I)Landroid/support/v7/widget/bi;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/x;->g:Landroid/support/v7/widget/bi;

    .line 107
    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/widget/bk;->a()V

    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v9, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 121
    if-eq v4, v11, :cond_1a

    .line 122
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v8, v4, v0}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/bk;

    move-result-object v10

    .line 123
    if-nez v9, :cond_19

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v10, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 125
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v10, v0, v2}, Landroid/support/v7/widget/bk;->a(IZ)Z

    move-result v3

    move v0, v1

    .line 128
    :goto_0
    invoke-direct {p0, v8, v10}, Landroid/support/v7/widget/x;->a(Landroid/content/Context;Landroid/support/v7/widget/bk;)V

    .line 129
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v12, :cond_18

    .line 132
    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v10, v4}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 133
    sget v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v10, v4}, Landroid/support/v7/widget/bk;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 135
    :goto_1
    sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v10, v6}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 136
    sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v10, v6}, Landroid/support/v7/widget/bk;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 139
    :goto_2
    sget v7, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v10, v7}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 140
    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v10, v5}, Landroid/support/v7/widget/bk;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v7, v5

    .line 144
    :goto_3
    invoke-virtual {v10}, Landroid/support/v7/widget/bk;->a()V

    .line 148
    :goto_4
    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v8, p1, v5, p2, v2}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bk;

    move-result-object v5

    .line 150
    if-nez v9, :cond_6

    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v10}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 152
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v0, v2}, Landroid/support/v7/widget/bk;->a(IZ)Z

    move-result v3

    move v0, v1

    .line 154
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v12, :cond_9

    .line 157
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 158
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/bk;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 160
    :cond_7
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 161
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/bk;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 164
    :cond_8
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 165
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/bk;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 170
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v1, v10, :cond_a

    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 171
    invoke-virtual {v5, v1}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 172
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v5, v1, v11}, Landroid/support/v7/widget/bk;->e(II)I

    move-result v1

    if-nez v1, :cond_a

    .line 173
    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    :cond_a
    invoke-direct {p0, v8, v5}, Landroid/support/v7/widget/x;->a(Landroid/content/Context;Landroid/support/v7/widget/bk;)V

    .line 178
    invoke-virtual {v5}, Landroid/support/v7/widget/bk;->a()V

    .line 180
    if-eqz v4, :cond_b

    .line 181
    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    :cond_b
    if-eqz v6, :cond_c

    .line 184
    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 186
    :cond_c
    if-eqz v7, :cond_d

    .line 187
    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 189
    :cond_d
    if-nez v9, :cond_e

    if-eqz v0, :cond_e

    .line 190
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/x;->a(Z)V

    .line 192
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    if-eqz v0, :cond_f

    .line 193
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    iget v3, p0, Landroid/support/v7/widget/x;->i:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 196
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/z;->a(Landroid/util/AttributeSet;I)V

    .line 198
    sget-boolean v0, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_10

    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->a()I

    move-result v0

    if-eqz v0, :cond_10

    .line 202
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    .line 203
    invoke-virtual {v0}, Landroid/support/v7/widget/z;->e()[I

    move-result-object v0

    .line 204
    array-length v1, v0

    if-lez v1, :cond_10

    .line 205
    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_14

    .line 208
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    .line 209
    invoke-virtual {v1}, Landroid/support/v7/widget/z;->c()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    .line 210
    invoke-virtual {v3}, Landroid/support/v7/widget/z;->d()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    .line 211
    invoke-virtual {v4}, Landroid/support/v7/widget/z;->b()I

    move-result v4

    .line 208
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 222
    :cond_10
    :goto_5
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v8, p1, v0}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/bk;

    move-result-object v0

    .line 223
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v0, v1, v11}, Landroid/support/v7/widget/bk;->e(II)I

    move-result v1

    .line 225
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v0, v2, v11}, Landroid/support/v7/widget/bk;->e(II)I

    move-result v2

    .line 227
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v0, v3, v11}, Landroid/support/v7/widget/bk;->e(II)I

    move-result v3

    .line 229
    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->a()V

    .line 230
    if-eq v1, v11, :cond_11

    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    .line 233
    :cond_11
    if-eq v2, v11, :cond_12

    .line 234
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroid/support/v4/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    .line 236
    :cond_12
    if-eq v3, v11, :cond_13

    .line 237
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroid/support/v4/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    .line 239
    :cond_13
    return-void

    .line 214
    :cond_14
    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_5

    :cond_15
    move-object v7, v5

    goto/16 :goto_3

    :cond_16
    move-object v6, v5

    goto/16 :goto_2

    :cond_17
    move-object v4, v5

    goto/16 :goto_1

    :cond_18
    move-object v7, v5

    move-object v6, v5

    move-object v4, v5

    goto/16 :goto_3

    :cond_19
    move v0, v2

    move v3, v2

    goto/16 :goto_0

    :cond_1a
    move-object v7, v5

    move-object v6, v5

    move-object v4, v5

    move v0, v2

    move v3, v2

    goto/16 :goto_4
.end method

.method a(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    iget-boolean v0, p0, Landroid/support/v7/widget/x;->k:Z

    if-eqz v0, :cond_0

    .line 305
    iput-object p2, p0, Landroid/support/v7/widget/x;->j:Landroid/graphics/Typeface;

    .line 306
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 307
    if-eqz v0, :cond_0

    .line 308
    iget v1, p0, Landroid/support/v7/widget/x;->i:I

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 311
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 349
    return-void
.end method

.method a(ZIIII)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 390
    sget-boolean v0, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Landroid/support/v7/widget/x;->b()V

    .line 393
    :cond_0
    return-void
.end method

.method a([II)V
    .locals 1
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/z;->a([II)V

    .line 437
    return-void
.end method

.method b()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->f()V

    .line 409
    return-void
.end method

.method c()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->g()Z

    move-result v0

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->a()I

    move-result v0

    return v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->b()I

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->c()I

    move-result v0

    return v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->d()I

    move-result v0

    return v0
.end method

.method h()[I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/x;->h:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->e()[I

    move-result-object v0

    return-object v0
.end method
