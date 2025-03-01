.class LGeneralFunction/Player/player/SphericalVideoPlayer$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/player/SphericalVideoPlayer$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;


# direct methods
.method private constructor <init>(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$a;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LGeneralFunction/Player/player/SphericalVideoPlayer$g;LGeneralFunction/Player/player/SphericalVideoPlayer$1;)V
    .locals 0

    .prologue
    .line 1197
    invoke-direct {p0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g$a;-><init>(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .prologue
    .line 1201
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1202
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1203
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$a;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-virtual {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(Landroid/os/Message;)I

    .line 1204
    return-void
.end method
