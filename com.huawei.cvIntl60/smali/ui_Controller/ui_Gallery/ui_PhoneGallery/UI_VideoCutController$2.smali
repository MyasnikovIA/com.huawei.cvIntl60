.class Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;I)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iput p2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    .line 427
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AAA Widget Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;Ljava/lang/String;I)V

    .line 428
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->a:I

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    const-string v1, "Widget Width not changed!"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;Ljava/lang/String;I)V

    .line 451
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)LGeneralFunction/i/a/a;

    move-result-object v0

    iget-boolean v8, v0, LGeneralFunction/i/a/a;->a:Z

    .line 434
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)LGeneralFunction/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/i/a/a;->a()V

    .line 435
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 437
    iget-object v10, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    new-instance v0, LGeneralFunction/i/a/a;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    .line 438
    invoke-static {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->h:LGeneralFunction/Player/player/SphericalVideoPlayer;

    .line 440
    invoke-virtual {v4}, LGeneralFunction/Player/player/SphericalVideoPlayer;->getDuration()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v6, v5, Lui_Controller/b/e;->F:I

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d:Lui_Controller/b/e;

    iget v7, v5, Lui_Controller/b/e;->G:I

    const/4 v9, 0x2

    move v5, v3

    invoke-direct/range {v0 .. v9}, LGeneralFunction/i/a/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZIIIIZI)V

    .line 437
    invoke-static {v10, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a;

    .line 446
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)LGeneralFunction/i/a/a;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->c(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)LGeneralFunction/i/a/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a$a;)V

    .line 447
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)LGeneralFunction/i/a/a;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)LGeneralFunction/i/a/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a$b;)V

    .line 449
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController$2;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-static {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;->a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
