.class Lui_Controller/ui_Gallery/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Gallery/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/b;


# direct methods
.method constructor <init>(Lui_Controller/ui_Gallery/b;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lui_Controller/ui_Gallery/b$3;->a:Lui_Controller/ui_Gallery/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$3;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0, p1}, Lui_Controller/ui_Gallery/b;->a(Lui_Controller/ui_Gallery/b;I)I

    .line 275
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$3;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0}, Lui_Controller/ui_Gallery/b;->a(Lui_Controller/ui_Gallery/b;)Lui_Controller/ui_Gallery/b$c;

    move-result-object v0

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->d:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lui_Controller/ui_Gallery/b$3;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v1}, Lui_Controller/ui_Gallery/b;->a(Lui_Controller/ui_Gallery/b;)Lui_Controller/ui_Gallery/b$c;

    move-result-object v1

    iget-object v1, v1, Lui_Controller/ui_Gallery/b$c;->g:Lui_Controller/ui_Gallery/b$a;

    invoke-interface {v1, p1, v0}, Lui_Controller/ui_Gallery/b$a;->a(ILandroid/graphics/Bitmap;)V

    .line 277
    return-void
.end method
