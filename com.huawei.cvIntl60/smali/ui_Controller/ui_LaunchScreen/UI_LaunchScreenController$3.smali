.class Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/Player/player/SphericalVideoPlayer$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;


# direct methods
.method constructor <init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$3;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$3;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReturnVideoStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;Ljava/lang/String;I)V

    .line 376
    new-instance v0, La/c/a;

    const/16 v1, 0x2906

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 377
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1, p1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 378
    iget-object v1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$3;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(La/c/a;J)V

    .line 379
    return-void
.end method
