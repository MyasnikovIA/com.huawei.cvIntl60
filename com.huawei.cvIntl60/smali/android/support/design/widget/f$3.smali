.class Landroid/support/design/widget/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/f;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/f;


# direct methods
.method constructor <init>(Landroid/support/design/widget/f;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Landroid/support/design/widget/f$3;->a:Landroid/support/design/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Landroid/support/design/widget/f$3;->a:Landroid/support/design/widget/f;

    invoke-virtual {v0}, Landroid/support/design/widget/f;->n()V

    .line 613
    const/4 v0, 0x1

    return v0
.end method
