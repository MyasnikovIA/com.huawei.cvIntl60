.class public Lcom/b/a/a/g;
.super Lcom/c/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "udta"

    invoke-direct {p0, v0}, Lcom/c/a/b;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/c/a/b;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 49
    return-void
.end method
