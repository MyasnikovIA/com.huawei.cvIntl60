.class Lui_Controller/CustomWidget/a$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/CustomWidget/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lui_Controller/CustomWidget/a$1;


# direct methods
.method constructor <init>(Lui_Controller/CustomWidget/a$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lui_Controller/CustomWidget/a$1$2;->b:Lui_Controller/CustomWidget/a$1;

    iput-object p2, p0, Lui_Controller/CustomWidget/a$1$2;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncLoadMainImageBitmap post:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/CustomWidget/a$1$2;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/CustomWidget/a$1$2;->b:Lui_Controller/CustomWidget/a$1;

    iget v1, v1, Lui_Controller/CustomWidget/a$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lui_Controller/CustomWidget/a;->a(Ljava/lang/String;I)V

    .line 281
    iget-object v0, p0, Lui_Controller/CustomWidget/a$1$2;->b:Lui_Controller/CustomWidget/a$1;

    iget-object v0, v0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    iget-object v1, p0, Lui_Controller/CustomWidget/a$1$2;->b:Lui_Controller/CustomWidget/a$1;

    iget-object v1, v1, Lui_Controller/CustomWidget/a$1;->b:Lui_Controller/CustomWidget/a$a;

    iget-object v2, p0, Lui_Controller/CustomWidget/a$1$2;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lui_Controller/CustomWidget/a$1$2;->b:Lui_Controller/CustomWidget/a$1;

    iget v3, v3, Lui_Controller/CustomWidget/a$1;->a:I

    invoke-static {v0, v1, v2, v3}, Lui_Controller/CustomWidget/a;->a(Lui_Controller/CustomWidget/a;Lui_Controller/CustomWidget/a$a;Landroid/graphics/Bitmap;I)V

    .line 282
    return-void
.end method
