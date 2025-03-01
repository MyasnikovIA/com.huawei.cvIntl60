.class final Lcom/a/a/d/b/b/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/j/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/security/MessageDigest;

.field private final b:Lcom/a/a/j/a/b;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/a/a/j/a/b;->a()Lcom/a/a/j/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/b/j$a;->b:Lcom/a/a/j/a/b;

    .line 62
    iput-object p1, p0, Lcom/a/a/d/b/b/j$a;->a:Ljava/security/MessageDigest;

    .line 63
    return-void
.end method


# virtual methods
.method public a_()Lcom/a/a/j/a/b;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/a/a/d/b/b/j$a;->b:Lcom/a/a/j/a/b;

    return-object v0
.end method
