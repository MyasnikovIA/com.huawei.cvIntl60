.class Landroid/support/design/internal/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/internal/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput p1, p0, Landroid/support/design/internal/e$e;->a:I

    .line 671
    iput p2, p0, Landroid/support/design/internal/e$e;->b:I

    .line 672
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Landroid/support/design/internal/e$e;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Landroid/support/design/internal/e$e;->b:I

    return v0
.end method
