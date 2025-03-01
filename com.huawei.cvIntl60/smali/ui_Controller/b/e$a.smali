.class public Lui_Controller/b/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lui_Controller/b/e$a;->a:Landroid/graphics/Bitmap;

    .line 24
    iput v0, p0, Lui_Controller/b/e$a;->b:I

    .line 28
    iput-object v1, p0, Lui_Controller/b/e$a;->a:Landroid/graphics/Bitmap;

    .line 29
    iput v0, p0, Lui_Controller/b/e$a;->b:I

    .line 30
    return-void
.end method
