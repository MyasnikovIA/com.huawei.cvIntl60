.class Lcom/a/a/d/c/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/a/b",
        "<TModel;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/a/a/d/c/v$b;->a:Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public a(Lcom/a/a/g;Lcom/a/a/d/a/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/g;",
            "Lcom/a/a/d/a/b$a",
            "<-TModel;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/a/a/d/c/v$b;->a:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/a/a/d/a/b$a;->a(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public c()Lcom/a/a/d/a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/a/a/d/a;->a:Lcom/a/a/d/a;

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TModel;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/a/a/d/c/v$b;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
