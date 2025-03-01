.class public Lui_Controller/ui_Gallery/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Gallery/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

.field public d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

.field public e:LGeneralFunction/Player/player/SphericalVideoPlayer;

.field public f:LGeneralFunction/e/d;

.field public g:Lui_Controller/ui_Gallery/b$a;

.field public h:Lui_Controller/ui_Gallery/b$b;

.field public i:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lui_Controller/ui_Gallery/b$c;->a:I

    .line 32
    iput v1, p0, Lui_Controller/ui_Gallery/b$c;->b:I

    .line 33
    iput-object v0, p0, Lui_Controller/ui_Gallery/b$c;->c:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    .line 34
    iput-object v0, p0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    .line 35
    iput-object v0, p0, Lui_Controller/ui_Gallery/b$c;->e:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 37
    iput-object v0, p0, Lui_Controller/ui_Gallery/b$c;->g:Lui_Controller/ui_Gallery/b$a;

    .line 38
    iput-object v0, p0, Lui_Controller/ui_Gallery/b$c;->h:Lui_Controller/ui_Gallery/b$b;

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_Gallery/b$c;->i:Ljava/lang/Boolean;

    .line 44
    return-void
.end method
