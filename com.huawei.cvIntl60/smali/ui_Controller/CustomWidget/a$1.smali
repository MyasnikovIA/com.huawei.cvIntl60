.class Lui_Controller/CustomWidget/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/CustomWidget/a;->a(Ljava/lang/String;IIIILui_Controller/CustomWidget/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lui_Controller/CustomWidget/a$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lui_Controller/CustomWidget/a;


# direct methods
.method constructor <init>(Lui_Controller/CustomWidget/a;ILui_Controller/CustomWidget/a$a;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    iput p2, p0, Lui_Controller/CustomWidget/a$1;->a:I

    iput-object p3, p0, Lui_Controller/CustomWidget/a$1;->b:Lui_Controller/CustomWidget/a$a;

    iput-object p4, p0, Lui_Controller/CustomWidget/a$1;->c:Ljava/lang/String;

    iput p5, p0, Lui_Controller/CustomWidget/a$1;->d:I

    iput p6, p0, Lui_Controller/CustomWidget/a$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v0}, Lui_Controller/CustomWidget/a;->a(Lui_Controller/CustomWidget/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v0}, Lui_Controller/CustomWidget/a;->b(Lui_Controller/CustomWidget/a;)I

    move-result v0

    .line 238
    iget v1, p0, Lui_Controller/CustomWidget/a$1;->a:I

    if-le v1, v0, :cond_1

    iget v1, p0, Lui_Controller/CustomWidget/a$1;->a:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v2}, Lui_Controller/CustomWidget/a;->c(Lui_Controller/CustomWidget/a;)Lui_Controller/CustomWidget/a$b;

    move-result-object v2

    iget v2, v2, Lui_Controller/CustomWidget/a$b;->i:I

    if-gt v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lui_Controller/CustomWidget/a$1;->a:I

    if-ge v1, v0, :cond_3

    iget v1, p0, Lui_Controller/CustomWidget/a$1;->a:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v1}, Lui_Controller/CustomWidget/a;->c(Lui_Controller/CustomWidget/a;)Lui_Controller/CustomWidget/a$b;

    move-result-object v1

    iget v1, v1, Lui_Controller/CustomWidget/a$b;->i:I

    if-le v0, v1, :cond_3

    .line 239
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncLoadMainImageBitmap out of range thus release:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lui_Controller/CustomWidget/a$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lui_Controller/CustomWidget/a;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v0}, Lui_Controller/CustomWidget/a;->d(Lui_Controller/CustomWidget/a;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lui_Controller/CustomWidget/a$1;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v0}, Lui_Controller/CustomWidget/a;->e(Lui_Controller/CustomWidget/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lui_Controller/CustomWidget/a$1$1;

    invoke-direct {v1, p0}, Lui_Controller/CustomWidget/a$1$1;-><init>(Lui_Controller/CustomWidget/a$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 253
    :cond_4
    iget-object v0, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v0}, Lui_Controller/CustomWidget/a;->c(Lui_Controller/CustomWidget/a;)Lui_Controller/CustomWidget/a$b;

    move-result-object v0

    iget-boolean v0, v0, Lui_Controller/CustomWidget/a$b;->f:Z

    if-eqz v0, :cond_5

    .line 255
    iget-object v0, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v0}, Lui_Controller/CustomWidget/a;->f(Lui_Controller/CustomWidget/a;)V

    .line 257
    :cond_5
    iget-object v0, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    iget-object v1, p0, Lui_Controller/CustomWidget/a$1;->c:Ljava/lang/String;

    iget v2, p0, Lui_Controller/CustomWidget/a$1;->d:I

    iget v3, p0, Lui_Controller/CustomWidget/a$1;->e:I

    invoke-static {v0, v1, v2, v3}, Lui_Controller/CustomWidget/a;->a(Lui_Controller/CustomWidget/a;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v1}, Lui_Controller/CustomWidget/a;->g(Lui_Controller/CustomWidget/a;)LGeneralFunction/j;

    move-result-object v1

    invoke-virtual {v1}, LGeneralFunction/j;->a()I

    .line 259
    iget-object v1, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v1}, Lui_Controller/CustomWidget/a;->a(Lui_Controller/CustomWidget/a;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 261
    if-eqz v0, :cond_6

    .line 263
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 265
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 268
    :cond_6
    iget-object v0, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v0}, Lui_Controller/CustomWidget/a;->g(Lui_Controller/CustomWidget/a;)LGeneralFunction/j;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    goto/16 :goto_0

    .line 271
    :cond_7
    iget-object v1, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v1}, Lui_Controller/CustomWidget/a;->c(Lui_Controller/CustomWidget/a;)Lui_Controller/CustomWidget/a$b;

    move-result-object v1

    iget-boolean v1, v1, Lui_Controller/CustomWidget/a$b;->f:Z

    if-eqz v1, :cond_8

    .line 274
    iget-object v1, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v1}, Lui_Controller/CustomWidget/a;->d(Lui_Controller/CustomWidget/a;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lui_Controller/CustomWidget/a$1;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_8
    iget-object v1, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v1}, Lui_Controller/CustomWidget/a;->g(Lui_Controller/CustomWidget/a;)LGeneralFunction/j;

    move-result-object v1

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 277
    iget-object v1, p0, Lui_Controller/CustomWidget/a$1;->f:Lui_Controller/CustomWidget/a;

    invoke-static {v1}, Lui_Controller/CustomWidget/a;->e(Lui_Controller/CustomWidget/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lui_Controller/CustomWidget/a$1$2;

    invoke-direct {v2, p0, v0}, Lui_Controller/CustomWidget/a$1$2;-><init>(Lui_Controller/CustomWidget/a$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
