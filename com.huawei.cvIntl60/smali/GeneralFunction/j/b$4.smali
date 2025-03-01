.class LGeneralFunction/j/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LThirdParty/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/j/b;


# direct methods
.method constructor <init>(LGeneralFunction/j/b;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAccountLogout result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 633
    if-nez p1, :cond_0

    .line 635
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LGeneralFunction/j/b;->a(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LGeneralFunction/j/b;->a(Z)V

    .line 637
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "googleAccountName"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 638
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a54

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    .line 644
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x3

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAccountLogin result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 611
    if-nez p1, :cond_0

    .line 613
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    invoke-virtual {v0, p2}, LGeneralFunction/j/b;->a(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LGeneralFunction/j/b;->a(Z)V

    .line 617
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->b(LGeneralFunction/j/b;)V

    .line 618
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a53

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    .line 619
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->c(LGeneralFunction/j/b;)V

    .line 627
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    invoke-virtual {v0, p2}, LGeneralFunction/j/b;->a(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LGeneralFunction/j/b;->a(Z)V

    .line 625
    iget-object v0, p0, LGeneralFunction/j/b$4;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2aa2

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0
.end method
