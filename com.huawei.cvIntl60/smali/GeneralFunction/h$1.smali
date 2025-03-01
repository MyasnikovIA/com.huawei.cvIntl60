.class LGeneralFunction/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/h;


# direct methods
.method constructor <init>(LGeneralFunction/h;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, LGeneralFunction/h$1;->a:LGeneralFunction/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, LGeneralFunction/h$1;->a:LGeneralFunction/h;

    invoke-static {v0}, LGeneralFunction/h;->a(LGeneralFunction/h;)LGeneralFunction/h$b;

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/h$b;->b(LGeneralFunction/h$b;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 64
    iget-object v0, p0, LGeneralFunction/h$1;->a:LGeneralFunction/h;

    invoke-virtual {v0}, LGeneralFunction/h;->dismiss()V

    .line 65
    return-void
.end method
