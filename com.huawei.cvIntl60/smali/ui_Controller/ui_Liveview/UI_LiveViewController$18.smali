.class Lui_Controller/ui_Liveview/UI_LiveViewController$18;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->ay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Liveview/UI_LiveViewController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;)V
    .locals 0

    .prologue
    .line 2201
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 2205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 2229
    :cond_1
    :goto_1
    return-void

    .line 2205
    :pswitch_0
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2209
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->ar:I

    .line 2210
    iget-object v2, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const-string v3, "level"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lui_Controller/b/k;->ar:I

    .line 2211
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current battery level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v3, Lui_Controller/b/k;->ar:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Ljava/lang/String;I)V

    .line 2212
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v1, Lui_Controller/b/k;->ar:I

    if-gt v1, v5, :cond_1

    if-le v0, v5, :cond_1

    .line 2215
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, "lPhoneBatteryLevel<= 10"

    invoke-static {v0, v1, v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Ljava/lang/String;I)V

    .line 2216
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2219
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x150

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_3

    .line 2220
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x225d

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_1

    .line 2223
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$18;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2216

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_1

    .line 2205
    nop

    :pswitch_data_0
    .packed-switch -0x5bb23923
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
