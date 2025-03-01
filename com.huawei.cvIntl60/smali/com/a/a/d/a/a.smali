.class public abstract Lcom/a/a/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/a/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/res/AssetManager;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/a/a/d/a/a;->b:Landroid/content/res/AssetManager;

    .line 24
    iput-object p2, p0, Lcom/a/a/d/a/a;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public a()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/a/a/d/a/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/a/a;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/a/a/d/a/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/g;Lcom/a/a/d/a/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/g;",
            "Lcom/a/a/d/a/b$a",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/a/a;->b:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/a/a/d/a/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/d/a/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/a/a;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    iget-object v0, p0, Lcom/a/a/d/a/a;->c:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/a/a/d/a/b$a;->a(Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v1, "AssetPathFetcher"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "AssetPathFetcher"

    const-string v2, "Failed to load data from asset manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :cond_0
    invoke-interface {p2, v0}, Lcom/a/a/d/a/b$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public c()Lcom/a/a/d/a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/a/a/d/a;->a:Lcom/a/a/d/a;

    return-object v0
.end method
