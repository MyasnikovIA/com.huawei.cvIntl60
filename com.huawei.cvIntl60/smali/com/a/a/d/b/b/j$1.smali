.class Lcom/a/a/d/b/b/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/j/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/j/a/a$a",
        "<",
        "Lcom/a/a/d/b/b/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/d/b/b/j;


# direct methods
.method constructor <init>(Lcom/a/a/d/b/b/j;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/a/a/d/b/b/j$1;->a:Lcom/a/a/d/b/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/d/b/b/j$a;
    .locals 2

    .prologue
    .line 24
    :try_start_0
    new-instance v0, Lcom/a/a/d/b/b/j$a;

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d/b/b/j$a;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/a/a/d/b/b/j$1;->a()Lcom/a/a/d/b/b/j$a;

    move-result-object v0

    return-object v0
.end method
