.class Lcom/facebook/internal/w$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/w;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/w;


# direct methods
.method constructor <init>(Lcom/facebook/internal/w;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/facebook/internal/w$2;->a:Lcom/facebook/internal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/facebook/internal/w$2;->a:Lcom/facebook/internal/w;

    invoke-virtual {v0}, Lcom/facebook/internal/w;->cancel()V

    .line 520
    return-void
.end method
