.class public abstract Lcom/a/a/h/a/d;
.super Lcom/a/a/h/a/i;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/h/b/b$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/h/a/i",
        "<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lcom/a/a/h/b/b$a;"
    }
.end annotation


# instance fields
.field private b:Landroid/graphics/drawable/Animatable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/a/a/h/a/i;-><init>(Landroid/view/View;)V

    .line 24
    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/a/a/h/a/d;->c(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/a/a/h/a/d;->a(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .prologue
    .line 119
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Landroid/graphics/drawable/Animatable;

    iput-object p1, p0, Lcom/a/a/h/a/d;->b:Landroid/graphics/drawable/Animatable;

    .line 121
    iget-object v0, p0, Lcom/a/a/h/a/d;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/h/a/d;->b:Landroid/graphics/drawable/Animatable;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/a/a/h/a/i;->a(Landroid/graphics/drawable/Drawable;)V

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/h/a/d;->b(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/a/a/h/a/d;->e(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;Lcom/a/a/h/b/b;)V
    .locals 1
    .param p2    # Lcom/a/a/h/b/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/a/a/h/b/b",
            "<-TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p0}, Lcom/a/a/h/b/b;->a(Ljava/lang/Object;Lcom/a/a/h/b/b$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lcom/a/a/h/a/d;->b(Ljava/lang/Object;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-direct {p0, p1}, Lcom/a/a/h/a/d;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/a/a/h/a/i;->b(Landroid/graphics/drawable/Drawable;)V

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/h/a/d;->b(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/a/a/h/a/d;->e(Landroid/graphics/drawable/Drawable;)V

    .line 62
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/a/a/h/a/d;->b:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/a/a/h/a/d;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 104
    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/a/a/h/a/i;->c(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/h/a/d;->b(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/a/a/h/a/d;->e(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/a/a/h/a/d;->b:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/a/a/h/a/d;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 111
    :cond_0
    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/a/a/h/a/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method
