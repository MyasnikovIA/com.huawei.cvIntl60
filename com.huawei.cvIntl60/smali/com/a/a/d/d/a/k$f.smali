.class Lcom/a/a/d/d/a/k$f;
.super Lcom/a/a/d/d/a/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/d/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/a/a/d/d/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)F
    .locals 1

    .prologue
    .line 192
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public b(IIII)Lcom/a/a/d/d/a/k$g;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/a/a/d/d/a/k$g;->b:Lcom/a/a/d/d/a/k$g;

    return-object v0
.end method
