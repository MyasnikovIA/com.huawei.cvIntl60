.class Lcom/a/a/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/j;->a(Lcom/a/a/h/a/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/h/a/h;

.field final synthetic b:Lcom/a/a/j;


# direct methods
.method constructor <init>(Lcom/a/a/j;Lcom/a/a/h/a/h;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/a/a/j$2;->b:Lcom/a/a/j;

    iput-object p2, p0, Lcom/a/a/j$2;->a:Lcom/a/a/h/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/a/a/j$2;->b:Lcom/a/a/j;

    iget-object v1, p0, Lcom/a/a/j$2;->a:Lcom/a/a/h/a/h;

    invoke-virtual {v0, v1}, Lcom/a/a/j;->a(Lcom/a/a/h/a/h;)V

    .line 424
    return-void
.end method
