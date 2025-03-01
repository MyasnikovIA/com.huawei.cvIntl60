.class final Lcom/facebook/a/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Lcom/facebook/a/b/i;->a()Lcom/facebook/a/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/b/a;->a(Lcom/facebook/a/b/i;)Lcom/facebook/a/b/i;

    .line 166
    :cond_0
    return-void
.end method
