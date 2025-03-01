.class LGeneralFunction/Player/player/SphericalVideoPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/Player/player/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/player/SphericalVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/SphericalVideoPlayer;


# direct methods
.method constructor <init>(LGeneralFunction/Player/player/SphericalVideoPlayer;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$3;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$3;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->d(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$3;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, p1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;Landroid/os/Message;)I

    .line 506
    :cond_0
    return-void
.end method
