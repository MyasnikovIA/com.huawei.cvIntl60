.class public Landroid/support/design/internal/c;
.super Landroid/support/v7/widget/aq;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field protected a:Z

.field b:Z

.field private c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/aq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/c;->d:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/c;->e:Landroid/graphics/Rect;

    .line 46
    const/16 v0, 0x77

    iput v0, p0, Landroid/support/design/internal/c;->f:I

    .line 48
    iput-boolean v6, p0, Landroid/support/design/internal/c;->a:Z

    .line 50
    iput-boolean v4, p0, Landroid/support/design/internal/c;->b:Z

    .line 63
    sget-object v2, Landroid/support/design/R$styleable;->ForegroundLinearLayout:[I

    new-array v5, v4, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 64
    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    sget v1, Landroid/support/design/R$styleable;->ForegroundLinearLayout_android_foregroundGravity:I

    iget v2, p0, Landroid/support/design/internal/c;->f:I

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/c;->f:I

    .line 70
    sget v1, Landroid/support/design/R$styleable;->ForegroundLinearLayout_android_foreground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Landroid/support/design/internal/c;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->ForegroundLinearLayout_foregroundInsidePadding:I

    .line 76
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/internal/c;->a:Z

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 202
    invoke-super {p0, p1}, Landroid/support/v7/widget/aq;->draw(Landroid/graphics/Canvas;)V

    .line 204
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-boolean v1, p0, Landroid/support/design/internal/c;->b:Z

    if-eqz v1, :cond_0

    .line 208
    iput-boolean v6, p0, Landroid/support/design/internal/c;->b:Z

    .line 209
    iget-object v1, p0, Landroid/support/design/internal/c;->d:Landroid/graphics/Rect;

    .line 210
    iget-object v2, p0, Landroid/support/design/internal/c;->e:Landroid/graphics/Rect;

    .line 212
    invoke-virtual {p0}, Landroid/support/design/internal/c;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/internal/c;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 213
    invoke-virtual {p0}, Landroid/support/design/internal/c;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/design/internal/c;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 215
    iget-boolean v5, p0, Landroid/support/design/internal/c;->a:Z

    if-eqz v5, :cond_2

    .line 216
    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 222
    :goto_0
    iget v3, p0, Landroid/support/design/internal/c;->f:I

    .line 224
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 225
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 222
    invoke-static {v3, v4, v5, v1, v2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 228
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 231
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    :cond_1
    return-void

    .line 219
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/internal/c;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/internal/c;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/internal/c;->getPaddingRight()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual {p0}, Landroid/support/design/internal/c;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v4, v7

    .line 218
    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/aq;->drawableHotspotChanged(FF)V

    .line 240
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 243
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/support/v7/widget/aq;->drawableStateChanged()V

    .line 137
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/internal/c;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 140
    :cond_0
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundGravity()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/support/design/internal/c;->f:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .prologue
    .line 128
    invoke-super {p0}, Landroid/support/v7/widget/aq;->jumpDrawablesToCurrentState()V

    .line 129
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 132
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 190
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/aq;->onLayout(ZIIII)V

    .line 191
    iget-boolean v0, p0, Landroid/support/design/internal/c;->b:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroid/support/design/internal/c;->b:Z

    .line 192
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/aq;->onSizeChanged(IIII)V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/c;->b:Z

    .line 198
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 152
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 154
    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/design/internal/c;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_0
    iput-object p1, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    .line 159
    if-eqz p1, :cond_4

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/c;->setWillNotDraw(Z)V

    .line 161
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/support/design/internal/c;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 165
    :cond_1
    iget v0, p0, Landroid/support/design/internal/c;->f:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_2

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 167
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 172
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/internal/c;->requestLayout()V

    .line 173
    invoke-virtual {p0}, Landroid/support/design/internal/c;->invalidate()V

    .line 175
    :cond_3
    return-void

    .line 170
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/internal/c;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setForegroundGravity(I)V
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Landroid/support/design/internal/c;->f:I

    if-eq v0, p1, :cond_2

    .line 101
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 102
    const v0, 0x800003

    or-int/2addr v0, p1

    .line 105
    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    .line 106
    or-int/lit8 v0, v0, 0x30

    .line 109
    :cond_0
    iput v0, p0, Landroid/support/design/internal/c;->f:I

    .line 111
    iget v0, p0, Landroid/support/design/internal/c;->f:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 113
    iget-object v1, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 116
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/internal/c;->requestLayout()V

    .line 118
    :cond_2
    return-void

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v7/widget/aq;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/c;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
