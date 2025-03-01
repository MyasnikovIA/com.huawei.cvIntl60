.class final LGeneralFunction/o$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 539
    iput-object p1, p0, LGeneralFunction/o$9;->a:Landroid/content/Context;

    iput p2, p0, LGeneralFunction/o$9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 541
    iget-object v0, p0, LGeneralFunction/o$9;->a:Landroid/content/Context;

    check-cast v0, LGeneralFunction/a/a;

    iget v1, p0, LGeneralFunction/o$9;->b:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, LGeneralFunction/a/a;->a(IJ)V

    .line 542
    invoke-static {}, LGeneralFunction/o;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 543
    return-void
.end method
