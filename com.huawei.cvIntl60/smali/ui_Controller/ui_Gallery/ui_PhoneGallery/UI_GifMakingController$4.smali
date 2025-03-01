.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/Player/GifGenerate/GifGenerate$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$4;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 412
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$4;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gifGenerateStatusChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;Ljava/lang/String;I)V

    .line 413
    new-instance v0, La/c/a;

    const/16 v1, 0x2b0b

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 414
    const-string v1, "GifGenerateStatus"

    invoke-virtual {v0, v1, p1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 415
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController$4;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;->a(La/c/a;J)V

    .line 416
    return-void
.end method
