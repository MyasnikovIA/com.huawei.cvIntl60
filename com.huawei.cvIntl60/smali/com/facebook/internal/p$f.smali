.class public Lcom/facebook/internal/p$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/facebook/internal/p$e;

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    return-void
.end method

.method public static a()Lcom/facebook/internal/p$f;
    .locals 2

    .prologue
    .line 1007
    new-instance v0, Lcom/facebook/internal/p$f;

    invoke-direct {v0}, Lcom/facebook/internal/p$f;-><init>()V

    .line 1008
    const/4 v1, -0x1

    iput v1, v0, Lcom/facebook/internal/p$f;->b:I

    .line 1010
    return-object v0
.end method

.method public static a(Lcom/facebook/internal/p$e;I)Lcom/facebook/internal/p$f;
    .locals 1

    .prologue
    .line 999
    new-instance v0, Lcom/facebook/internal/p$f;

    invoke-direct {v0}, Lcom/facebook/internal/p$f;-><init>()V

    .line 1000
    iput-object p0, v0, Lcom/facebook/internal/p$f;->a:Lcom/facebook/internal/p$e;

    .line 1001
    iput p1, v0, Lcom/facebook/internal/p$f;->b:I

    .line 1003
    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 1021
    iget v0, p0, Lcom/facebook/internal/p$f;->b:I

    return v0
.end method
