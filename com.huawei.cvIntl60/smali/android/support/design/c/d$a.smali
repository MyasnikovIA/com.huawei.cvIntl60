.class public Landroid/support/design/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/support/design/c/d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/support/design/c/d$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/support/design/c/d$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Landroid/support/design/c/d$a;

    invoke-direct {v0}, Landroid/support/design/c/d$a;-><init>()V

    sput-object v0, Landroid/support/design/c/d$a;->a:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Landroid/support/design/c/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/design/c/d$d;-><init>(Landroid/support/design/c/d$1;)V

    iput-object v0, p0, Landroid/support/design/c/d$a;->b:Landroid/support/design/c/d$d;

    return-void
.end method


# virtual methods
.method public a(FLandroid/support/design/c/d$d;Landroid/support/design/c/d$d;)Landroid/support/design/c/d$d;
    .locals 5

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/design/c/d$a;->b:Landroid/support/design/c/d$d;

    iget v1, p2, Landroid/support/design/c/d$d;->a:F

    iget v2, p3, Landroid/support/design/c/d$d;->a:F

    .line 214
    invoke-static {v1, v2, p1}, Landroid/support/design/widget/k;->a(FFF)F

    move-result v1

    iget v2, p2, Landroid/support/design/c/d$d;->b:F

    iget v3, p3, Landroid/support/design/c/d$d;->b:F

    .line 215
    invoke-static {v2, v3, p1}, Landroid/support/design/widget/k;->a(FFF)F

    move-result v2

    iget v3, p2, Landroid/support/design/c/d$d;->c:F

    iget v4, p3, Landroid/support/design/c/d$d;->c:F

    .line 216
    invoke-static {v3, v4, p1}, Landroid/support/design/widget/k;->a(FFF)F

    move-result v3

    .line 213
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/c/d$d;->a(FFF)V

    .line 217
    iget-object v0, p0, Landroid/support/design/c/d$a;->b:Landroid/support/design/c/d$d;

    return-object v0
.end method

.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    check-cast p2, Landroid/support/design/c/d$d;

    check-cast p3, Landroid/support/design/c/d$d;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/c/d$a;->a(FLandroid/support/design/c/d$d;Landroid/support/design/c/d$d;)Landroid/support/design/c/d$d;

    move-result-object v0

    return-object v0
.end method
