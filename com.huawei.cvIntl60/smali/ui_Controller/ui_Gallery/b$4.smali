.class Lui_Controller/ui_Gallery/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$b;


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
    .line 280
    iput-object p1, p0, Lui_Controller/ui_Gallery/b$4;->a:Lui_Controller/ui_Gallery/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lui_Controller/ui_Gallery/b$4;->a:Lui_Controller/ui_Gallery/b;

    invoke-static {v0}, Lui_Controller/ui_Gallery/b;->a(Lui_Controller/ui_Gallery/b;)Lui_Controller/ui_Gallery/b$c;

    move-result-object v0

    iget-object v0, v0, Lui_Controller/ui_Gallery/b$c;->h:Lui_Controller/ui_Gallery/b$b;

    invoke-interface {v0, p1, p2}, Lui_Controller/ui_Gallery/b$b;->a(ILandroid/graphics/Bitmap;)V

    .line 284
    return-void
.end method
