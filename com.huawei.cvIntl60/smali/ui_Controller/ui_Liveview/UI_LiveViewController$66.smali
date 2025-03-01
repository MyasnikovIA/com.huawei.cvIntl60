.class Lui_Controller/ui_Liveview/UI_LiveViewController$66;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZZ)V
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
    .line 1392
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$66;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1396
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$66;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v1, v0, Lui_Controller/b/k;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lui_Controller/b/k;->h:I

    .line 1397
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$66;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2279

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    .line 1399
    return-void
.end method
