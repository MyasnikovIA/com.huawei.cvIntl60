.class final Lcom/facebook/a/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/e;->a(Lcom/facebook/a/a;Lcom/facebook/a/l;ZLcom/facebook/a/j;)Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/a;

.field final synthetic b:Lcom/facebook/GraphRequest;

.field final synthetic c:Lcom/facebook/a/l;

.field final synthetic d:Lcom/facebook/a/j;


# direct methods
.method constructor <init>(Lcom/facebook/a/a;Lcom/facebook/GraphRequest;Lcom/facebook/a/l;Lcom/facebook/a/j;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/facebook/a/e$5;->a:Lcom/facebook/a/a;

    iput-object p2, p0, Lcom/facebook/a/e$5;->b:Lcom/facebook/GraphRequest;

    iput-object p3, p0, Lcom/facebook/a/e$5;->c:Lcom/facebook/a/l;

    iput-object p4, p0, Lcom/facebook/a/e$5;->d:Lcom/facebook/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/p;)V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/facebook/a/e$5;->a:Lcom/facebook/a/a;

    iget-object v1, p0, Lcom/facebook/a/e$5;->b:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/a/e$5;->c:Lcom/facebook/a/l;

    iget-object v3, p0, Lcom/facebook/a/e$5;->d:Lcom/facebook/a/j;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/a/e;->a(Lcom/facebook/a/a;Lcom/facebook/GraphRequest;Lcom/facebook/p;Lcom/facebook/a/l;Lcom/facebook/a/j;)V

    .line 246
    return-void
.end method
