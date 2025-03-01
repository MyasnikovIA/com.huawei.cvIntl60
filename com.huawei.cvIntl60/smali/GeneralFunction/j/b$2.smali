.class LGeneralFunction/j/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/j/b;->a(Landroid/os/Message;)Z
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
    .line 179
    iput-object p1, p0, LGeneralFunction/j/b$2;->a:LGeneralFunction/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/p;)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 183
    if-nez p1, :cond_0

    .line 185
    const-string v0, "GraphRequest\'s response == null"

    invoke-static {v0, v1}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 186
    new-instance v0, La/c/a;

    const/16 v1, 0x2aa1

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 187
    const-string v1, "httpStatusCode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 188
    iget-object v1, p0, LGeneralFunction/j/b$2;->a:LGeneralFunction/j/b;

    invoke-static {v1}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v1

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v0, "GraphRequest\'s response =/= null "

    invoke-static {v0, v1}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 193
    iget-object v0, p0, LGeneralFunction/j/b$2;->a:LGeneralFunction/j/b;

    invoke-static {v0, p1}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;Lcom/facebook/p;)V

    goto :goto_0
.end method
