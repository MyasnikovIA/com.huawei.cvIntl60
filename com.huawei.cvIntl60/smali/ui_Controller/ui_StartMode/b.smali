.class public Lui_Controller/ui_StartMode/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lui_Controller/ui_StartMode/UI_ModeMain;


# direct methods
.method public constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/ui_StartMode/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 20
    iput-object p1, p0, Lui_Controller/ui_StartMode/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 21
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 15
    const-string v0, "UI_MainHandler"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x1

    .line 26
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 46
    :goto_0
    :sswitch_0
    return v0

    .line 36
    :sswitch_1
    iget-object v2, p0, Lui_Controller/ui_StartMode/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget v2, v2, Lui_Controller/b/j;->c:I

    invoke-static {v2}, Lui_Controller/a/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Liveview throughput:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_StartMode/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v3, Lui_Controller/b/k;->R:I

    mul-int/lit8 v3, v3, 0x8

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Kbits/s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lui_Controller/ui_StartMode/b;->a(Ljava/lang/String;I)V

    .line 40
    :cond_0
    iget-object v2, p0, Lui_Controller/ui_StartMode/b;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v0, v2, Lui_Controller/b/k;->R:I

    move v0, v1

    .line 41
    goto :goto_0

    .line 26
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f02 -> :sswitch_0
        0x2f04 -> :sswitch_0
        0xf001 -> :sswitch_1
    .end sparse-switch
.end method
