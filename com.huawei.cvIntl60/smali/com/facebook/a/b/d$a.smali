.class Lcom/facebook/a/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/math/BigDecimal;

.field b:Ljava/util/Currency;

.field c:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/facebook/a/b/d$a;->a:Ljava/math/BigDecimal;

    .line 237
    iput-object p2, p0, Lcom/facebook/a/b/d$a;->b:Ljava/util/Currency;

    .line 238
    iput-object p3, p0, Lcom/facebook/a/b/d$a;->c:Landroid/os/Bundle;

    .line 239
    return-void
.end method
