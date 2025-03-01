.class Landroid/support/design/widget/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/h;

.field private final b:Landroid/support/design/widget/CoordinatorLayout;

.field private final c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/design/widget/h;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 304
    iput-object p1, p0, Landroid/support/design/widget/h$a;->a:Landroid/support/design/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p2, p0, Landroid/support/design/widget/h$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    .line 306
    iput-object p3, p0, Landroid/support/design/widget/h$a;->c:Landroid/view/View;

    .line 307
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/design/widget/h$a;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h$a;->a:Landroid/support/design/widget/h;

    iget-object v0, v0, Landroid/support/design/widget/h;->a:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/support/design/widget/h$a;->a:Landroid/support/design/widget/h;

    iget-object v0, v0, Landroid/support/design/widget/h;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Landroid/support/design/widget/h$a;->a:Landroid/support/design/widget/h;

    iget-object v1, p0, Landroid/support/design/widget/h$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/h$a;->c:Landroid/view/View;

    iget-object v3, p0, Landroid/support/design/widget/h$a;->a:Landroid/support/design/widget/h;

    iget-object v3, v3, Landroid/support/design/widget/h;->a:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/h;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 315
    iget-object v0, p0, Landroid/support/design/widget/h$a;->c:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/h$a;->a:Landroid/support/design/widget/h;

    iget-object v1, p0, Landroid/support/design/widget/h$a;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/h$a;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    goto :goto_0
.end method
