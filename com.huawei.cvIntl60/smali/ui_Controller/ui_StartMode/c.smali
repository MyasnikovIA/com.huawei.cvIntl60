.class public Lui_Controller/ui_StartMode/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lui_Controller/ui_StartMode/UI_ModeMain;

.field private b:Lui_Controller/ui_StartMode/a;


# direct methods
.method public constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lui_Controller/ui_StartMode/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 17
    iput-object v0, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    .line 26
    iput-object p1, p0, Lui_Controller/ui_StartMode/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 27
    new-instance v0, Lui_Controller/ui_StartMode/a;

    invoke-direct {v0}, Lui_Controller/ui_StartMode/a;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    .line 28
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 21
    const-string v0, "UI_ModeConrtoller"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeAppMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    iget-object v1, v1, Lui_Controller/ui_StartMode/a;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_StartMode/c;->a(Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    iget-object v0, v0, Lui_Controller/ui_StartMode/a;->d:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    iget-object v0, v0, Lui_Controller/ui_StartMode/a;->c:LGeneralFunction/a/a;

    iget-object v1, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    iget-object v1, v1, Lui_Controller/ui_StartMode/a;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, LGeneralFunction/a/a;->startActivity(Landroid/content/Intent;)V

    .line 73
    iget-object v0, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    iget-object v0, v0, Lui_Controller/ui_StartMode/a;->c:LGeneralFunction/a/a;

    invoke-virtual {v0}, LGeneralFunction/a/a;->finish()V

    .line 75
    iget-object v0, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    iput-object v2, v0, Lui_Controller/ui_StartMode/a;->c:LGeneralFunction/a/a;

    .line 76
    iget-object v0, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    iput-object v2, v0, Lui_Controller/ui_StartMode/a;->d:Landroid/content/Intent;

    .line 77
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILGeneralFunction/a/a;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeMode lAppMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sModeControlData.lStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    iget v1, v1, Lui_Controller/ui_StartMode/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_StartMode/c;->a(Ljava/lang/String;I)V

    .line 58
    iget-object v0, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    iput p1, v0, Lui_Controller/ui_StartMode/a;->b:I

    .line 59
    iget-object v0, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    iput-object p2, v0, Lui_Controller/ui_StartMode/a;->c:LGeneralFunction/a/a;

    .line 60
    iget-object v0, p0, Lui_Controller/ui_StartMode/c;->b:Lui_Controller/ui_StartMode/a;

    iput-object p3, v0, Lui_Controller/ui_StartMode/a;->d:Landroid/content/Intent;

    .line 62
    invoke-direct {p0}, Lui_Controller/ui_StartMode/c;->a()Z

    .line 63
    return-void
.end method

.method public a(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    .line 33
    new-instance v1, La/c/a;

    invoke-direct {v1, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 34
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 37
    :pswitch_0
    iget-object v2, p0, Lui_Controller/ui_StartMode/c;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget v2, v2, Lui_Controller/b/j;->c:I

    invoke-static {v2}, Lui_Controller/a/b;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    const-string v0, "LiveViewFrame"

    invoke-virtual {v1, v0}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/d;

    .line 44
    iget-object v0, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v0}, LGeneralFunction/c/d;->d()V

    .line 45
    const/4 v0, 0x1

    .line 47
    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x4700
        :pswitch_0
    .end packed-switch
.end method
