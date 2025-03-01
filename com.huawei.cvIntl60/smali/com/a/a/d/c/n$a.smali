.class public Lcom/a/a/d/c/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/a/a/d/h;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/h;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/a/a/d/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/a/b",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/h;Lcom/a/a/d/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            "Lcom/a/a/d/a/b",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/a/a/d/c/n$a;-><init>(Lcom/a/a/d/h;Ljava/util/List;Lcom/a/a/d/a/b;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/a/a/d/h;Ljava/util/List;Lcom/a/a/d/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/h;",
            ">;",
            "Lcom/a/a/d/a/b",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/h;

    iput-object v0, p0, Lcom/a/a/d/c/n$a;->a:Lcom/a/a/d/h;

    .line 55
    invoke-static {p2}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/a/a/d/c/n$a;->b:Ljava/util/List;

    .line 56
    invoke-static {p3}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/a/b;

    iput-object v0, p0, Lcom/a/a/d/c/n$a;->c:Lcom/a/a/d/a/b;

    .line 57
    return-void
.end method
