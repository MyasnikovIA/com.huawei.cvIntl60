.class Lui_Controller/CustomWidget/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/CustomWidget/a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/CustomWidget/a$2;


# direct methods
.method constructor <init>(Lui_Controller/CustomWidget/a$2;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lui_Controller/CustomWidget/a$2$1;->a:Lui_Controller/CustomWidget/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lui_Controller/CustomWidget/a$2$1;->a:Lui_Controller/CustomWidget/a$2;

    iget-object v1, v0, Lui_Controller/CustomWidget/a$2;->f:Lui_Controller/CustomWidget/a;

    iget-object v0, p0, Lui_Controller/CustomWidget/a$2$1;->a:Lui_Controller/CustomWidget/a$2;

    iget-object v2, v0, Lui_Controller/CustomWidget/a$2;->c:Lui_Controller/CustomWidget/a$a;

    iget-object v0, p0, Lui_Controller/CustomWidget/a$2$1;->a:Lui_Controller/CustomWidget/a$2;

    iget-object v0, v0, Lui_Controller/CustomWidget/a$2;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v0}, Lui_Controller/CustomWidget/a;->i(Lui_Controller/CustomWidget/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lui_Controller/CustomWidget/a$2$1;->a:Lui_Controller/CustomWidget/a$2;

    iget v3, v3, Lui_Controller/CustomWidget/a$2;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lui_Controller/CustomWidget/a$2$1;->a:Lui_Controller/CustomWidget/a$2;

    iget v3, v3, Lui_Controller/CustomWidget/a$2;->b:I

    invoke-static {v1, v2, v0, v3}, Lui_Controller/CustomWidget/a;->a(Lui_Controller/CustomWidget/a;Lui_Controller/CustomWidget/a$a;Landroid/graphics/Bitmap;I)V

    .line 308
    return-void
.end method
