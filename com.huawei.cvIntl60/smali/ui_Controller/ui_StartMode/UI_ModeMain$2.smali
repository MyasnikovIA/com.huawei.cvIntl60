.class Lui_Controller/ui_StartMode/UI_ModeMain$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_StartMode/UI_ModeMain;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_StartMode/UI_ModeMain;


# direct methods
.method constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$2;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 363
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$2;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget v0, v0, Lui_Controller/b/j;->c:I

    if-nez v0, :cond_0

    .line 366
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$2;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->b:LGeneralFunction/a/a;

    invoke-virtual {v0, p1}, LGeneralFunction/a/a;->b(Landroid/os/Message;)V

    .line 372
    return-void
.end method
