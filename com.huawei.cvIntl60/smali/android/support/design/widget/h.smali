.class abstract Landroid/support/design/widget/h;
.super Landroid/support/design/widget/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/r",
        "<TV;>;"
    }
.end annotation


# instance fields
.field a:Landroid/widget/OverScroller;

.field private b:Ljava/lang/Runnable;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 48
    invoke-direct {p0}, Landroid/support/design/widget/r;-><init>()V

    .line 43
    iput v0, p0, Landroid/support/design/widget/h;->d:I

    .line 45
    iput v0, p0, Landroid/support/design/widget/h;->f:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v0, p0, Landroid/support/design/widget/h;->d:I

    .line 45
    iput v0, p0, Landroid/support/design/widget/h;->f:I

    .line 52
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 296
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    .line 298
    :cond_0
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/support/design/widget/h;->b()I

    move-result v0

    return v0
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/support/design/widget/h;->b()I

    move-result v1

    .line 206
    const/4 v0, 0x0

    .line 208
    if-eqz p4, :cond_0

    if-lt v1, p4, :cond_0

    if-gt v1, p5, :cond_0

    .line 211
    invoke-static {p3, p4, p5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v2

    .line 213
    if-eq v1, v2, :cond_0

    .line 214
    invoke-virtual {p0, v2}, Landroid/support/design/widget/h;->a(I)Z

    .line 216
    sub-int v0, v1, v2

    .line 220
    :cond_0
    return v0
.end method

.method a(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 278
    return-void
.end method

.method final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/h;->b:Ljava/lang/Runnable;

    .line 248
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->a:Landroid/widget/OverScroller;

    if-nez v0, :cond_1

    .line 249
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/h;->a:Landroid/widget/OverScroller;

    .line 252
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/h;->a:Landroid/widget/OverScroller;

    .line 254
    invoke-virtual {p0}, Landroid/support/design/widget/h;->b()I

    move-result v2

    .line 256
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, p3

    move v8, p4

    .line 252
    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 262
    iget-object v0, p0, Landroid/support/design/widget/h;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    new-instance v0, Landroid/support/design/widget/h$a;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/design/widget/h$a;-><init>(Landroid/support/design/widget/h;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/h;->b:Ljava/lang/Runnable;

    .line 264
    iget-object v0, p0, Landroid/support/design/widget/h;->b:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 265
    const/4 v1, 0x1

    .line 268
    :goto_0
    return v1

    .line 267
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 124
    iget v0, p0, Landroid/support/design/widget/h;->f:I

    if-gez v0, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/h;->f:I

    .line 128
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 191
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    move v5, v7

    .line 195
    :cond_3
    return v5

    .line 131
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 132
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 134
    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Landroid/support/design/widget/h;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iput v1, p0, Landroid/support/design/widget/h;->e:I

    .line 136
    invoke-virtual {p3, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/h;->d:I

    .line 137
    invoke-direct {p0}, Landroid/support/design/widget/h;->d()V

    goto :goto_0

    .line 146
    :pswitch_1
    iget v0, p0, Landroid/support/design/widget/h;->d:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 147
    if-eq v0, v8, :cond_3

    .line 151
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 152
    iget v1, p0, Landroid/support/design/widget/h;->e:I

    sub-int v3, v1, v0

    .line 154
    iget-boolean v1, p0, Landroid/support/design/widget/h;->c:Z

    if-nez v1, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/h;->f:I

    if-le v1, v2, :cond_4

    .line 155
    iput-boolean v7, p0, Landroid/support/design/widget/h;->c:Z

    .line 156
    if-lez v3, :cond_5

    .line 157
    iget v1, p0, Landroid/support/design/widget/h;->f:I

    sub-int/2addr v3, v1

    .line 163
    :cond_4
    :goto_1
    iget-boolean v1, p0, Landroid/support/design/widget/h;->c:Z

    if-eqz v1, :cond_1

    .line 164
    iput v0, p0, Landroid/support/design/widget/h;->e:I

    .line 166
    invoke-virtual {p0, p2}, Landroid/support/design/widget/h;->b(Landroid/view/View;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/h;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_0

    .line 159
    :cond_5
    iget v1, p0, Landroid/support/design/widget/h;->f:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 172
    :pswitch_2
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 173
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 174
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 175
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/h;->d:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 176
    invoke-virtual {p0, p2}, Landroid/support/design/widget/h;->a(Landroid/view/View;)I

    move-result v0

    neg-int v4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 181
    :cond_6
    :pswitch_3
    iput-boolean v5, p0, Landroid/support/design/widget/h;->c:Z

    .line 182
    iput v8, p0, Landroid/support/design/widget/h;->d:I

    .line 183
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    .prologue
    .line 199
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method final b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 229
    .line 232
    invoke-virtual {p0}, Landroid/support/design/widget/h;->a()I

    move-result v0

    sub-int v3, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 229
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method b(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 56
    iget v1, p0, Landroid/support/design/widget/h;->f:I

    if-gez v1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/h;->f:I

    .line 60
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 63
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/support/design/widget/h;->c:Z

    if-eqz v1, :cond_1

    .line 119
    :goto_0
    return v0

    .line 67
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 115
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 119
    :cond_3
    iget-boolean v0, p0, Landroid/support/design/widget/h;->c:Z

    goto :goto_0

    .line 70
    :pswitch_0
    iput-boolean v4, p0, Landroid/support/design/widget/h;->c:Z

    .line 71
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 72
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 73
    invoke-virtual {p0, p2}, Landroid/support/design/widget/h;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iput v1, p0, Landroid/support/design/widget/h;->e:I

    .line 75
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/h;->d:I

    .line 76
    invoke-direct {p0}, Landroid/support/design/widget/h;->d()V

    goto :goto_1

    .line 83
    :pswitch_1
    iget v1, p0, Landroid/support/design/widget/h;->d:I

    .line 84
    if-eq v1, v3, :cond_2

    .line 88
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 89
    if-eq v1, v3, :cond_2

    .line 93
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 94
    iget v2, p0, Landroid/support/design/widget/h;->e:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 95
    iget v3, p0, Landroid/support/design/widget/h;->f:I

    if-le v2, v3, :cond_2

    .line 96
    iput-boolean v0, p0, Landroid/support/design/widget/h;->c:Z

    .line 97
    iput v1, p0, Landroid/support/design/widget/h;->e:I

    goto :goto_1

    .line 105
    :pswitch_2
    iput-boolean v4, p0, Landroid/support/design/widget/h;->c:Z

    .line 106
    iput v3, p0, Landroid/support/design/widget/h;->d:I

    .line 107
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/h;->g:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method c(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method
