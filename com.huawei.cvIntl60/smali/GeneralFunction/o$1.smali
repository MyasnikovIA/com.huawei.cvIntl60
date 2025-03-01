.class final LGeneralFunction/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:[I


# direct methods
.method constructor <init>(Landroid/content/Context;[I)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, LGeneralFunction/o$1;->a:Landroid/content/Context;

    iput-object p2, p0, LGeneralFunction/o$1;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 583
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 584
    iget-object v0, p0, LGeneralFunction/o$1;->a:Landroid/content/Context;

    check-cast v0, LGeneralFunction/a/a;

    iget-object v1, p0, LGeneralFunction/o$1;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, LGeneralFunction/a/a;->a(IJ)V

    .line 585
    invoke-static {}, LGeneralFunction/o;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 586
    const/4 v0, 0x1

    .line 588
    :goto_0
    return v0

    :cond_0
    invoke-static {}, LGeneralFunction/o;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
