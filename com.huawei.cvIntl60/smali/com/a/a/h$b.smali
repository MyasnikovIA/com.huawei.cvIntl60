.class public final Lcom/a/a/h$b;
.super Lcom/a/a/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 602
    const-string v0, "Failed to find image header parser."

    invoke-direct {p0, v0}, Lcom/a/a/h$a;-><init>(Ljava/lang/String;)V

    .line 603
    return-void
.end method
