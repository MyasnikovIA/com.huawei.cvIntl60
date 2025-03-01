.class Lcom/facebook/a/b/h;
.super Lcom/facebook/a/g;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-static {p1}, Lcom/facebook/internal/u;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/facebook/a/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/a/g;->a(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method protected a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/a/g;->a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 60
    return-void
.end method
