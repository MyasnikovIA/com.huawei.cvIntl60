.class Landroid/support/v7/view/h$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/h;

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>(Landroid/support/v7/view/h;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    iput-object p1, p0, Landroid/support/v7/view/h$1;->a:Landroid/support/v7/view/h;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 122
    iput-boolean v0, p0, Landroid/support/v7/view/h$1;->b:Z

    .line 123
    iput v0, p0, Landroid/support/v7/view/h$1;->c:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput v0, p0, Landroid/support/v7/view/h$1;->c:I

    .line 138
    iput-boolean v0, p0, Landroid/support/v7/view/h$1;->b:Z

    .line 139
    iget-object v0, p0, Landroid/support/v7/view/h$1;->a:Landroid/support/v7/view/h;

    invoke-virtual {v0}, Landroid/support/v7/view/h;->b()V

    .line 140
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Landroid/support/v7/view/h$1;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/view/h$1;->c:I

    iget-object v1, p0, Landroid/support/v7/view/h$1;->a:Landroid/support/v7/view/h;

    iget-object v1, v1, Landroid/support/v7/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 145
    iget-object v0, p0, Landroid/support/v7/view/h$1;->a:Landroid/support/v7/view/h;

    iget-object v0, v0, Landroid/support/v7/view/h;->b:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/support/v7/view/h$1;->a:Landroid/support/v7/view/h;

    iget-object v0, v0, Landroid/support/v7/view/h;->b:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/h$1;->a()V

    .line 150
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/support/v7/view/h$1;->b:Z

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/h$1;->b:Z

    .line 131
    iget-object v0, p0, Landroid/support/v7/view/h$1;->a:Landroid/support/v7/view/h;

    iget-object v0, v0, Landroid/support/v7/view/h;->b:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroid/support/v7/view/h$1;->a:Landroid/support/v7/view/h;

    iget-object v0, v0, Landroid/support/v7/view/h;->b:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    goto :goto_0
.end method
