.class Lui_Controller/ui_StartMode/UI_ModeMain$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 807
    iput-object p1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 810
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    new-instance v1, LGeneralFunction/e/e;

    invoke-static {}, Lui_Controller/ui_StartMode/UI_ModeMain;->y()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, LGeneralFunction/e/e;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    .line 811
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v0}, LGeneralFunction/e/e;->b()V

    .line 813
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i(Lui_Controller/ui_StartMode/UI_ModeMain;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->j(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    .line 822
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget v1, v1, Lui_Controller/b/b;->c:I

    iget-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    iget-object v3, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v3, v3, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    iget-object v4, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v4, v4, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2, v3, v4}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    .line 824
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2, v5}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;I)V

    .line 825
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2, v5}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;I)V

    .line 826
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->a()V

    .line 827
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->b()V

    .line 828
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->c()V

    .line 830
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-string v1, "CreateLocalDatabaseProcess done"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;Ljava/lang/String;I)V

    .line 831
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->a()V

    .line 832
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->b()V

    .line 833
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$4;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iput-boolean v5, v0, Lui_Controller/b/e;->c:Z

    .line 834
    return-void
.end method
