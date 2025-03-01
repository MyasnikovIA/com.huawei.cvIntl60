.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/Toolbar$a;,
        Landroid/support/v7/widget/Toolbar$SavedState;,
        Landroid/support/v7/widget/Toolbar$b;,
        Landroid/support/v7/widget/Toolbar$c;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final G:[I

.field private final H:Landroid/support/v7/widget/ActionMenuView$e;

.field private I:Landroid/support/v7/widget/bl;

.field private J:Landroid/support/v7/widget/ActionMenuPresenter;

.field private K:Landroid/support/v7/widget/Toolbar$a;

.field private L:Landroid/support/v7/view/menu/o$a;

.field private M:Landroid/support/v7/view/menu/h$a;

.field private N:Z

.field private final O:Ljava/lang/Runnable;

.field private a:Landroid/support/v7/widget/ActionMenuView;

.field b:Landroid/widget/ImageButton;

.field c:Landroid/view/View;

.field d:I

.field e:Landroid/support/v7/widget/Toolbar$c;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/content/Context;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/support/v7/widget/ba;

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/CharSequence;

.field private z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 229
    sget v0, Landroid/support/v7/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v8, -0x80000000

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 233
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->x:I

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->G:[I

    .line 199
    new-instance v0, Landroid/support/v7/widget/Toolbar$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/Toolbar$1;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/ActionMenuView$e;

    .line 218
    new-instance v0, Landroid/support/v7/widget/Toolbar$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/Toolbar$2;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->O:Ljava/lang/Runnable;

    .line 236
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->Toolbar:[I

    invoke-static {v0, p2, v1, p3, v7}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bk;

    move-result-object v1

    .line 239
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->n:I

    .line 240
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->o:I

    .line 241
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->x:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/bk;->c(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->x:I

    .line 242
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_buttonGravity:I

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/bk;->c(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->d:I

    .line 245
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargin:I

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/bk;->d(II)I

    move-result v0

    .line 246
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/bk;->d(II)I

    move-result v0

    .line 250
    :cond_0
    iput v0, p0, Landroid/support/v7/widget/Toolbar;->t:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->s:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->r:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->q:I

    .line 252
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    invoke-virtual {v1, v0, v6}, Landroid/support/v7/widget/bk;->d(II)I

    move-result v0

    .line 253
    if-ltz v0, :cond_1

    .line 254
    iput v0, p0, Landroid/support/v7/widget/Toolbar;->q:I

    .line 257
    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    invoke-virtual {v1, v0, v6}, Landroid/support/v7/widget/bk;->d(II)I

    move-result v0

    .line 258
    if-ltz v0, :cond_2

    .line 259
    iput v0, p0, Landroid/support/v7/widget/Toolbar;->r:I

    .line 262
    :cond_2
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    invoke-virtual {v1, v0, v6}, Landroid/support/v7/widget/bk;->d(II)I

    move-result v0

    .line 263
    if-ltz v0, :cond_3

    .line 264
    iput v0, p0, Landroid/support/v7/widget/Toolbar;->s:I

    .line 267
    :cond_3
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    invoke-virtual {v1, v0, v6}, Landroid/support/v7/widget/bk;->d(II)I

    move-result v0

    .line 269
    if-ltz v0, :cond_4

    .line 270
    iput v0, p0, Landroid/support/v7/widget/Toolbar;->t:I

    .line 273
    :cond_4
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    invoke-virtual {v1, v0, v6}, Landroid/support/v7/widget/bk;->e(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->p:I

    .line 275
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    .line 276
    invoke-virtual {v1, v0, v8}, Landroid/support/v7/widget/bk;->d(II)I

    move-result v0

    .line 278
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    .line 279
    invoke-virtual {v1, v2, v8}, Landroid/support/v7/widget/bk;->d(II)I

    move-result v2

    .line 281
    sget v3, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    .line 282
    invoke-virtual {v1, v3, v7}, Landroid/support/v7/widget/bk;->e(II)I

    move-result v3

    .line 283
    sget v4, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    .line 284
    invoke-virtual {v1, v4, v7}, Landroid/support/v7/widget/bk;->e(II)I

    move-result v4

    .line 286
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->s()V

    .line 287
    iget-object v5, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/widget/ba;->b(II)V

    .line 289
    if-ne v0, v8, :cond_5

    if-eq v2, v8, :cond_6

    .line 291
    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    invoke-virtual {v3, v0, v2}, Landroid/support/v7/widget/ba;->a(II)V

    .line 294
    :cond_6
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    invoke-virtual {v1, v0, v8}, Landroid/support/v7/widget/bk;->d(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->v:I

    .line 296
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEndWithActions:I

    invoke-virtual {v1, v0, v8}, Landroid/support/v7/widget/bk;->d(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->w:I

    .line 299
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/graphics/drawable/Drawable;

    .line 300
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->k:Ljava/lang/CharSequence;

    .line 302
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_title:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 304
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    :cond_7
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitle:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 309
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 313
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->l:Landroid/content/Context;

    .line 314
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_popupTheme:I

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 316
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_9

    .line 318
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :cond_9
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 322
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 325
    :cond_a
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logo:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_b

    .line 327
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_b
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 332
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 335
    :cond_c
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 336
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {v1, v0, v6}, Landroid/support/v7/widget/bk;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 339
    :cond_d
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 340
    sget v0, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v1, v0, v6}, Landroid/support/v7/widget/bk;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 342
    :cond_e
    invoke-virtual {v1}, Landroid/support/v7/widget/bk;->a()V

    .line 343
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 2000
    and-int/lit8 v0, p1, 0x70

    .line 2001
    sparse-switch v0, :sswitch_data_0

    .line 2007
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->x:I

    and-int/lit8 v0, v0, 0x70

    :sswitch_0
    return v0

    .line 2001
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/view/View;I)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1968
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    .line 1969
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1970
    if-lez p2, :cond_0

    sub-int v1, v3, p2

    div-int/lit8 v1, v1, 0x2

    .line 1971
    :goto_0
    iget v4, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->a(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1981
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v4

    .line 1982
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    .line 1983
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v6

    .line 1984
    sub-int v1, v6, v4

    sub-int/2addr v1, v5

    .line 1985
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 1986
    iget v7, v0, Landroid/support/v7/widget/Toolbar$b;->topMargin:I

    if-ge v1, v7, :cond_1

    .line 1987
    iget v0, v0, Landroid/support/v7/widget/Toolbar$b;->topMargin:I

    .line 1995
    :goto_1
    add-int/2addr v0, v4

    :goto_2
    return v0

    :cond_0
    move v1, v2

    .line 1970
    goto :goto_0

    .line 1973
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_2

    .line 1976
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    goto :goto_2

    .line 1989
    :cond_1
    sub-int v5, v6, v5

    sub-int v3, v5, v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    .line 1991
    iget v5, v0, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    if-ge v3, v5, :cond_2

    .line 1992
    iget v0, v0, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    sub-int/2addr v0, v3

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1971
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Landroid/view/View;IIII[I)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1532
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1534
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    aget v2, p6, v5

    sub-int/2addr v1, v2

    .line 1535
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    aget v3, p6, v6

    sub-int/2addr v2, v3

    .line 1536
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1537
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1538
    add-int/2addr v3, v4

    .line 1539
    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v5

    .line 1540
    neg-int v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v6

    .line 1543
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1542
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1545
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1544
    invoke-static {p4, v2, v0}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1548
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method

.method private a(Landroid/view/View;I[II)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1943
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    .line 1944
    iget v1, v0, Landroid/support/v7/widget/Toolbar$b;->leftMargin:I

    aget v2, p3, v3

    sub-int/2addr v1, v2

    .line 1945
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, p2

    .line 1946
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v3

    .line 1947
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result v1

    .line 1948
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1949
    add-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v2, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1950
    iget v0, v0, Landroid/support/v7/widget/Toolbar$b;->rightMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 1951
    return v0
.end method

.method private a(Ljava/util/List;[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1923
    aget v1, p2, v3

    .line 1924
    const/4 v0, 0x1

    aget v0, p2, v0

    .line 1926
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    move v4, v3

    move v5, v0

    move v6, v1

    .line 1927
    :goto_0
    if-ge v2, v7, :cond_0

    .line 1928
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1929
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar$b;

    .line 1930
    iget v8, v1, Landroid/support/v7/widget/Toolbar$b;->leftMargin:I

    sub-int v6, v8, v6

    .line 1931
    iget v1, v1, Landroid/support/v7/widget/Toolbar$b;->rightMargin:I

    sub-int/2addr v1, v5

    .line 1932
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1933
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1934
    neg-int v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1935
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1936
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v8

    add-int/2addr v0, v9

    add-int v1, v4, v0

    .line 1927
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_0

    .line 1938
    :cond_0
    return v4
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1507
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1510
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1509
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1513
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1512
    invoke-static {p4, v2, v0}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1516
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1517
    if-eq v2, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1518
    if-eqz v2, :cond_0

    .line 1519
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 1521
    :cond_0
    invoke-static {p6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1523
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1524
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1392
    if-nez v0, :cond_0

    .line 1393
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->j()Landroid/support/v7/widget/Toolbar$b;

    move-result-object v0

    .line 1399
    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 1401
    if-eqz p2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1402
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1403
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    :goto_1
    return-void

    .line 1394
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1395
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$b;

    move-result-object v0

    goto :goto_0

    .line 1397
    :cond_1
    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    goto :goto_0

    .line 1405
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private a(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2019
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2020
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 2022
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 2021
    invoke-static {p2, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    .line 2024
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2026
    if-eqz v0, :cond_2

    .line 2027
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 2028
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2029
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    .line 2030
    iget v4, v0, Landroid/support/v7/widget/Toolbar$b;->b:I

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    .line 2031
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2032
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2027
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 2019
    goto :goto_0

    .line 2036
    :cond_2
    :goto_2
    if-ge v1, v2, :cond_4

    .line 2037
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2038
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    .line 2039
    iget v5, v0, Landroid/support/v7/widget/Toolbar$b;->b:I

    if-nez v5, :cond_3

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v0, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    .line 2040
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 2041
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2036
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2045
    :cond_4
    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2062
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 2048
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 2049
    invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 2050
    and-int/lit8 v0, v0, 0x7

    .line 2051
    packed-switch v0, :pswitch_data_0

    .line 2057
    :pswitch_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    :pswitch_1
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 2051
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 2066
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2067
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 2068
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/View;I[II)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1956
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    .line 1957
    iget v1, v0, Landroid/support/v7/widget/Toolbar$b;->rightMargin:I

    aget v2, p3, v4

    sub-int/2addr v1, v2

    .line 1958
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, p2, v2

    .line 1959
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v4

    .line 1960
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result v1

    .line 1961
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1962
    sub-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1963
    iget v0, v0, Landroid/support/v7/widget/Toolbar$b;->leftMargin:I

    add-int/2addr v0, v3

    sub-int v0, v2, v0

    .line 1964
    return v0
.end method

.method private c(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 2072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2073
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private d(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2140
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1059
    new-instance v0, Landroid/support/v7/view/g;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    .line 688
    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 1033
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->o()V

    .line 1034
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->d()Landroid/support/v7/view/menu/h;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1036
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/h;

    .line 1037
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    if-nez v1, :cond_0

    .line 1038
    new-instance v1, Landroid/support/v7/widget/Toolbar$a;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/Toolbar$a;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    .line 1040
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1041
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;Landroid/content/Context;)V

    .line 1043
    :cond_1
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 1046
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 1048
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->m:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1049
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->H:Landroid/support/v7/widget/ActionMenuView$e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$e;)V

    .line 1050
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->L:Landroid/support/v7/view/menu/o$a;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->M:Landroid/support/v7/view/menu/h$a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V

    .line 1051
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->j()Landroid/support/v7/widget/Toolbar$b;

    move-result-object v0

    .line 1052
    const v1, 0x800005

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->d:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    .line 1053
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 1056
    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Landroid/support/v7/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    .line 1364
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->j()Landroid/support/v7/widget/Toolbar$b;

    move-result-object v0

    .line 1365
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->d:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    .line 1366
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1446
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1447
    return-void
.end method

.method private r()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1556
    iget-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->N:Z

    if-nez v1, :cond_1

    .line 1566
    :cond_0
    :goto_0
    return v0

    .line 1558
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1559
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1560
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1561
    invoke-direct {p0, v3}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    .line 1562
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1559
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1566
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 2168
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    if-nez v0, :cond_0

    .line 2169
    new-instance v0, Landroid/support/v7/widget/ba;

    invoke-direct {v0}, Landroid/support/v7/widget/ba;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    .line 2171
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$b;
    .locals 2

    .prologue
    .line 2078
    new-instance v0, Landroid/support/v7/widget/Toolbar$b;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/Toolbar$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$b;
    .locals 1

    .prologue
    .line 2083
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$b;

    if-eqz v0, :cond_0

    .line 2084
    new-instance v0, Landroid/support/v7/widget/Toolbar$b;

    check-cast p1, Landroid/support/v7/widget/Toolbar$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$b;-><init>(Landroid/support/v7/widget/Toolbar$b;)V

    .line 2090
    :goto_0
    return-object v0

    .line 2085
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/a$a;

    if-eqz v0, :cond_1

    .line 2086
    new-instance v0, Landroid/support/v7/widget/Toolbar$b;

    check-cast p1, Landroid/support/v7/app/a$a;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$b;-><init>(Landroid/support/v7/app/a$a;)V

    goto :goto_0

    .line 2087
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2088
    new-instance v0, Landroid/support/v7/widget/Toolbar$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 2090
    :cond_2
    new-instance v0, Landroid/support/v7/widget/Toolbar$b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 1105
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->s()V

    .line 1106
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ba;->a(II)V

    .line 1107
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 837
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->n:I

    .line 838
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 841
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 547
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->o()V

    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->d()Landroid/support/v7/view/menu/h;

    move-result-object v0

    .line 553
    if-eq v0, p1, :cond_0

    .line 557
    if-eqz v0, :cond_2

    .line 558
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->J:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/o;)V

    .line 559
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->b(Landroid/support/v7/view/menu/o;)V

    .line 562
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    if-nez v0, :cond_3

    .line 563
    new-instance v0, Landroid/support/v7/widget/Toolbar$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/Toolbar$a;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    .line 566
    :cond_3
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->c(Z)V

    .line 567
    if-eqz p1, :cond_4

    .line 568
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;Landroid/content/Context;)V

    .line 569
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;Landroid/content/Context;)V

    .line 576
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->m:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 577
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 578
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->J:Landroid/support/v7/widget/ActionMenuPresenter;

    goto :goto_0

    .line 571
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {p2, v0, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V

    .line 572
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/Toolbar$a;->a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V

    .line 573
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Z)V

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar$a;->a(Z)V

    goto :goto_1
.end method

.method public a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2160
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->L:Landroid/support/v7/view/menu/o$a;

    .line 2161
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->M:Landroid/support/v7/view/menu/h$a;

    .line 2162
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V

    .line 2165
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 848
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->o:I

    .line 849
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 852
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2101
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->i()V

    .line 588
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->j()Landroid/support/v7/widget/Toolbar$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$b;

    move-result-object v0

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .prologue
    .line 1268
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->w:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/Toolbar;->w:I

    .line 1270
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetStart()I
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .prologue
    .line 1225
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->v:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/Toolbar;->v:I

    .line 1227
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1320
    .line 1321
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_2

    .line 1322
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->d()Landroid/support/v7/view/menu/h;

    move-result-object v0

    .line 1323
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1325
    :goto_0
    if-eqz v0, :cond_1

    .line 1326
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->w:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1327
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 1323
    goto :goto_0

    .line 1327
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    .prologue
    .line 1340
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1341
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    .line 1342
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    .prologue
    .line 1355
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1356
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    .line 1357
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .prologue
    .line 1306
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->v:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1308
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1007
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->n()V

    .line 1008
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 981
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOuterActionMenuPresenter()Landroid/support/v7/widget/ActionMenuPresenter;
    .locals 1

    .prologue
    .line 2177
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->J:Landroid/support/v7/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1028
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->n()V

    .line 1029
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->l:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->m:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->y:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->t:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->r:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->q:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->s:I

    return v0
.end method

.method public getWrapper()Landroid/support/v7/widget/ah;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2111
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Landroid/support/v7/widget/bl;

    if-nez v0, :cond_0

    .line 2112
    new-instance v0, Landroid/support/v7/widget/bl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/bl;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Landroid/support/v7/widget/bl;

    .line 2114
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->I:Landroid/support/v7/widget/bl;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 717
    :goto_0
    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->collapseActionView()Z

    .line 720
    :cond_0
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/j;

    goto :goto_0
.end method

.method i()V
    .locals 4

    .prologue
    .line 1371
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1372
    new-instance v0, Landroid/support/v7/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    .line 1374
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1375
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1376
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->j()Landroid/support/v7/widget/Toolbar$b;

    move-result-object v0

    .line 1377
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->d:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    .line 1378
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 1379
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1380
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    new-instance v1, Landroid/support/v7/widget/Toolbar$3;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/Toolbar$3;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1387
    :cond_0
    return-void
.end method

.method protected j()Landroid/support/v7/widget/Toolbar$b;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 2096
    new-instance v0, Landroid/support/v7/widget/Toolbar$b;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/Toolbar$b;-><init>(II)V

    return-object v0
.end method

.method k()V
    .locals 4

    .prologue
    .line 2118
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 2120
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 2121
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2122
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    .line 2123
    iget v0, v0, Landroid/support/v7/widget/Toolbar$b;->b:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eq v2, v0, :cond_0

    .line 2124
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->removeViewAt(I)V

    .line 2125
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2128
    :cond_1
    return-void
.end method

.method l()V
    .locals 2

    .prologue
    .line 2131
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2133
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2134
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2133
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2136
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2137
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1451
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1452
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1453
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1487
    if-ne v0, v4, :cond_0

    .line 1488
    iput-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->D:Z

    .line 1491
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->D:Z

    if-nez v1, :cond_1

    .line 1492
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1493
    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    .line 1494
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->D:Z

    .line 1498
    :cond_1
    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1499
    :cond_2
    iput-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->D:Z

    .line 1502
    :cond_3
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    .prologue
    .line 1705
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    move v4, v2

    .line 1706
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v12

    .line 1707
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v13

    .line 1708
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v7

    .line 1709
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v14

    .line 1710
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v15

    .line 1711
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v16

    .line 1713
    sub-int v3, v12, v14

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->G:[I

    move-object/from16 v17, v0

    .line 1716
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v17, v5

    aput v6, v17, v2

    .line 1719
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 1720
    if-ltz v2, :cond_9

    sub-int v5, p5, p3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v5, v2

    .line 1722
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1723
    if-eqz v4, :cond_a

    .line 1724
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v3, v1, v5}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v2

    move v6, v7

    .line 1732
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1733
    if-eqz v4, :cond_b

    .line 1734
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v2, v1, v5}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v2

    .line 1742
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1743
    if-eqz v4, :cond_c

    .line 1744
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v6, v1, v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v6

    .line 1752
    :cond_1
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v3

    .line 1753
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v8

    .line 1754
    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int v11, v3, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v17, v9

    .line 1755
    const/4 v9, 0x1

    const/4 v10, 0x0

    sub-int v11, v12, v14

    sub-int/2addr v11, v2

    sub-int v11, v8, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v17, v9

    .line 1756
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1757
    sub-int v6, v12, v14

    sub-int/2addr v6, v8

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1759
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1760
    if-eqz v4, :cond_d

    .line 1761
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v2, v1, v5}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v2

    .line 1769
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1770
    if-eqz v4, :cond_e

    .line 1771
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v2, v1, v5}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v2

    move v6, v2

    move v8, v3

    .line 1779
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v18

    .line 1780
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v19

    .line 1781
    const/4 v3, 0x0

    .line 1782
    if-eqz v18, :cond_3

    .line 1783
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar$b;

    .line 1784
    iget v9, v2, Landroid/support/v7/widget/Toolbar$b;->topMargin:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v2, v2, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v2, v9

    add-int/2addr v3, v2

    .line 1786
    :cond_3
    if-eqz v19, :cond_21

    .line 1787
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar$b;

    .line 1788
    iget v9, v2, Landroid/support/v7/widget/Toolbar$b;->topMargin:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v2, v2, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v2, v9

    add-int/2addr v2, v3

    move v11, v2

    .line 1791
    :goto_7
    if-nez v18, :cond_4

    if-eqz v19, :cond_7

    .line 1793
    :cond_4
    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    move-object v9, v2

    .line 1794
    :goto_8
    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    move-object v3, v2

    .line 1795
    :goto_9
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar$b;

    .line 1796
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar$b;

    .line 1797
    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    if-gtz v9, :cond_6

    :cond_5
    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    .line 1798
    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    if-lez v9, :cond_11

    :cond_6
    const/4 v9, 0x1

    .line 1800
    :goto_a
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->x:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_0

    .line 1806
    sub-int v10, v13, v15

    sub-int v10, v10, v16

    .line 1807
    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    .line 1808
    iget v0, v2, Landroid/support/v7/widget/Toolbar$b;->topMargin:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->s:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    if-ge v10, v0, :cond_12

    .line 1809
    iget v2, v2, Landroid/support/v7/widget/Toolbar$b;->topMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->s:I

    add-int/2addr v2, v3

    .line 1818
    :goto_b
    add-int v10, v15, v2

    .line 1825
    :goto_c
    if-eqz v4, :cond_14

    .line 1826
    if-eqz v9, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/Toolbar;->q:I

    :goto_d
    const/4 v3, 0x1

    aget v3, v17, v3

    sub-int/2addr v2, v3

    .line 1827
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v3, v6, v3

    .line 1828
    const/4 v4, 0x1

    const/4 v6, 0x0

    neg-int v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v17, v4

    .line 1832
    if-eqz v18, :cond_1f

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar$b;

    .line 1834
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    .line 1835
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v10

    .line 1836
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v11, v4, v10, v3, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 1837
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->r:I

    sub-int/2addr v4, v10

    .line 1838
    iget v2, v2, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    add-int v10, v6, v2

    move v6, v4

    .line 1840
    :goto_e
    if-eqz v19, :cond_1e

    .line 1841
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar$b;

    .line 1842
    iget v4, v2, Landroid/support/v7/widget/Toolbar$b;->topMargin:I

    add-int/2addr v4, v10

    .line 1843
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v3, v10

    .line 1844
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v4

    .line 1845
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v13, v10, v4, v3, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 1846
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->r:I

    sub-int v4, v3, v4

    .line 1847
    iget v2, v2, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v2, v11

    move v2, v4

    .line 1849
    :goto_f
    if-eqz v9, :cond_1d

    .line 1850
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_10
    move v6, v2

    .line 1885
    :cond_7
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1886
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1887
    const/4 v2, 0x0

    move v4, v2

    move v3, v8

    :goto_12
    if-ge v4, v9, :cond_16

    .line 1888
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v3, v1, v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    .line 1887
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_12

    .line 1705
    :cond_8
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_0

    .line 1720
    :cond_9
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_1

    .line 1727
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v7, v1, v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v6

    move v2, v3

    goto/16 :goto_2

    .line 1737
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v6, v1, v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v6

    goto/16 :goto_3

    .line 1747
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v2, v1, v5}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v2

    goto/16 :goto_4

    .line 1764
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v3, v1, v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    goto/16 :goto_5

    .line 1774
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v3, v1, v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    move v6, v2

    move v8, v3

    goto/16 :goto_6

    .line 1793
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    move-object v9, v2

    goto/16 :goto_8

    .line 1794
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    move-object v3, v2

    goto/16 :goto_9

    .line 1798
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 1802
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v3

    iget v2, v2, Landroid/support/v7/widget/Toolbar$b;->topMargin:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->s:I

    add-int v10, v2, v3

    .line 1803
    goto/16 :goto_c

    .line 1811
    :cond_12
    sub-int v13, v13, v16

    sub-int v11, v13, v11

    sub-int/2addr v11, v10

    sub-int/2addr v11, v15

    .line 1813
    iget v2, v2, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/Toolbar;->t:I

    add-int/2addr v2, v13

    if-ge v11, v2, :cond_20

    .line 1814
    const/4 v2, 0x0

    iget v3, v3, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/Toolbar;->t:I

    add-int/2addr v3, v13

    sub-int/2addr v3, v11

    sub-int v3, v10, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto/16 :goto_b

    .line 1821
    :sswitch_1
    sub-int v2, v13, v16

    iget v3, v3, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->t:I

    sub-int/2addr v2, v3

    sub-int v10, v2, v11

    goto/16 :goto_c

    .line 1826
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 1853
    :cond_14
    if-eqz v9, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/Toolbar;->q:I

    :goto_13
    const/4 v3, 0x0

    aget v3, v17, v3

    sub-int/2addr v2, v3

    .line 1854
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v8, v3

    .line 1855
    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-int v2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v17, v3

    .line 1859
    if-eqz v18, :cond_1c

    .line 1860
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar$b;

    .line 1861
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v8

    .line 1862
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v10

    .line 1863
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v11, v8, v10, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1864
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/Toolbar;->r:I

    add-int/2addr v3, v10

    .line 1865
    iget v2, v2, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v2, v4

    move v4, v3

    move v10, v2

    .line 1867
    :goto_14
    if-eqz v19, :cond_1b

    .line 1868
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar$b;

    .line 1869
    iget v3, v2, Landroid/support/v7/widget/Toolbar$b;->topMargin:I

    add-int/2addr v3, v10

    .line 1870
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    .line 1871
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v3

    .line 1872
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v13, v8, v3, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 1873
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->r:I

    add-int/2addr v3, v10

    .line 1874
    iget v2, v2, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    add-int/2addr v2, v11

    move v2, v3

    .line 1876
    :goto_15
    if-eqz v9, :cond_7

    .line 1877
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_11

    .line 1853
    :cond_15
    const/4 v2, 0x0

    goto :goto_13

    .line 1892
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1894
    const/4 v2, 0x0

    move v4, v2

    :goto_16
    if-ge v4, v8, :cond_17

    .line 1895
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v6, v1, v5}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v6

    .line 1894
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_16

    .line 1901
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;[I)I

    move-result v4

    .line 1903
    sub-int v2, v12, v7

    sub-int/2addr v2, v14

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v7

    .line 1904
    div-int/lit8 v7, v4, 0x2

    .line 1905
    sub-int/2addr v2, v7

    .line 1906
    add-int/2addr v4, v2

    .line 1907
    if-ge v2, v3, :cond_19

    move v2, v3

    .line 1913
    :cond_18
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1914
    const/4 v3, 0x0

    move v4, v2

    :goto_18
    if-ge v3, v6, :cond_1a

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v4, v1, v5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    .line 1914
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_18

    .line 1909
    :cond_19
    if-le v4, v6, :cond_18

    .line 1910
    sub-int v3, v4, v6

    sub-int/2addr v2, v3

    goto :goto_17

    .line 1919
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1920
    return-void

    :cond_1b
    move v2, v8

    goto/16 :goto_15

    :cond_1c
    move v4, v8

    goto/16 :goto_14

    :cond_1d
    move v2, v3

    goto/16 :goto_10

    :cond_1e
    move v2, v3

    goto/16 :goto_f

    :cond_1f
    move v6, v3

    goto/16 :goto_e

    :cond_20
    move v2, v10

    goto/16 :goto_b

    :cond_21
    move v11, v3

    goto/16 :goto_7

    :cond_22
    move v6, v2

    move v8, v3

    goto/16 :goto_6

    :cond_23
    move v2, v3

    move v6, v7

    goto/16 :goto_2

    .line 1800
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1571
    const/4 v3, 0x0

    .line 1572
    const/4 v11, 0x0

    .line 1573
    const/4 v9, 0x0

    .line 1575
    iget-object v10, p0, Landroid/support/v7/widget/Toolbar;->G:[I

    .line 1578
    invoke-static {p0}, Landroid/support/v7/widget/bs;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1579
    const/4 v1, 0x1

    .line 1580
    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    .line 1588
    :goto_0
    const/4 v0, 0x0

    .line 1589
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1590
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/widget/Toolbar;->p:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1592
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1593
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    .line 1594
    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1593
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1595
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    .line 1596
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    .line 1595
    invoke-static {v9, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v9, v1

    move v11, v2

    .line 1599
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1600
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/widget/Toolbar;->p:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1602
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    .line 1603
    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1604
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    .line 1605
    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1604
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1606
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/ImageButton;

    .line 1607
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    .line 1606
    invoke-static {v9, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1610
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    .line 1611
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    .line 1612
    const/4 v2, 0x0

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v8

    .line 1614
    const/4 v0, 0x0

    .line 1615
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1616
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/widget/Toolbar;->p:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 1618
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1619
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 1620
    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1619
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1621
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    .line 1622
    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredState()I

    move-result v1

    .line 1621
    invoke-static {v9, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1625
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    .line 1626
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    .line 1627
    const/4 v2, 0x0

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v7

    .line 1629
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1630
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/view/View;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1632
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/view/View;

    .line 1633
    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1632
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1634
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/view/View;

    .line 1635
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 1634
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1638
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1639
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1641
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    .line 1642
    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1641
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1643
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    .line 1644
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    .line 1643
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1647
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v8

    .line 1648
    const/4 v0, 0x0

    move v7, v0

    move v12, v9

    :goto_1
    if-ge v7, v8, :cond_7

    .line 1649
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1650
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    .line 1651
    iget v0, v0, Landroid/support/v7/widget/Toolbar$b;->b:I

    if-nez v0, :cond_b

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v12

    move v1, v11

    .line 1648
    :goto_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v12, v0

    move v11, v1

    goto :goto_1

    .line 1582
    :cond_5
    const/4 v1, 0x0

    .line 1583
    const/4 v0, 0x1

    move v7, v0

    move v8, v1

    goto/16 :goto_0

    .line 1656
    :cond_6
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1658
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1659
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    move v1, v2

    goto :goto_2

    .line 1662
    :cond_7
    const/4 v1, 0x0

    .line 1663
    const/4 v0, 0x0

    .line 1664
    iget v2, p0, Landroid/support/v7/widget/Toolbar;->s:I

    iget v4, p0, Landroid/support/v7/widget/Toolbar;->t:I

    add-int v9, v2, v4

    .line 1665
    iget v2, p0, Landroid/support/v7/widget/Toolbar;->q:I

    iget v4, p0, Landroid/support/v7/widget/Toolbar;->r:I

    add-int/2addr v2, v4

    .line 1666
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1667
    iget-object v5, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    add-int v7, v3, v2

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v10}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    .line 1670
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1671
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1672
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v4

    invoke-static {v12, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 1674
    :cond_8
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1675
    iget-object v5, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    add-int v7, v3, v2

    add-int/2addr v9, v0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v10}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1679
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    .line 1680
    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 1681
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    .line 1682
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    .line 1681
    invoke-static {v12, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    .line 1685
    :cond_9
    add-int/2addr v1, v3

    .line 1686
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1690
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1691
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1694
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v12

    .line 1693
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 1697
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v12, 0x10

    .line 1696
    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 1700
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->r()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1701
    return-void

    :cond_b
    move v0, v12

    move v1, v11

    goto/16 :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1423
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$SavedState;

    if-nez v0, :cond_1

    .line 1424
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    check-cast p1, Landroid/support/v7/widget/Toolbar$SavedState;

    .line 1429
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1431
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->d()Landroid/support/v7/view/menu/h;

    move-result-object v0

    .line 1432
    :goto_1
    iget v1, p1, Landroid/support/v7/widget/Toolbar$SavedState;->a:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1433
    iget v1, p1, Landroid/support/v7/widget/Toolbar$SavedState;->a:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1434
    if-eqz v0, :cond_2

    .line 1435
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1439
    :cond_2
    iget-boolean v0, p1, Landroid/support/v7/widget/Toolbar$SavedState;->b:Z

    if-eqz v0, :cond_0

    .line 1440
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->q()V

    goto :goto_0

    .line 1431
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 483
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 484
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 487
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->s()V

    .line 488
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->u:Landroid/support/v7/widget/ba;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ba;->a(Z)V

    .line 489
    return-void

    .line 488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1411
    new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1413
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/j;

    if-eqz v1, :cond_0

    .line 1414
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->K:Landroid/support/v7/widget/Toolbar$a;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/j;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/j;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->a:I

    .line 1417
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->b:Z

    .line 1418
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1463
    if-nez v0, :cond_0

    .line 1464
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->C:Z

    .line 1467
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->C:Z

    if-nez v1, :cond_1

    .line 1468
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1469
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1470
    iput-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->C:Z

    .line 1474
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1475
    :cond_2
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->C:Z

    .line 1478
    :cond_3
    return v2
.end method

.method public setCollapsible(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2150
    iput-boolean p1, p0, Landroid/support/v7/widget/Toolbar;->N:Z

    .line 2151
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2152
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1

    .prologue
    .line 1286
    if-gez p1, :cond_0

    .line 1287
    const/high16 p1, -0x80000000

    .line 1289
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->w:I

    if-eq p1, v0, :cond_1

    .line 1290
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->w:I

    .line 1291
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1292
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1295
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1

    .prologue
    .line 1244
    if-gez p1, :cond_0

    .line 1245
    const/high16 p1, -0x80000000

    .line 1247
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->v:I

    if-eq p1, v0, :cond_1

    .line 1248
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->v:I

    .line 1249
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1253
    :cond_1
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 502
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 621
    if-eqz p1, :cond_2

    .line 622
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->m()V

    .line 623
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 630
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    :cond_1
    return-void

    .line 626
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 628
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 655
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 656
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 667
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->m()V

    .line 670
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 673
    :cond_1
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 903
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 904
    return-void

    .line 903
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 917
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->p()V

    .line 920
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 923
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 940
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 941
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 958
    if-eqz p1, :cond_2

    .line 959
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->p()V

    .line 960
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 967
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 968
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    :cond_1
    return-void

    .line 963
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 965
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 994
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->p()V

    .line 995
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$c;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/support/v7/widget/Toolbar$c;

    .line 1084
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1017
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->n()V

    .line 1018
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1019
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 353
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->m:I

    if-eq v0, p1, :cond_0

    .line 354
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->m:I

    .line 355
    if-nez p1, :cond_1

    .line 356
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->l:Landroid/content/Context;

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->l:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 796
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 806
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 807
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 808
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 809
    new-instance v1, Landroid/support/v7/widget/y;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/y;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    .line 810
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 811
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 812
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->o:I

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->o:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 815
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->B:I

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->B:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 819
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 820
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 826
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 827
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    :cond_3
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->z:Ljava/lang/CharSequence;

    .line 830
    return-void

    .line 822
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 824
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 872
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->B:I

    .line 873
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 876
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 740
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 741
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 752
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 753
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 754
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 755
    new-instance v1, Landroid/support/v7/widget/y;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/y;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    .line 756
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 757
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 758
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->n:I

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->n:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 761
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->A:I

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 766
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    .line 772
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 773
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    :cond_3
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->y:Ljava/lang/CharSequence;

    .line 776
    return-void

    .line 768
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 769
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 770
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    .prologue
    .line 477
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->t:I

    .line 478
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 479
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    .prologue
    .line 455
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->r:I

    .line 457
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 458
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    .prologue
    .line 411
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->q:I

    .line 413
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 414
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    .prologue
    .line 433
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->s:I

    .line 435
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 436
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 860
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->A:I

    .line 861
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 864
    :cond_0
    return-void
.end method
