.class LGeneralFunction/Player/player/SphericalVideoPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 486
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$2;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$2;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->c(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/i;

    move-result-object v0

    invoke-virtual {v0, p2}, LGeneralFunction/Player/player/i;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
