.class final Lcom/facebook/internal/l$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/l;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/l$b;

.field final synthetic b:Lcom/facebook/internal/k;


# direct methods
.method constructor <init>(Lcom/facebook/internal/l$b;Lcom/facebook/internal/k;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/facebook/internal/l$3;->a:Lcom/facebook/internal/l$b;

    iput-object p2, p0, Lcom/facebook/internal/l$3;->b:Lcom/facebook/internal/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/facebook/internal/l$3;->a:Lcom/facebook/internal/l$b;

    iget-object v1, p0, Lcom/facebook/internal/l$3;->b:Lcom/facebook/internal/k;

    invoke-interface {v0, v1}, Lcom/facebook/internal/l$b;->a(Lcom/facebook/internal/k;)V

    .line 260
    return-void
.end method
