.class Lui_Controller/ui_StartMode/UI_ModeMain$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/c/d$a;


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
    .line 408
    iput-object p1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$3;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/c/a;)V
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p1}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x4803

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$3;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/4 v1, 0x0

    iput-object v1, v0, Lui_Controller/b/k;->av:LGeneralFunction/Player/player/h;

    .line 413
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$3;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, p1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 414
    return-void
.end method
