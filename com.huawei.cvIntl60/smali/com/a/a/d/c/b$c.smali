.class Lcom/a/a/d/c/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/a/b",
        "<TData;>;"
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Lcom/a/a/d/c/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/b$b",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLcom/a/a/d/c/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/a/a/d/c/b$b",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/a/a/d/c/b$c;->a:[B

    .line 54
    iput-object p2, p0, Lcom/a/a/d/c/b$c;->b:Lcom/a/a/d/c/b$b;

    .line 55
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public a(Lcom/a/a/g;Lcom/a/a/d/a/b$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/g;",
            "Lcom/a/a/d/a/b$a",
            "<-TData;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/a/a/d/c/b$c;->b:Lcom/a/a/d/c/b$b;

    iget-object v1, p0, Lcom/a/a/d/c/b$c;->a:[B

    invoke-interface {v0, v1}, Lcom/a/a/d/c/b$b;->b([B)Ljava/lang/Object;

    move-result-object v0

    .line 60
    invoke-interface {p2, v0}, Lcom/a/a/d/a/b$a;->a(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public c()Lcom/a/a/d/a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 82
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
            "<TData;>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/a/a/d/c/b$c;->b:Lcom/a/a/d/c/b$b;

    invoke-interface {v0}, Lcom/a/a/d/c/b$b;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
