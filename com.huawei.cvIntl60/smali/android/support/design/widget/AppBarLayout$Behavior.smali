.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/AppBarLayout$BaseBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/AppBarLayout$BaseBehavior",
        "<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 852
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;-><init>()V

    .line 853
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 860
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 861
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 842
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 842
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 0

    .prologue
    .line 842
    invoke-super/range {p0 .. p8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V
    .locals 0

    .prologue
    .line 842
    invoke-super/range {p0 .. p7}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic a(I)Z
    .locals 1

    .prologue
    .line 842
    invoke-super {p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 1

    .prologue
    .line 842
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z
    .locals 1

    .prologue
    .line 842
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .prologue
    .line 842
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()I
    .locals 1

    .prologue
    .line 842
    invoke-super {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 842
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
