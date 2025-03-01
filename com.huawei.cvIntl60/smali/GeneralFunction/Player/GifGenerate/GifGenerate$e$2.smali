.class LGeneralFunction/Player/GifGenerate/GifGenerate$e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a()Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;


# direct methods
.method constructor <init>(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$2;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 1143
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1144
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1145
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$2;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-virtual {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(Landroid/os/Message;)I

    .line 1146
    return-void
.end method
