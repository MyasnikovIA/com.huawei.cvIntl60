.class Lcom/a/a/j$a;
.super Lcom/a/a/h/a/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/h/a/i",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/a/a/h/a/i;-><init>(Landroid/view/View;)V

    .line 491
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/a/a/h/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/a/a/h/b/b",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    return-void
.end method
