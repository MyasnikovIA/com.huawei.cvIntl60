.class Lcom/a/a/d/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/b/b/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/b/b/a$b;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/d",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/d/j;


# direct methods
.method constructor <init>(Lcom/a/a/d/d;Ljava/lang/Object;Lcom/a/a/d/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/d",
            "<TDataType;>;TDataType;",
            "Lcom/a/a/d/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/a/a/d/b/c;->a:Lcom/a/a/d/d;

    .line 24
    iput-object p2, p0, Lcom/a/a/d/b/c;->b:Ljava/lang/Object;

    .line 25
    iput-object p3, p0, Lcom/a/a/d/b/c;->c:Lcom/a/a/d/j;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/a/a/d/b/c;->a:Lcom/a/a/d/d;

    iget-object v1, p0, Lcom/a/a/d/b/c;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/a/d/b/c;->c:Lcom/a/a/d/j;

    invoke-interface {v0, v1, p1, v2}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/io/File;Lcom/a/a/d/j;)Z

    move-result v0

    return v0
.end method
