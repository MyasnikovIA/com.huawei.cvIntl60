.class public Landroid/support/design/widget/SwipeDismissBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SwipeDismissBehavior$b;,
        Landroid/support/design/widget/SwipeDismissBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<TV;>;"
    }
.end annotation


# instance fields
.field a:Landroid/support/v4/widget/ViewDragHelper;

.field b:Landroid/support/design/widget/SwipeDismissBehavior$a;

.field c:I

.field d:F

.field e:F

.field f:F

.field private g:Z

.field private h:F

.field private i:Z

.field private final j:Landroid/support/v4/widget/ViewDragHelper$Callback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    .line 84
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:I

    .line 88
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->d:F

    .line 89
    iput v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->e:F

    .line 90
    iput v2, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:F

    .line 207
    new-instance v0, Landroid/support/design/widget/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/SwipeDismissBehavior$1;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/ViewDragHelper$Callback;

    return-void
.end method

.method static a(FFF)F
    .locals 1

    .prologue
    .line 384
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static a(III)I
    .locals 1

    .prologue
    .line 388
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_0

    .line 355
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->i:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->h:F

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 357
    invoke-static {p1, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    .line 358
    :goto_0
    iput-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ViewDragHelper;

    .line 360
    :cond_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->j:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 358
    invoke-static {p1, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    goto :goto_0
.end method

.method static b(FFF)F
    .locals 2

    .prologue
    .line 403
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->e:F

    .line 141
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->c:I

    .line 123
    return-void
.end method

.method public a(Landroid/support/design/widget/SwipeDismissBehavior$a;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->b:Landroid/support/design/widget/SwipeDismissBehavior$a;

    .line 113
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
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
    .line 190
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->f:F

    .line 150
    return-void
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
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
    const/4 v0, 0x0

    .line 166
    iget-boolean v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:Z

    .line 168
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 182
    invoke-direct {p0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->a(Landroid/view/ViewGroup;)V

    .line 183
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 185
    :cond_0
    return v0

    .line 171
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:Z

    .line 172
    iget-boolean v1, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:Z

    goto :goto_0

    .line 177
    :pswitch_2
    iput-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->g:Z

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
