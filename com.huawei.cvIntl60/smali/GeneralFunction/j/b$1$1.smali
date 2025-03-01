.class LGeneralFunction/j/b$1$1;
.super Lcom/facebook/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/j/b$1;->a(Lcom/facebook/login/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/j/b$1;


# direct methods
.method constructor <init>(LGeneralFunction/j/b$1;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, LGeneralFunction/j/b$1$1;->a:LGeneralFunction/j/b$1;

    invoke-direct {p0}, Lcom/facebook/w;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentProfileChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/Profile;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 122
    iget-object v0, p0, LGeneralFunction/j/b$1$1;->a:LGeneralFunction/j/b$1;

    iget-object v0, v0, LGeneralFunction/j/b$1;->a:LGeneralFunction/j/b;

    invoke-virtual {p2}, Lcom/facebook/Profile;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LGeneralFunction/j/b;->b(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, LGeneralFunction/j/b$1$1;->a:LGeneralFunction/j/b$1;

    iget-object v0, v0, LGeneralFunction/j/b$1;->a:LGeneralFunction/j/b;

    invoke-virtual {p2}, Lcom/facebook/Profile;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LGeneralFunction/j/b;->c(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, LGeneralFunction/j/b$1$1;->b()V

    .line 126
    iget-object v0, p0, LGeneralFunction/j/b$1$1;->a:LGeneralFunction/j/b$1;

    iget-object v0, v0, LGeneralFunction/j/b$1;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a50

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    .line 127
    return-void
.end method
