.class Landroid/support/design/widget/f$c;
.super Landroid/support/design/widget/f$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/f;


# direct methods
.method constructor <init>(Landroid/support/design/widget/f;)V
    .locals 1

    .prologue
    .line 707
    iput-object p1, p0, Landroid/support/design/widget/f$c;->a:Landroid/support/design/widget/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/f$f;-><init>(Landroid/support/design/widget/f;Landroid/support/design/widget/f$1;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Landroid/support/design/widget/f$c;->a:Landroid/support/design/widget/f;

    iget v0, v0, Landroid/support/design/widget/f;->k:F

    iget-object v1, p0, Landroid/support/design/widget/f$c;->a:Landroid/support/design/widget/f;

    iget v1, v1, Landroid/support/design/widget/f;->m:F

    add-float/2addr v0, v1

    return v0
.end method
