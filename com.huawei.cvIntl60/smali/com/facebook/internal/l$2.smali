.class final Lcom/facebook/internal/l$2;
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


# direct methods
.method constructor <init>(Lcom/facebook/internal/l$b;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/facebook/internal/l$2;->a:Lcom/facebook/internal/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/internal/l$2;->a:Lcom/facebook/internal/l$b;

    invoke-interface {v0}, Lcom/facebook/internal/l$b;->a()V

    .line 248
    return-void
.end method
