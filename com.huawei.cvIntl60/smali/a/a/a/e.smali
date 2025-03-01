.class public La/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, La/a/a/e;->a:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, La/a/a/e;->b:Ljava/lang/String;

    .line 15
    return-void
.end method
