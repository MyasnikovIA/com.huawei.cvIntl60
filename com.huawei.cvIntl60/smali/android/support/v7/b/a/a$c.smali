.class Landroid/support/v7/b/a/a$c;
.super Landroid/support/v7/b/a/a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/support/graphics/drawable/c;


# direct methods
.method constructor <init>(Landroid/support/graphics/drawable/c;)V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/b/a/a$f;-><init>(Landroid/support/v7/b/a/a$1;)V

    .line 433
    iput-object p1, p0, Landroid/support/v7/b/a/a$c;->a:Landroid/support/graphics/drawable/c;

    .line 434
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/support/v7/b/a/a$c;->a:Landroid/support/graphics/drawable/c;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/c;->start()V

    .line 439
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/v7/b/a/a$c;->a:Landroid/support/graphics/drawable/c;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/c;->stop()V

    .line 444
    return-void
.end method
