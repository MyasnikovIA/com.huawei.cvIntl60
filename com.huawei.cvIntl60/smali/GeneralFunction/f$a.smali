.class LGeneralFunction/f$a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/f;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(LGeneralFunction/f;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, LGeneralFunction/f$a;->a:LGeneralFunction/f;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 99
    iput-object p2, p0, LGeneralFunction/f$a;->b:Ljava/lang/String;

    .line 100
    iput-boolean p3, p0, LGeneralFunction/f$a;->c:Z

    .line 101
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, LGeneralFunction/f$a;->a:LGeneralFunction/f;

    invoke-static {v0}, LGeneralFunction/f;->a(LGeneralFunction/f;)LGeneralFunction/f$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, LGeneralFunction/f$a;->a:LGeneralFunction/f;

    invoke-static {v0}, LGeneralFunction/f;->a(LGeneralFunction/f;)LGeneralFunction/f$b;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/f$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, LGeneralFunction/f$b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 106
    iget-boolean v0, p0, LGeneralFunction/f$a;->c:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 107
    return-void
.end method
