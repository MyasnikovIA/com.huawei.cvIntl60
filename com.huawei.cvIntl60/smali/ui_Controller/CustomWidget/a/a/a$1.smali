.class Lui_Controller/CustomWidget/a/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui_Controller/CustomWidget/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/CustomWidget/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/CustomWidget/a/a/a;


# direct methods
.method constructor <init>(Lui_Controller/CustomWidget/a/a/a;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lui_Controller/CustomWidget/a/a/a$1;->a:Lui_Controller/CustomWidget/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 312
    if-eqz p2, :cond_2

    .line 314
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a$1;->a:Lui_Controller/CustomWidget/a/a/a;

    invoke-static {v0}, Lui_Controller/CustomWidget/a/a/a;->a(Lui_Controller/CustomWidget/a/a/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 318
    if-eqz v0, :cond_2

    .line 319
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 320
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/b;

    check-cast v0, Lui_Controller/CustomWidget/a/a/b;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 332
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a$1;->a:Lui_Controller/CustomWidget/a/a/a;

    invoke-static {v0}, Lui_Controller/CustomWidget/a/a/a;->a(Lui_Controller/CustomWidget/a/a/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 333
    if-eqz v0, :cond_1

    .line 335
    if-ne v0, p2, :cond_1

    .line 337
    iget-object v3, p0, Lui_Controller/CustomWidget/a/a/a$1;->a:Lui_Controller/CustomWidget/a/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Release bitmap link! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-static {v3, v0, v4}, Lui_Controller/CustomWidget/a/a/a;->a(Lui_Controller/CustomWidget/a/a/a;Ljava/lang/String;I)V

    .line 338
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/b;

    iget-object v0, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 330
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 343
    :cond_2
    return-void
.end method
