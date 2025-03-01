.class LGeneralFunction/j/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/j/b;->a(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/f",
        "<",
        "Lcom/facebook/login/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/j/b;


# direct methods
.method constructor <init>(LGeneralFunction/j/b;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, LGeneralFunction/j/b$1;->a:LGeneralFunction/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 135
    const-string v0, "FacebookCallback onCancel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 136
    iget-object v0, p0, LGeneralFunction/j/b$1;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2aa0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    .line 137
    return-void
.end method

.method public a(Lcom/facebook/h;)V
    .locals 4

    .prologue
    .line 142
    const-string v0, "FacebookCallback onError"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, LGeneralFunction/j/b$1;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2aa0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    .line 144
    return-void
.end method

.method public a(Lcom/facebook/login/g;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 101
    invoke-static {}, Lcom/facebook/Profile;->a()Lcom/facebook/Profile;

    move-result-object v0

    .line 103
    const-string v1, "FacebookCallback onSuccess"

    invoke-static {v1, v3}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 104
    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/Profile;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 107
    iget-object v1, p0, LGeneralFunction/j/b$1;->a:LGeneralFunction/j/b;

    invoke-virtual {v0}, Lcom/facebook/Profile;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGeneralFunction/j/b;->b(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, LGeneralFunction/j/b$1;->a:LGeneralFunction/j/b;

    invoke-virtual {v0}, Lcom/facebook/Profile;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, LGeneralFunction/j/b;->c(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, LGeneralFunction/j/b$1;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a50

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    .line 130
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v0, "profile is null..."

    invoke-static {v0, v3}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, LGeneralFunction/j/b$1;->a:LGeneralFunction/j/b;

    const-string v1, " "

    invoke-virtual {v0, v1}, LGeneralFunction/j/b;->b(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, LGeneralFunction/j/b$1;->a:LGeneralFunction/j/b;

    const-string v1, " "

    invoke-virtual {v0, v1}, LGeneralFunction/j/b;->c(Ljava/lang/String;)V

    .line 116
    new-instance v0, LGeneralFunction/j/b$1$1;

    invoke-direct {v0, p0}, LGeneralFunction/j/b$1$1;-><init>(LGeneralFunction/j/b$1;)V

    .line 128
    invoke-virtual {v0}, LGeneralFunction/j/b$1$1;->a()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Lcom/facebook/login/g;

    invoke-virtual {p0, p1}, LGeneralFunction/j/b$1;->a(Lcom/facebook/login/g;)V

    return-void
.end method
