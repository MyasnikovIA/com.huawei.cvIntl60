.class Lui_Controller/ui_Liveview/UI_LiveViewController$64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/Player/player/SphericalVideoPlayer$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Liveview/UI_LiveViewController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$64;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 1181
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$64;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, "returnVideoStatus"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Ljava/lang/String;I)V

    .line 1182
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$64;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->f:LGeneralFunction/Player/player/SphericalVideoPlayer;

    if-eqz v0, :cond_0

    .line 1184
    new-instance v0, La/c/a;

    const/16 v1, 0x220e

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 1185
    const-string v1, "sphericalVideoPlayerStatus"

    invoke-virtual {v0, v1, p1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1186
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$64;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;J)V

    .line 1188
    :cond_0
    return-void
.end method
