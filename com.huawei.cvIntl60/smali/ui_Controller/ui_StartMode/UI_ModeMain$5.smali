.class Lui_Controller/ui_StartMode/UI_ModeMain$5;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_StartMode/UI_ModeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_StartMode/UI_ModeMain;


# direct methods
.method constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V
    .locals 0

    .prologue
    .line 1076
    iput-object p1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$5;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1080
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1105
    :goto_1
    return-void

    .line 1080
    :sswitch_0
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1084
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$5;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput-boolean v3, v0, Lui_Controller/b/h;->e:Z

    .line 1086
    const/4 v0, 0x0

    sput-object v0, LGeneralFunction/a/a;->a:Ljava/util/Locale;

    goto :goto_1

    .line 1091
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$5;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-string v2, "ACTION_TIME_CHANGED"

    invoke-static {v0, v2, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;Ljava/lang/String;I)V

    .line 1092
    invoke-static {}, LGeneralFunction/g;->a()V

    .line 1093
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$5;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->e()V

    goto :goto_1

    .line 1098
    :pswitch_2
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1099
    new-instance v1, La/c/a;

    const/16 v2, 0x2f13

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    .line 1100
    const-string v2, "state"

    invoke-virtual {v1, v2, v0}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1101
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$5;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto :goto_1

    .line 1080
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63ecb970 -> :sswitch_2
        -0x122164c -> :sswitch_0
        0x1e1f7f95 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
