.class public LGeneralFunction/s/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, LGeneralFunction/s/b;->a:Ljava/lang/String;

    .line 9
    iput-object v0, p0, LGeneralFunction/s/b;->b:Ljava/lang/String;

    .line 14
    return-void
.end method
