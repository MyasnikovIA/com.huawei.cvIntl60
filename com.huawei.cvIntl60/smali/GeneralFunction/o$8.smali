.class final LGeneralFunction/o$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, LGeneralFunction/o$8;->a:Landroid/content/Context;

    iput p2, p0, LGeneralFunction/o$8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 390
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 391
    iget-object v0, p0, LGeneralFunction/o$8;->a:Landroid/content/Context;

    check-cast v0, LGeneralFunction/a/a;

    iget v1, p0, LGeneralFunction/o$8;->b:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, LGeneralFunction/a/a;->a(IJ)V

    .line 392
    invoke-static {}, LGeneralFunction/o;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 393
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    :cond_0
    invoke-static {}, LGeneralFunction/o;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
