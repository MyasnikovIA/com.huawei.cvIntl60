.class public interface abstract Landroid/support/design/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/c/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/c/d$c;,
        Landroid/support/design/c/d$a;,
        Landroid/support/design/c/d$b;,
        Landroid/support/design/c/d$d;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract getCircularRevealScrimColor()I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end method

.method public abstract getRevealInfo()Landroid/support/design/c/d$d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCircularRevealScrimColor(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setRevealInfo(Landroid/support/design/c/d$d;)V
    .param p1    # Landroid/support/design/c/d$d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
