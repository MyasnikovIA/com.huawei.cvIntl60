.class public Lcom/a/a/d/c/f$b;
.super Lcom/a/a/d/c/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/d/c/f$a",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/a/a/d/c/f$b$1;

    invoke-direct {v0}, Lcom/a/a/d/c/f$b$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/a/a/d/c/f$a;-><init>(Lcom/a/a/d/c/f$d;)V

    .line 174
    return-void
.end method
