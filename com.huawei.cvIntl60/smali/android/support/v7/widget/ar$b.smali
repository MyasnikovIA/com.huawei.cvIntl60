.class Landroid/support/v7/widget/ar$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ar;)V
    .locals 0

    .prologue
    .line 1323
    iput-object p1, p0, Landroid/support/v7/widget/ar$b;->a:Landroid/support/v7/widget/ar;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1324
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Landroid/support/v7/widget/ar$b;->a:Landroid/support/v7/widget/ar;

    invoke-virtual {v0}, Landroid/support/v7/widget/ar;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Landroid/support/v7/widget/ar$b;->a:Landroid/support/v7/widget/ar;

    invoke-virtual {v0}, Landroid/support/v7/widget/ar;->d()V

    .line 1332
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/support/v7/widget/ar$b;->a:Landroid/support/v7/widget/ar;

    invoke-virtual {v0}, Landroid/support/v7/widget/ar;->e()V

    .line 1337
    return-void
.end method
