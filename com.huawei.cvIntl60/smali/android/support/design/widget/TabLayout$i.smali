.class public Landroid/support/design/widget/TabLayout$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/TabLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 2825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2826
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$i;->a:Landroid/support/v4/view/ViewPager;

    .line 2827
    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/TabLayout$f;)V
    .locals 2

    .prologue
    .line 2831
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$i;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2832
    return-void
.end method

.method public b(Landroid/support/design/widget/TabLayout$f;)V
    .locals 0

    .prologue
    .line 2837
    return-void
.end method

.method public c(Landroid/support/design/widget/TabLayout$f;)V
    .locals 0

    .prologue
    .line 2842
    return-void
.end method
