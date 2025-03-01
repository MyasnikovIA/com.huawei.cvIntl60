.class public Lui_Controller/ui_Entry/ui_EntryController;
.super LGeneralFunction/a/a;
.source "SourceFile"


# instance fields
.field private b:Lui_Controller/ui_StartMode/UI_ModeMain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, LGeneralFunction/a/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 29
    const-string v0, "ui_EntryController"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x1000

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 34
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lui_Controller/ui_Entry/ui_EntryController;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lui_Controller/ui_StartMode/UI_ModeMain;

    iput-object v0, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 37
    iget-object v0, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->v()V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Entry/ui_EntryController;->a(Ljava/lang/String;I)V

    .line 41
    iget-object v0, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    const-string v1, "haveUserInstruction"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->q()V

    .line 46
    const-string v0, "Go to launch screen"

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Entry/ui_EntryController;->a(Ljava/lang/String;I)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    iget-object v1, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v4, p0, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 49
    iget-object v0, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v2, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 71
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lui_Controller/ui_Entry/ui_EntryController;->finish()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->j()V

    .line 58
    iget-object v0, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->q()V

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    iget-object v1, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v4, p0, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 62
    iget-object v0, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v2, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, La/c/a;

    const/16 v1, 0x2f0b

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 65
    const-class v1, Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, La/c/a;->a(Ljava/lang/Object;)V

    .line 66
    const-string v1, "AppMode"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 67
    iget-object v1, p0, Lui_Controller/ui_Entry/ui_EntryController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 68
    invoke-virtual {p0}, Lui_Controller/ui_Entry/ui_EntryController;->finish()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onNewIntent(Landroid/content/Intent;)V

    .line 76
    const-string v0, "onNewIntent should not happen!!"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Entry/ui_EntryController;->a(Ljava/lang/String;I)V

    .line 77
    return-void
.end method
