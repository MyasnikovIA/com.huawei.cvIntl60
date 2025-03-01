.class Lcom/a/a/d/d/e/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/d/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/d/d/e/g;


# direct methods
.method constructor <init>(Lcom/a/a/d/d/e/g;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/a/a/d/d/e/g$c;->a:Lcom/a/a/d/d/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 258
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/d/d/e/g$a;

    .line 260
    iget-object v2, p0, Lcom/a/a/d/d/e/g$c;->a:Lcom/a/a/d/d/e/g;

    invoke-virtual {v2, v0}, Lcom/a/a/d/d/e/g;->a(Lcom/a/a/d/d/e/g$a;)V

    move v0, v1

    .line 266
    :goto_0
    return v0

    .line 262
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/d/d/e/g$a;

    .line 264
    iget-object v1, p0, Lcom/a/a/d/d/e/g$c;->a:Lcom/a/a/d/d/e/g;

    iget-object v1, v1, Lcom/a/a/d/d/e/g;->a:Lcom/a/a/j;

    invoke-virtual {v1, v0}, Lcom/a/a/j;->a(Lcom/a/a/h/a/h;)V

    .line 266
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
