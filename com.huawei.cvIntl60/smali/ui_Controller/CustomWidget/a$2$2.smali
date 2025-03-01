.class Lui_Controller/CustomWidget/a$2$2;
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
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lui_Controller/CustomWidget/a$2;


# direct methods
.method constructor <init>(Lui_Controller/CustomWidget/a$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lui_Controller/CustomWidget/a$2$2;->b:Lui_Controller/CustomWidget/a$2;

    iput-object p2, p0, Lui_Controller/CustomWidget/a$2$2;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lui_Controller/CustomWidget/a$2$2;->b:Lui_Controller/CustomWidget/a$2;

    iget-object v0, v0, Lui_Controller/CustomWidget/a$2;->f:Lui_Controller/CustomWidget/a;

    iget-object v1, p0, Lui_Controller/CustomWidget/a$2$2;->b:Lui_Controller/CustomWidget/a$2;

    iget-object v1, v1, Lui_Controller/CustomWidget/a$2;->c:Lui_Controller/CustomWidget/a$a;

    iget-object v2, p0, Lui_Controller/CustomWidget/a$2$2;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lui_Controller/CustomWidget/a$2$2;->b:Lui_Controller/CustomWidget/a$2;

    iget v3, v3, Lui_Controller/CustomWidget/a$2;->b:I

    invoke-static {v0, v1, v2, v3}, Lui_Controller/CustomWidget/a;->a(Lui_Controller/CustomWidget/a;Lui_Controller/CustomWidget/a$a;Landroid/graphics/Bitmap;I)V

    .line 344
    return-void
.end method
