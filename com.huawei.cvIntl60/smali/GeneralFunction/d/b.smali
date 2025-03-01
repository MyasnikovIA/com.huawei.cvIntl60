.class public LGeneralFunction/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LGeneralFunction/d/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, LGeneralFunction/d/a;

    invoke-direct {v0}, LGeneralFunction/d/a;-><init>()V

    iput-object v0, p0, LGeneralFunction/d/b;->a:LGeneralFunction/d/a;

    .line 22
    return-void
.end method
