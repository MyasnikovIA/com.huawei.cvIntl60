.class public Lcom/c/a/a/d;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final c:Lcom/c/a/a/e;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/e;->a(Ljava/lang/Class;)Lcom/c/a/a/e;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/d;->c:Lcom/c/a/a/e;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/util/Iterator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/c/a/a/d;->a:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/c/a/a/d;->b:Ljava/util/Iterator;

    .line 22
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/c/a/a/d;->c:Lcom/c/a/a/e;

    const-string v1, "blowup running"

    invoke-virtual {v0, v1}, Lcom/c/a/a/e;->a(Ljava/lang/String;)V

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/c/a/a/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/d;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/c/a/a/d;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/c/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/c/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/c/a/a/d;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/c/a/a/d;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0, p1}, Lcom/c/a/a/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/c/a/a/d$1;

    invoke-direct {v0, p0}, Lcom/c/a/a/d$1;-><init>(Lcom/c/a/a/d;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/c/a/a/d;->c:Lcom/c/a/a/e;

    const-string v1, "potentially expensive size() call"

    invoke-virtual {v0, v1}, Lcom/c/a/a/e;->a(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/c/a/a/d;->a()V

    .line 78
    iget-object v0, p0, Lcom/c/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
