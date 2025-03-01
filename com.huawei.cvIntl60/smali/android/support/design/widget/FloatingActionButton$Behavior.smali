.class public Landroid/support/design/widget/FloatingActionButton$Behavior;
.super Landroid/support/design/widget/FloatingActionButton$BaseBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/FloatingActionButton$BaseBehavior",
        "<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;-><init>()V

    .line 860
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 863
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 864
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout$e;)V
    .locals 0
    .param p1    # Landroid/support/design/widget/CoordinatorLayout$e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 856
    invoke-super {p0, p1}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout$e;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z
    .locals 1

    .prologue
    .line 856
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/design/widget/FloatingActionButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 856
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 856
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
