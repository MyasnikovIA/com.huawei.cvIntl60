.class final Lcom/facebook/a/b/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/a/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/a;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/k;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/facebook/a/b/a$4;->a:Lcom/facebook/internal/k;

    iput-object p2, p0, Lcom/facebook/a/b/a$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/facebook/a/b/a$4;->a:Lcom/facebook/internal/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/a/b/a$4;->a:Lcom/facebook/internal/k;

    .line 234
    invoke-virtual {v0}, Lcom/facebook/internal/k;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 235
    :goto_0
    invoke-static {}, Lcom/facebook/k;->m()Z

    move-result v3

    if-nez v3, :cond_2

    .line 237
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/facebook/a/b/a$4;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/a/b/a;->a(Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 234
    goto :goto_0

    :cond_2
    move v2, v1

    .line 235
    goto :goto_1
.end method
