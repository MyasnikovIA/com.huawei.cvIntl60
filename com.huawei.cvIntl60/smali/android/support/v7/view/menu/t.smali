.class final Landroid/support/v7/view/menu/t;
.super Landroid/support/v7/view/menu/m;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/o;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field private static final e:I


# instance fields
.field final a:Landroid/support/v7/widget/at;

.field final b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field c:Landroid/view/View;

.field d:Landroid/view/ViewTreeObserver;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/support/v7/view/menu/h;

.field private final h:Landroid/support/v7/view/menu/g;

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Landroid/view/View$OnAttachStateChangeListener;

.field private n:Landroid/widget/PopupWindow$OnDismissListener;

.field private o:Landroid/view/View;

.field private p:Landroid/support/v7/view/menu/o$a;

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/view/menu/t;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;IIZ)V
    .locals 5

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/support/v7/view/menu/m;-><init>()V

    .line 60
    new-instance v0, Landroid/support/v7/view/menu/t$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/t$1;-><init>(Landroid/support/v7/view/menu/t;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 79
    new-instance v0, Landroid/support/v7/view/menu/t$2;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/t$2;-><init>(Landroid/support/v7/view/menu/t;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->m:Landroid/view/View$OnAttachStateChangeListener;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/t;->t:I

    .line 118
    iput-object p1, p0, Landroid/support/v7/view/menu/t;->f:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Landroid/support/v7/view/menu/t;->g:Landroid/support/v7/view/menu/h;

    .line 120
    iput-boolean p6, p0, Landroid/support/v7/view/menu/t;->i:Z

    .line 121
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    new-instance v1, Landroid/support/v7/view/menu/g;

    iget-boolean v2, p0, Landroid/support/v7/view/menu/t;->i:Z

    sget v3, Landroid/support/v7/view/menu/t;->e:I

    invoke-direct {v1, p2, v0, v2, v3}, Landroid/support/v7/view/menu/g;-><init>(Landroid/support/v7/view/menu/h;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Landroid/support/v7/view/menu/t;->h:Landroid/support/v7/view/menu/g;

    .line 123
    iput p4, p0, Landroid/support/v7/view/menu/t;->k:I

    .line 124
    iput p5, p0, Landroid/support/v7/view/menu/t;->l:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 127
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/t;->j:I

    .line 130
    iput-object p3, p0, Landroid/support/v7/view/menu/t;->o:Landroid/view/View;

    .line 132
    new-instance v0, Landroid/support/v7/widget/at;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->f:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v7/view/menu/t;->k:I

    iget v4, p0, Landroid/support/v7/view/menu/t;->l:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/at;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    .line 135
    invoke-virtual {p2, p0, p1}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method private j()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-virtual {p0}, Landroid/support/v7/view/menu/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return v2

    .line 153
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/view/menu/t;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->o:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_1
    move v2, v3

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->o:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->c:Landroid/view/View;

    .line 159
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/at;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 160
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/at;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/at;->a(Z)V

    .line 163
    iget-object v1, p0, Landroid/support/v7/view/menu/t;->c:Landroid/view/View;

    .line 164
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->d:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_7

    move v0, v2

    .line 165
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/menu/t;->d:Landroid/view/ViewTreeObserver;

    .line 166
    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->d:Landroid/view/ViewTreeObserver;

    iget-object v4, p0, Landroid/support/v7/view/menu/t;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 169
    :cond_3
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 170
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->b(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    iget v1, p0, Landroid/support/v7/view/menu/t;->t:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->e(I)V

    .line 173
    iget-boolean v0, p0, Landroid/support/v7/view/menu/t;->r:Z

    if-nez v0, :cond_4

    .line 174
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->h:Landroid/support/v7/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->f:Landroid/content/Context;

    iget v4, p0, Landroid/support/v7/view/menu/t;->j:I

    invoke-static {v0, v6, v1, v4}, Landroid/support/v7/view/menu/t;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/t;->s:I

    .line 175
    iput-boolean v2, p0, Landroid/support/v7/view/menu/t;->r:Z

    .line 178
    :cond_4
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    iget v1, p0, Landroid/support/v7/view/menu/t;->s:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->g(I)V

    .line 179
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->h(I)V

    .line 180
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/t;->i()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->a(Landroid/graphics/Rect;)V

    .line 181
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->d()V

    .line 183
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->g()Landroid/widget/ListView;

    move-result-object v4

    .line 184
    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 186
    iget-boolean v0, p0, Landroid/support/v7/view/menu/t;->u:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->g:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->n()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 187
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->f:Landroid/content/Context;

    .line 188
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 190
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 191
    if-eqz v1, :cond_5

    .line 192
    iget-object v5, p0, Landroid/support/v7/view/menu/t;->g:Landroid/support/v7/view/menu/h;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/h;->n()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 195
    invoke-virtual {v4, v0, v6, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 200
    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->h:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/at;->a(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->d()V

    goto/16 :goto_0

    :cond_7
    move v0, v3

    .line 164
    goto/16 :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Landroid/support/v7/view/menu/t;->t:I

    .line 146
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h;Z)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->g:Landroid/support/v7/view/menu/h;

    if-eq p1, v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/t;->e()V

    .line 304
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->p:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->p:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;Z)V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/o$a;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Landroid/support/v7/view/menu/t;->p:Landroid/support/v7/view/menu/o$a;

    .line 259
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Landroid/support/v7/view/menu/t;->o:Landroid/view/View;

    .line 326
    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Landroid/support/v7/view/menu/t;->n:Landroid/widget/PopupWindow$OnDismissListener;

    .line 340
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/t;->r:Z

    .line 251
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->h:Landroid/support/v7/view/menu/g;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->h:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->notifyDataSetChanged()V

    .line 254
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/u;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 263
    invoke-virtual {p1}, Landroid/support/v7/view/menu/u;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    new-instance v0, Landroid/support/v7/view/menu/n;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->f:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/view/menu/t;->c:Landroid/view/View;

    iget-boolean v4, p0, Landroid/support/v7/view/menu/t;->i:Z

    iget v5, p0, Landroid/support/v7/view/menu/t;->k:I

    iget v6, p0, Landroid/support/v7/view/menu/t;->l:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/n;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZII)V

    .line 266
    iget-object v1, p0, Landroid/support/v7/view/menu/t;->p:Landroid/support/v7/view/menu/o$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/n;->a(Landroid/support/v7/view/menu/o$a;)V

    .line 267
    invoke-static {p1}, Landroid/support/v7/view/menu/m;->b(Landroid/support/v7/view/menu/h;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/n;->a(Z)V

    .line 270
    iget-object v1, p0, Landroid/support/v7/view/menu/t;->n:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/n;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/view/menu/t;->n:Landroid/widget/PopupWindow$OnDismissListener;

    .line 274
    iget-object v1, p0, Landroid/support/v7/view/menu/t;->g:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1, v7}, Landroid/support/v7/view/menu/h;->b(Z)V

    .line 277
    iget-object v1, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v1}, Landroid/support/v7/widget/at;->j()I

    move-result v1

    .line 278
    iget-object v2, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v2}, Landroid/support/v7/widget/at;->k()I

    move-result v2

    .line 282
    iget v3, p0, Landroid/support/v7/view/menu/t;->t:I

    iget-object v4, p0, Landroid/support/v7/view/menu/t;->o:Landroid/view/View;

    .line 283
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 282
    invoke-static {v3, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    .line 284
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 285
    iget-object v3, p0, Landroid/support/v7/view/menu/t;->o:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 288
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/n;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->p:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->p:Landroid/support/v7/view/menu/o$a;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/o$a;->a(Landroid/support/v7/view/menu/h;)Z

    .line 292
    :cond_1
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/at;->c(I)V

    .line 351
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->h:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/g;->a(Z)V

    .line 141
    return-void
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/at;->d(I)V

    .line 356
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 360
    iput-boolean p1, p0, Landroid/support/v7/view/menu/t;->u:Z

    .line 361
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/support/v7/view/menu/t;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/support/v7/view/menu/t;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->e()V

    .line 218
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Landroid/support/v7/view/menu/t;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->a:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->g()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/t;->q:Z

    .line 233
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->g:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->close()V

    .line 235
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->d:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->d:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/t;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->d:Landroid/view/ViewTreeObserver;

    .line 237
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->d:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/t;->d:Landroid/view/ViewTreeObserver;

    .line 240
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->c:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/view/menu/t;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 242
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->n:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Landroid/support/v7/view/menu/t;->n:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 245
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 330
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 331
    invoke-virtual {p0}, Landroid/support/v7/view/menu/t;->e()V

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
