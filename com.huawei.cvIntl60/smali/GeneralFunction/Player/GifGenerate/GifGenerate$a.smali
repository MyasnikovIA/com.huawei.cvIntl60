.class LGeneralFunction/Player/GifGenerate/GifGenerate$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/GifGenerate/GifGenerate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:I

.field c:Z

.field final synthetic d:LGeneralFunction/Player/GifGenerate/GifGenerate;


# direct methods
.method constructor <init>(LGeneralFunction/Player/GifGenerate/GifGenerate;Landroid/graphics/Bitmap;IZ)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$a;->d:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$a;->a:Landroid/graphics/Bitmap;

    .line 385
    iput p3, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$a;->b:I

    .line 386
    iput-boolean p4, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$a;->c:Z

    .line 387
    return-void
.end method
