.class Landroid/support/design/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Landroid/support/design/b/a;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final m:Landroid/graphics/Paint;

.field private final n:Landroid/graphics/Rect;

.field private final o:Landroid/graphics/RectF;

.field private p:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private q:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private r:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private s:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private t:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private u:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private v:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/b/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/design/b/a;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/b/c;->o:Landroid/graphics/RectF;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/b/c;->w:Z

    .line 90
    iput-object p1, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    .line 91
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 6

    .prologue
    .line 206
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Landroid/support/design/b/c;->c:I

    iget v3, p0, Landroid/support/design/b/c;->e:I

    iget v4, p0, Landroid/support/design/b/c;->d:I

    iget v5, p0, Landroid/support/design/b/c;->f:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method private i()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const v2, 0x3727c5ac    # 1.0E-5f

    .line 183
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    .line 184
    iget-object v0, p0, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/b/c;->g:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 185
    iget-object v0, p0, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 187
    iget-object v0, p0, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    .line 188
    iget-object v0, p0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 189
    iget-object v0, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 193
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    .line 194
    iget-object v0, p0, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/b/c;->g:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 195
    iget-object v0, p0, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 197
    iget-object v0, p0, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/b/c;->s:Landroid/graphics/drawable/Drawable;

    .line 198
    iget-object v0, p0, Landroid/support/design/b/c;->s:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 200
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/design/b/c;->s:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v0}, Landroid/support/design/b/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 242
    iget-object v0, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 246
    :cond_0
    return-void
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const v4, 0x3727c5ac    # 1.0E-5f

    .line 255
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    .line 256
    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/b/c;->g:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 257
    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 259
    invoke-direct {p0}, Landroid/support/design/b/c;->j()V

    .line 261
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    .line 262
    iget-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/b/c;->g:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 263
    iget-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 264
    iget-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/b/c;->h:I

    iget-object v2, p0, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 266
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-direct {p0, v0}, Landroid/support/design/b/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    .line 271
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    .line 272
    iget-object v1, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Landroid/support/design/b/c;->g:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 273
    iget-object v1, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 275
    new-instance v1, Landroid/support/design/b/b;

    iget-object v2, p0, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    .line 276
    invoke-static {v2}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0, v3}, Landroid/support/design/b/b;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 275
    return-object v1
.end method

.method private l()V
    .locals 2

    .prologue
    .line 340
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-direct {p0}, Landroid/support/design/b/c;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/b/a;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->invalidate()V

    goto :goto_0
.end method

.method private m()Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 382
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 384
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 385
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 386
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 388
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 394
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 396
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 397
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 398
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 400
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/b/c;->w:Z

    .line 153
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    iget-object v1, p0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/support/design/b/a;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    iget-object v1, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/support/design/b/a;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 155
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 288
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0
.end method

.method a(II)V
    .locals 5

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/b/c;->c:I

    iget v2, p0, Landroid/support/design/b/c;->e:I

    iget v3, p0, Landroid/support/design/b/c;->d:I

    sub-int v3, p2, v3

    iget v4, p0, Landroid/support/design/b/c;->f:I

    sub-int v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 285
    :cond_0
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 211
    iput-object p1, p0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    .line 212
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_1

    .line 213
    invoke-direct {p0}, Landroid/support/design/b/c;->j()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/TypedArray;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 94
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_android_insetLeft:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/b/c;->c:I

    .line 95
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_android_insetRight:I

    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/b/c;->d:I

    .line 97
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/b/c;->e:I

    .line 98
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_android_insetBottom:I

    .line 99
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/b/c;->f:I

    .line 101
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/b/c;->g:I

    .line 102
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_strokeWidth:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/b/c;->h:I

    .line 104
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_backgroundTintMode:I

    const/4 v2, -0x1

    .line 106
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 105
    invoke-static {v1, v2}, Landroid/support/design/internal/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    .line 107
    iget-object v1, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    .line 109
    invoke-virtual {v1}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$styleable;->MaterialButton_backgroundTint:I

    .line 108
    invoke-static {v1, p1, v2}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    .line 110
    iget-object v1, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    .line 112
    invoke-virtual {v1}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$styleable;->MaterialButton_strokeColor:I

    .line 111
    invoke-static {v1, p1, v2}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    .line 113
    iget-object v1, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    .line 115
    invoke-virtual {v1}, Landroid/support/design/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$styleable;->MaterialButton_rippleColor:I

    .line 114
    invoke-static {v1, p1, v2}, Landroid/support/design/e/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    .line 117
    iget-object v1, p0, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v1, p0, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/b/c;->h:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v1, p0, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    .line 121
    invoke-virtual {v3}, Landroid/support/design/b/a;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 119
    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    .line 126
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getPaddingTop()I

    move-result v2

    .line 127
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    .line 128
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getPaddingBottom()I

    move-result v4

    .line 131
    iget-object v5, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0}, Landroid/support/design/b/c;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    :goto_0
    invoke-virtual {v5, v0}, Landroid/support/design/b/a;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    iget v5, p0, Landroid/support/design/b/c;->c:I

    add-int/2addr v1, v5

    iget v5, p0, Landroid/support/design/b/c;->e:I

    add-int/2addr v2, v5

    iget v5, p0, Landroid/support/design/b/c;->d:I

    add-int/2addr v3, v5

    iget v5, p0, Landroid/support/design/b/c;->f:I

    add-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 141
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Landroid/support/design/b/c;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 163
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/b/c;->h:I

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v1}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    iget-object v0, p0, Landroid/support/design/b/c;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/design/b/c;->h:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/design/b/c;->c:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/b/c;->h:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Landroid/support/design/b/c;->e:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/design/b/c;->h:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/support/design/b/c;->d:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/design/b/c;->h:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/support/design/b/c;->f:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    iget v0, p0, Landroid/support/design/b/c;->g:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/b/c;->h:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    .line 173
    iget-object v1, p0, Landroid/support/design/b/c;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 175
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 225
    iget-object v0, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 226
    iput-object p1, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    .line 227
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0}, Landroid/support/design/b/c;->j()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/support/design/b/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method b(I)V
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Landroid/support/design/b/c;->h:I

    if-eq v0, p1, :cond_0

    .line 329
    iput p1, p0, Landroid/support/design/b/c;->h:I

    .line 330
    iget-object v0, p0, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 331
    invoke-direct {p0}, Landroid/support/design/b/c;->l()V

    .line 333
    :cond_0
    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 297
    iput-object p1, p0, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    .line 298
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/c;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/support/design/b/c;->s:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Landroid/support/design/b/c;->w:Z

    return v0
.end method

.method c()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method c(I)V
    .locals 3

    .prologue
    const v2, 0x3727c5ac    # 1.0E-5f

    .line 351
    iget v0, p0, Landroid/support/design/b/c;->g:I

    if-eq v0, p1, :cond_1

    .line 352
    iput p1, p0, Landroid/support/design/b/c;->g:I

    .line 353
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    .line 358
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 359
    invoke-direct {p0}, Landroid/support/design/b/c;->n()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    int-to-float v1, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 360
    invoke-direct {p0}, Landroid/support/design/b/c;->m()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    int-to-float v1, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 362
    :cond_0
    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 363
    iget-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 364
    iget-object v0, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Landroid/support/design/b/c;->p:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 369
    iget-object v0, p0, Landroid/support/design/b/c;->r:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v1, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 371
    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->invalidate()V

    goto :goto_0
.end method

.method c(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 312
    iget-object v1, p0, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 313
    iput-object p1, p0, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    .line 314
    iget-object v1, p0, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    .line 316
    invoke-virtual {v2}, Landroid/support/design/b/a;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 314
    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    invoke-direct {p0}, Landroid/support/design/b/c;->l()V

    .line 320
    :cond_1
    return-void
.end method

.method d()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method e()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method f()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Landroid/support/design/b/c;->h:I

    return v0
.end method

.method h()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Landroid/support/design/b/c;->g:I

    return v0
.end method
