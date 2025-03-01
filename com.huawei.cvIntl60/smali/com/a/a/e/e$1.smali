.class Lcom/a/a/e/e$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/e/e;


# direct methods
.method constructor <init>(Lcom/a/a/e/e;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    iget-boolean v0, v0, Lcom/a/a/e/e;->b:Z

    .line 25
    iget-object v1, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    iget-object v2, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    invoke-virtual {v2, p1}, Lcom/a/a/e/e;->a(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/a/a/e/e;->b:Z

    .line 26
    iget-object v1, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    iget-boolean v1, v1, Lcom/a/a/e/e;->b:Z

    if-eq v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    iget-object v0, v0, Lcom/a/a/e/e;->a:Lcom/a/a/e/c$a;

    iget-object v1, p0, Lcom/a/a/e/e$1;->a:Lcom/a/a/e/e;

    iget-boolean v1, v1, Lcom/a/a/e/e;->b:Z

    invoke-interface {v0, v1}, Lcom/a/a/e/c$a;->a(Z)V

    .line 29
    :cond_0
    return-void
.end method
