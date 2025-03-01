.class LGeneralFunction/Player/player/i$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/player/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/i;


# direct methods
.method constructor <init>(LGeneralFunction/Player/player/i;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 108
    iget-object v0, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 111
    iget-object v1, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v1}, LGeneralFunction/Player/player/i;->b(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 112
    iget-object v1, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v1}, LGeneralFunction/Player/player/i;->c(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/SphericalVideoPlayer$b;

    move-result-object v1

    invoke-interface {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$b;->a(Landroid/os/Message;)V

    .line 115
    :cond_1
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v1}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->s:I

    iget-object v2, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v2}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    if-eq v1, v4, :cond_0

    iget-object v1, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v1}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->s:I

    iget-object v2, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v2}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    if-ne v1, v5, :cond_1

    .line 161
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    move p4, v0

    .line 169
    :goto_0
    iget-object v1, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v1}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->s:I

    iget-object v2, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v2}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    if-ne v1, v5, :cond_3

    .line 174
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 175
    iget-object v2, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v2}, LGeneralFunction/Player/player/i;->b(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    .line 176
    new-instance v2, LGeneralFunction/Player/player/g;

    invoke-direct {v2, p3, v0, v3, v3}, LGeneralFunction/Player/player/g;-><init>(FFZZ)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    iget-object v0, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0}, LGeneralFunction/Player/player/i;->c(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/SphericalVideoPlayer$b;

    move-result-object v0

    invoke-interface {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer$b;->c(Landroid/os/Message;)V

    .line 180
    :cond_1
    return v4

    :cond_2
    move p3, v0

    .line 167
    goto :goto_0

    :cond_3
    move v0, p4

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-boolean v0, v0, LGeneralFunction/Player/player/h;->B:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->B:Z

    .line 144
    :cond_0
    :goto_0
    return v4

    .line 129
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    if-eq v0, v4, :cond_2

    iget-object v0, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    if-ne v0, v5, :cond_0

    .line 132
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 133
    iget-object v1, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v1}, LGeneralFunction/Player/player/i;->b(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 134
    iget-object v1, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v1}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->s:I

    iget-object v2, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v2}, LGeneralFunction/Player/player/i;->a(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/h;

    if-ne v1, v5, :cond_3

    .line 136
    new-instance v1, LGeneralFunction/Player/player/g;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2, v3, v3}, LGeneralFunction/Player/player/g;-><init>(FFZZ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    :goto_1
    iget-object v1, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v1}, LGeneralFunction/Player/player/i;->c(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/SphericalVideoPlayer$b;

    move-result-object v1

    invoke-interface {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$b;->b(Landroid/os/Message;)V

    goto :goto_0

    .line 140
    :cond_3
    new-instance v1, LGeneralFunction/Player/player/g;

    invoke-direct {v1, p3, p4, v3, v3}, LGeneralFunction/Player/player/g;-><init>(FFZZ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, LGeneralFunction/Player/player/i$1;->a:LGeneralFunction/Player/player/i;

    invoke-static {v0}, LGeneralFunction/Player/player/i;->c(LGeneralFunction/Player/player/i;)LGeneralFunction/Player/player/SphericalVideoPlayer$b;

    move-result-object v0

    invoke-interface {v0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer$b;->a(Landroid/view/MotionEvent;)V

    .line 149
    const/4 v0, 0x1

    return v0
.end method
