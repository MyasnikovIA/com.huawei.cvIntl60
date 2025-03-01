.class public abstract Lcom/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lcom/a/a/k",
        "<TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private a:Lcom/a/a/h/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/b/c",
            "<-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/a/a/h/b/a;->a()Lcom/a/a/h/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/k;->a:Lcom/a/a/h/b/c;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/a/a/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/k;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final b()Lcom/a/a/h/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/h/b/c",
            "<-TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/a/a/k;->a:Lcom/a/a/h/b/c;

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/a/a/k;->a()Lcom/a/a/k;

    move-result-object v0

    return-object v0
.end method
