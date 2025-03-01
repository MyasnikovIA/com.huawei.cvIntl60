.class public Lcom/a/a/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/e/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/a/a/e/c$a;)Lcom/a/a/e/c;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/a/a/e/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 21
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 22
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/a/a/e/e;

    invoke-direct {v0, p1, p2}, Lcom/a/a/e/e;-><init>(Landroid/content/Context;Lcom/a/a/e/c$a;)V

    :goto_1
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lcom/a/a/e/j;

    invoke-direct {v0}, Lcom/a/a/e/j;-><init>()V

    goto :goto_1
.end method
