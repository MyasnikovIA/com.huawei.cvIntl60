.class final Lcom/facebook/a/a/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/a/d;->a(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/p;)V
    .locals 3

    .prologue
    .line 261
    sget-object v0, Lcom/facebook/t;->e:Lcom/facebook/t;

    invoke-static {}, Lcom/facebook/a/a/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App index sent to FB!"

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method
