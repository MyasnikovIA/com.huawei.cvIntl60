.class Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/f/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->c(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Long;

.field final synthetic d:Lui_Controller/ui_Gallery/ui_PhoneGallery/f;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/f;IILjava/lang/Long;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;->d:Lui_Controller/ui_Gallery/ui_PhoneGallery/f;

    iput p2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;->a:I

    iput p3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;->b:I

    iput-object p4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;->c:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;->d:Lui_Controller/ui_Gallery/ui_PhoneGallery/f;

    const-string v1, "Cut video End"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/f;Ljava/lang/String;I)V

    .line 378
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;->d:Lui_Controller/ui_Gallery/ui_PhoneGallery/f;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/f;)Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->g:LGeneralFunction/f/a/c;

    .line 379
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;->d:Lui_Controller/ui_Gallery/ui_PhoneGallery/f;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/f;)Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    move-result-object v0

    iget-boolean v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->e:Z

    if-nez v0, :cond_0

    .line 381
    new-instance v0, La/c/a;

    const/16 v1, 0x2b46

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 382
    const-string v1, "lStartTime"

    iget v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;->a:I

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 383
    const-string v1, "lEndTime"

    iget v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;->b:I

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 384
    const-string v1, "dlCurrentTime"

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, La/c/a;->a(Ljava/lang/String;J)V

    .line 385
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/f$1;->d:Lui_Controller/ui_Gallery/ui_PhoneGallery/f;

    invoke-static {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/f;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/f;)Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(La/c/a;)V

    .line 387
    :cond_0
    return-void
.end method
