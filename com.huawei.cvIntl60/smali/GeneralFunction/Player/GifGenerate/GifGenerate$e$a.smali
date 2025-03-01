.class LGeneralFunction/Player/GifGenerate/GifGenerate$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/GifGenerate/GifGenerate$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;


# direct methods
.method private constructor <init>(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$a;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LGeneralFunction/Player/GifGenerate/GifGenerate$e;LGeneralFunction/Player/GifGenerate/GifGenerate$1;)V
    .locals 0

    .prologue
    .line 872
    invoke-direct {p0, p1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e$a;-><init>(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .prologue
    .line 876
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 877
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 878
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$a;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-virtual {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(Landroid/os/Message;)I

    .line 879
    return-void
.end method
