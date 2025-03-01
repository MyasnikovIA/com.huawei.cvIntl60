.class Lcom/a/a/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/a/a/e/n;


# direct methods
.method public constructor <init>(Lcom/a/a/e/n;)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lcom/a/a/j$b;->a:Lcom/a/a/e/n;

    .line 477
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 481
    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/a/a/j$b;->a:Lcom/a/a/e/n;

    invoke-virtual {v0}, Lcom/a/a/e/n;->d()V

    .line 484
    :cond_0
    return-void
.end method
