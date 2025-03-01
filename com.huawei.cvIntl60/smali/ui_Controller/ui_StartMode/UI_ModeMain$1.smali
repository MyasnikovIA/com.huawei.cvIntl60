.class Lui_Controller/ui_StartMode/UI_ModeMain$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 156
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 160
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, p1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4700

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4820

    if-eq v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget v2, v2, Lui_Controller/b/j;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;Ljava/lang/String;I)V

    .line 172
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2f00

    if-ne v0, v1, :cond_3

    .line 173
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-string v1, "MSG_UI_SYSTEM_CLOSE_APP: force close APP"

    invoke-static {v0, v1, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;Ljava/lang/String;I)V

    .line 174
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 178
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4800

    if-ne v0, v1, :cond_4

    .line 179
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-string v1, "MSG_REMOTE_USB_CORE_INITIAL done"

    invoke-static {v0, v1, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;Ljava/lang/String;I)V

    .line 180
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;Z)Z

    .line 183
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->e:LGeneralFunction/d/c;

    invoke-virtual {v0, p1}, LGeneralFunction/d/c;->a(Landroid/os/Message;)Z

    move-result v0

    .line 184
    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/m/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LGeneralFunction/m/a;->a(Landroid/os/Message;)V

    .line 190
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/h/b;

    move-result-object v0

    invoke-virtual {v0, p1}, LGeneralFunction/h/b;->a(Landroid/os/Message;)V

    .line 193
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(Lui_Controller/ui_StartMode/UI_ModeMain;)Lui_Controller/ui_StartMode/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lui_Controller/ui_StartMode/c;->a(Landroid/os/Message;)Z

    move-result v0

    .line 194
    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->d(Lui_Controller/ui_StartMode/UI_ModeMain;)Lui_Controller/ui_StartMode/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lui_Controller/ui_StartMode/b;->a(Landroid/os/Message;)Z

    move-result v0

    .line 200
    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->e(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/j/b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->e(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/j/b;

    move-result-object v0

    invoke-virtual {v0, p1}, LGeneralFunction/j/b;->a(Landroid/os/Message;)Z

    move-result v0

    .line 207
    if-nez v0, :cond_0

    .line 212
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget v0, v0, Lui_Controller/b/j;->c:I

    if-nez v0, :cond_8

    .line 219
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->f(Lui_Controller/ui_StartMode/UI_ModeMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 221
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, v3}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 224
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_7

    .line 226
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, v3}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 230
    :cond_7
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->f(Lui_Controller/ui_StartMode/UI_ModeMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 235
    :cond_8
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->f(Lui_Controller/ui_StartMode/UI_ModeMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 237
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v0, Lui_Controller/b/j;->b:LGeneralFunction/a/a;

    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->f(Lui_Controller/ui_StartMode/UI_ModeMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v1, v0}, LGeneralFunction/a/a;->a(Landroid/os/Message;)V

    .line 238
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->f(Lui_Controller/ui_StartMode/UI_ModeMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 240
    :cond_9
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$1;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->b:LGeneralFunction/a/a;

    invoke-virtual {v0, p1}, LGeneralFunction/a/a;->a(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
