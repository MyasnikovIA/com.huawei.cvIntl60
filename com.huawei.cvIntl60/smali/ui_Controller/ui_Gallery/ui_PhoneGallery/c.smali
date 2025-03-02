.class public Lui_Controller/ui_Gallery/ui_PhoneGallery/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

.field private b:Lui_Controller/ui_Gallery/ui_PhoneGallery/e;


# direct methods
.method public constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 47
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/e;

    .line 57
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 58
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;

    invoke-direct {v0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/e;

    .line 59
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1167
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d()V

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterGallerySingleGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v1, v1, Lui_Controller/b/e;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 1170
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x420

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 1171
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->A(Z)V

    .line 1173
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    if-ne v0, v6, :cond_0

    .line 1175
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aF()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1177
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-boolean v4, v0, Lui_Controller/b/e;->x:Z

    .line 1179
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(Z)V

    .line 1180
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c(Z)V

    .line 1181
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(Z)V

    .line 1182
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x:Z

    .line 1186
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->r:Z

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 1189
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->t:I

    invoke-static {v0, v1}, LGeneralFunction/e/e;->a(Ljava/util/ArrayList;I)LGeneralFunction/e/b;

    move-result-object v0

    .line 1190
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 1192
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v5, v0, Lui_Controller/b/e;->s:I

    .line 1195
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->s:I

    .line 1197
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(I)V

    .line 1199
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->h(I)V

    .line 1200
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u(Z)V

    .line 1201
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 1202
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Z)V

    .line 1204
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v1, v0}, LGeneralFunction/e/d;->i(I)Z

    move-result v1

    .line 1205
    if-eqz v1, :cond_4

    .line 1207
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v1, v0}, LGeneralFunction/e/d;->a(I)I

    move-result v0

    .line 1208
    if-nez v0, :cond_3

    .line 1210
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4, v4, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 1216
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x423

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterGallerySingleGroup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ah()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 1219
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ah()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1245
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->A:Z

    if-eqz v0, :cond_2

    .line 1247
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1248
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1249
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->B:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->v:Landroid/graphics/Bitmap;

    .line 1250
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Landroid/graphics/Bitmap;)V

    .line 1251
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->m(Z)V

    .line 1252
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    .line 1254
    :cond_2
    return-void

    .line 1214
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4, v5, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto :goto_0

    .line 1222
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ad()V

    .line 1223
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/e;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a()V

    .line 1224
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ae()V

    goto :goto_1

    .line 1228
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ad()V

    .line 1229
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/e;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a()V

    .line 1230
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ae()V

    .line 1232
    new-instance v0, La/c/a;

    const/16 v1, 0x2389

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 1233
    const-string v1, "360PlayerStatus"

    invoke-virtual {v0, v1, v4}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1234
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(La/c/a;)V

    goto :goto_1

    .line 1241
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4, v5, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 1242
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    goto :goto_1

    .line 1219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 51
    const-string v0, "UI_PhoneGalleryHandler"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1258
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v1, 0x7

    iput v1, v0, Lui_Controller/b/e;->O:I

    .line 1259
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->A(Z)V

    .line 1260
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aq()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1262
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ap()V

    .line 1264
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o()V

    .line 1265
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x410

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 1267
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x:Z

    if-eqz v0, :cond_1

    .line 1269
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v2, v0, Lui_Controller/b/e;->d:I

    .line 1270
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->f()V

    .line 1271
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x:Z

    .line 1274
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u(Z)V

    .line 1275
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    .line 1276
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->B(Z)V

    .line 1277
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->P()V

    .line 1278
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->af()V

    .line 1279
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 1280
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 1281
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 1282
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->V()V

    .line 1283
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->at()V

    .line 1285
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w:Z

    if-eqz v0, :cond_2

    .line 1287
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aH()V

    .line 1288
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w:Z

    .line 1291
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    .line 1292
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 1293
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Z)V

    .line 1295
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->A:Z

    .line 1296
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D:Z

    .line 1297
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v4, v0, Lui_Controller/b/e;->V:I

    .line 1298
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->au()V

    .line 1299
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0, v4}, LGeneralFunction/d;->a(Landroid/content/Context;Z)Z

    .line 1300
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d()V

    .line 1305
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->v()V

    .line 1306
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->P()V

    .line 1307
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const-wide/32 v6, 0xfffffff

    const-wide/16 v4, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 64
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 335
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 71
    :sswitch_0
    invoke-static {}, LGeneralFunction/m/a;->v()V

    .line 72
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v2, v3, Lui_Controller/b/e;->f:I

    .line 73
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e()V

    .line 74
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->u()Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    const-string v0, "IsDatabaseCreateDone false"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 78
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x234e

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto :goto_0

    .line 80
    :cond_1
    const-string v3, "mode"

    invoke-virtual {v0, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x420

    if-ne v0, v3, :cond_4

    .line 82
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v1

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v3}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 84
    new-instance v0, La/c/a;

    const/16 v1, 0x2305

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 85
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v1, v1, Lui_Controller/b/e;->r:Z

    if-eqz v1, :cond_2

    .line 87
    const-string v1, "SelectIndex"

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 102
    :goto_1
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 103
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 104
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 105
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->f()V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->d:I

    if-ne v1, v8, :cond_3

    .line 93
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    invoke-virtual {v1, v2, v3}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 94
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    invoke-virtual {v1, v2, v3}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 96
    const-string v1, "SelectIndex"

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 99
    :cond_3
    const-string v1, "SelectIndex"

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 107
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->q:Z

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 110
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    .line 111
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 112
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g()V

    goto/16 :goto_0

    .line 116
    :cond_5
    const-string v0, "bEnterExtendSingle false"

    const/4 v3, 0x4

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 117
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-boolean v2, v0, Lui_Controller/b/e;->r:Z

    .line 119
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    .line 120
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 121
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 122
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v1, v0, Lui_Controller/b/e;->d:I

    .line 124
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 125
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 127
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v1, 0x7

    iput v1, v0, Lui_Controller/b/e;->O:I

    .line 128
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->as()V

    .line 129
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    .line 131
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 133
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g()V

    goto/16 :goto_0

    .line 139
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->z:Z

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->c()V

    .line 141
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/16 v1, 0x8

    iput v1, v0, Lui_Controller/b/e;->O:I

    .line 142
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    .line 143
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o()V

    .line 145
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x23c0

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 151
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ab()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2100

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 157
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x23c0

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 163
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-boolean v0, v0, Lui_Controller/b/j;->f:Z

    if-nez v0, :cond_7

    .line 164
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2100

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 167
    :cond_7
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->c()V

    .line 168
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->af()V

    .line 169
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->f:Z

    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const-class v3, Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x100

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2, v3, v4, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 172
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 173
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v1, v0, Lui_Controller/b/e;->d:I

    goto/16 :goto_0

    .line 178
    :sswitch_4
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->c()V

    .line 179
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const-class v4, Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v4, 0x800

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3, v4, v5, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 181
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 182
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 183
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v1, v0, Lui_Controller/b/e;->d:I

    goto/16 :goto_0

    .line 188
    :sswitch_5
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 189
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const-string v2, "SelectIndex"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lui_Controller/b/e;->s:I

    .line 191
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a()V

    goto/16 :goto_0

    .line 196
    :sswitch_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ac()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    .line 198
    invoke-virtual {v0}, LGeneralFunction/e/d;->e()I

    move-result v0

    if-lez v0, :cond_8

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leaving single status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ah()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    .line 202
    invoke-virtual {v2}, LGeneralFunction/e/d;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 203
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2306

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 207
    :cond_8
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Z)V

    .line 208
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D(Z)V

    .line 209
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->C(Z)V

    .line 210
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/16 v2, 0x8

    iput v2, v0, Lui_Controller/b/e;->O:I

    .line 211
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x(Z)V

    .line 212
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->as()V

    .line 213
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    .line 214
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 215
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x23ba

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 219
    :sswitch_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ab()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 222
    :cond_9
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->b()V

    goto/16 :goto_0

    .line 226
    :cond_a
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x23ba

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 231
    :sswitch_8
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->z:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->e:Z

    .line 234
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 236
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v1, v0, Lui_Controller/b/j;->d:Z

    goto/16 :goto_0

    .line 244
    :sswitch_9
    const-string v3, "usb_permission"

    invoke-virtual {v0, v3}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "has permission, need to switch to live view"

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->d:Z

    .line 247
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->c()V

    .line 248
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/16 v1, 0x8

    iput v1, v0, Lui_Controller/b/e;->O:I

    .line 249
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    .line 250
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o()V

    .line 251
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x23c0

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 257
    :sswitch_a
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0091

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f00

    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 263
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->A:Z

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->ah:I

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->am:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 269
    :cond_b
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 271
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->ah:I

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->am:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 275
    :cond_c
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->ah:I

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->am:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(ILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 282
    :sswitch_c
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d()V

    goto/16 :goto_0

    .line 286
    :sswitch_d
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 287
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0130

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 288
    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0127

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 289
    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0126

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    .line 286
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 295
    :sswitch_e
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 296
    const-string v1, "jp.naver.line.android"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->startActivity(Landroid/content/Intent;)V

    .line 299
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->f:I

    if-lez v0, :cond_0

    .line 300
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x235e

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    .line 301
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 307
    :sswitch_f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 313
    :sswitch_10
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aB()V

    goto/16 :goto_0

    .line 319
    :sswitch_11
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c(Z)V

    goto/16 :goto_0

    .line 324
    :sswitch_12
    invoke-static {}, LGeneralFunction/m/a;->t()Z

    move-result v0

    if-nez v0, :cond_d

    .line 326
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aD()V

    goto/16 :goto_0

    .line 330
    :cond_d
    invoke-static {v1}, LGeneralFunction/m/a;->b(Z)V

    goto/16 :goto_0

    .line 337
    :sswitch_13
    invoke-virtual {p0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->b(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 344
    :sswitch_14
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/e;

    invoke-virtual {v0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x2100 -> :sswitch_3
        0x2106 -> :sswitch_4
        0x2305 -> :sswitch_5
        0x2306 -> :sswitch_6
        0x2309 -> :sswitch_d
        0x230a -> :sswitch_e
        0x230f -> :sswitch_b
        0x23ba -> :sswitch_7
        0x23c0 -> :sswitch_2
        0x2f01 -> :sswitch_0
        0x2f0a -> :sswitch_a
        0x2f0b -> :sswitch_1
        0x2f0e -> :sswitch_10
        0x2f0f -> :sswitch_11
        0x2f10 -> :sswitch_11
        0x2f11 -> :sswitch_12
        0x2f12 -> :sswitch_f
        0x4804 -> :sswitch_8
        0x4805 -> :sswitch_9
        0xf004 -> :sswitch_c
    .end sparse-switch

    .line 335
    :sswitch_data_1
    .sparse-switch
        0x410 -> :sswitch_13
        0x420 -> :sswitch_14
        0x421 -> :sswitch_14
        0x423 -> :sswitch_14
        0x424 -> :sswitch_14
        0x425 -> :sswitch_14
    .end sparse-switch

    .line 289
    :array_0
    .array-data 4
        0x230a
        0x0
    .end array-data
.end method

.method public b(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v7, 0x4

    const-wide/32 v10, 0xfffffff

    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI_PhoneGalleryMultiMain handleMessage: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {p0, v1, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 356
    new-instance v1, La/c/a;

    invoke-direct {v1, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 358
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1074
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 361
    :sswitch_1
    const-string v0, "MSG_UI_GALLERY_MULTI_WAIT_DATABASE_INIT_DONE"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 362
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    const-string v0, "DatabaseCreateDone"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 365
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 366
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 368
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x234e

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;J)V

    goto :goto_0

    .line 374
    :sswitch_2
    const-string v0, "MSG_UI_MODE_CHANGE_MODE_DONE"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 377
    :sswitch_3
    const-string v0, "ACTIVITY_CONFIGURATION_CHANGED"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 380
    :sswitch_4
    const-string v1, "ACTIVITY_RESUME"

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 381
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aC()V

    .line 382
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    .line 385
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-boolean v1, v1, Lui_Controller/b/j;->d:Z

    if-eqz v1, :cond_2

    .line 386
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 387
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v0, v1, Lui_Controller/b/j;->d:Z

    .line 389
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x480c

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 394
    :sswitch_5
    const-string v1, "ACTIVITY_PAUSE"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 395
    invoke-static {v2}, LGeneralFunction/m/a;->a(Z)V

    .line 396
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v1}, La/c/d;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v2, La/c/a;

    const/16 v3, 0x480d

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 399
    :cond_3
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 401
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->t(Z)V

    .line 404
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    goto/16 :goto_0

    .line 409
    :sswitch_6
    const-string v0, "ACTIVITY_STOP"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 412
    :sswitch_7
    const-string v0, "ACTIVITY_DESTROY"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 421
    :sswitch_8
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v1}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 422
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput v0, v1, Lui_Controller/b/h;->a:I

    goto/16 :goto_0

    .line 425
    :sswitch_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 426
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->finish()V

    goto/16 :goto_0

    .line 431
    :sswitch_a
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->f:I

    if-eqz v0, :cond_6

    .line 435
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 437
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-boolean v2, v0, Lui_Controller/b/e;->y:Z

    .line 438
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->d()V

    .line 448
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 440
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->s(Z)V

    goto :goto_1

    .line 446
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c()V

    goto :goto_1

    .line 452
    :sswitch_b
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 453
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v0, v1, Lui_Controller/b/e;->f:I

    .line 454
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1, v0}, Lui_Controller/CustomWidget/a/a/a;->c(I)V

    .line 455
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->c()V

    .line 456
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->f(Z)V

    .line 457
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 461
    :sswitch_c
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->e:I

    .line 464
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_9

    .line 468
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 470
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x5

    iput v3, v1, Lui_Controller/b/e;->e:I

    move v6, v0

    .line 472
    :goto_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 474
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 475
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IZIILjava/util/ArrayList;)V

    .line 472
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 478
    :cond_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/util/ArrayList;)V

    .line 484
    :cond_8
    :goto_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->r(Z)V

    goto/16 :goto_0

    .line 480
    :cond_9
    if-nez v1, :cond_8

    goto :goto_3

    .line 489
    :sswitch_d
    const-string v0, "MSG_FILE_PHONE_DELETE_A_FILE_DONE"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 491
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->h()V

    .line 492
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->b()V

    .line 494
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->d()LGeneralFunction/e/b;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 497
    const-string v0, "New GridView List"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 498
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->h()V

    .line 499
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->b()V

    goto/16 :goto_0

    .line 505
    :sswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_FILE_EXCUTE_ACTION_DONE lActionType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 506
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->a()V

    .line 508
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->e:I

    .line 510
    const/4 v3, 0x5

    if-ne v1, v3, :cond_a

    .line 512
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 513
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 514
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 515
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1, v0, v2}, Lui_Controller/CustomWidget/a/a/a;->a(ZZ)Z

    .line 516
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(I)V

    .line 517
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v0, v1, Lui_Controller/b/e;->f:I

    .line 518
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1, v0}, Lui_Controller/CustomWidget/a/a/a;->c(I)V

    .line 519
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->c()V

    .line 521
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 522
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 523
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v0, v1, Lui_Controller/b/e;->e:I

    .line 524
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v2, La/c/a;

    const/16 v3, 0x2320

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 527
    :cond_a
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->k()I

    move-result v1

    if-nez v1, :cond_b

    .line 529
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 530
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v0, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->z:Z

    .line 533
    :cond_b
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->u:I

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c(I)V

    .line 535
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->f(Z)V

    .line 537
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-boolean v0, v1, Lui_Controller/b/e;->z:Z

    goto/16 :goto_0

    .line 542
    :sswitch_f
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x5

    iput v3, v1, Lui_Controller/b/e;->f:I

    .line 543
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lui_Controller/CustomWidget/a/a/a;->c(I)V

    .line 544
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 545
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->f(Z)V

    .line 546
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->r(Z)V

    goto/16 :goto_0

    .line 550
    :sswitch_10
    const-string v0, "Press Share Tab"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 551
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x232f

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 554
    :sswitch_11
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v8, v0, Lui_Controller/b/e;->f:I

    .line 555
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0, v8}, Lui_Controller/CustomWidget/a/a/a;->c(I)V

    .line 556
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 557
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 558
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 561
    :sswitch_12
    const-string v1, "Press Share Confirm"

    invoke-direct {p0, v1, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 566
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->s()V

    .line 568
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v1}, La/b/b/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 570
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->t(Z)V

    .line 579
    :goto_4
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    goto/16 :goto_0

    .line 574
    :cond_c
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 575
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0137

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 576
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a008b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a0093

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    new-array v7, v8, [I

    fill-array-data v7, :array_0

    move v3, v2

    .line 574
    invoke-static/range {v1 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto :goto_4

    .line 584
    :sswitch_13
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v0, v1, Lui_Controller/b/e;->f:I

    .line 585
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1, v0}, Lui_Controller/CustomWidget/a/a/a;->c(I)V

    .line 586
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 587
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->c()V

    .line 588
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 591
    :sswitch_14
    const-string v0, "Press Delete Tab"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 592
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v2, v0, Lui_Controller/b/e;->f:I

    .line 593
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0, v2}, Lui_Controller/CustomWidget/a/a/a;->c(I)V

    .line 594
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 595
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 599
    :sswitch_15
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->e()I

    move-result v1

    .line 600
    if-le v1, v2, :cond_d

    .line 602
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 603
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0086

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 604
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a008b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a008e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    new-array v7, v8, [I

    fill-array-data v7, :array_1

    const v9, 0x7f0f0102

    move v3, v2

    move v8, v2

    .line 602
    invoke-static/range {v1 .. v9}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    goto/16 :goto_0

    .line 608
    :cond_d
    if-ne v1, v2, :cond_e

    .line 610
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 611
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0087

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 612
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a008b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a008e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    new-array v7, v8, [I

    fill-array-data v7, :array_2

    const v9, 0x7f0f0102

    move v3, v2

    move v8, v2

    .line 610
    invoke-static/range {v1 .. v9}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    goto/16 :goto_0

    .line 618
    :cond_e
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 619
    const-string v0, "No Select"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 623
    :sswitch_16
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v0, v1, Lui_Controller/b/e;->f:I

    .line 624
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1, v0}, Lui_Controller/CustomWidget/a/a/a;->c(I)V

    .line 625
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 626
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->c()V

    .line 627
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 630
    :sswitch_17
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-boolean v2, v1, Lui_Controller/b/e;->z:Z

    .line 631
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 632
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->j()I

    move-result v2

    iput v2, v1, Lui_Controller/b/e;->u:I

    .line 634
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 635
    :goto_5
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 637
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1, v0}, Lui_Controller/CustomWidget/a/a/a;->f(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 639
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 642
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "psDeleteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 644
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    if-ne v0, v8, :cond_11

    .line 646
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x2320

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 649
    :cond_11
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x2320

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 652
    :sswitch_18
    const-string v1, "Delete Cancel"

    invoke-direct {p0, v1, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 653
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 654
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 659
    :sswitch_19
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2102

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 662
    :sswitch_1a
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 670
    :sswitch_1b
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-boolean v1, v1, Lui_Controller/b/b;->j:Z

    if-eqz v1, :cond_12

    .line 672
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iput v2, v1, Lui_Controller/b/b;->c:I

    .line 673
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->a:Lui_Controller/ui_Gallery/a/a;

    iput v2, v1, Lui_Controller/ui_Gallery/a/a;->f:I

    .line 674
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget v3, v3, Lui_Controller/b/b;->c:I

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v5, v5, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v6, v6, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v6, v6, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4, v5, v6}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    .line 675
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 676
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 678
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->a()V

    .line 679
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 680
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 682
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iput-boolean v0, v1, Lui_Controller/b/b;->j:Z

    .line 684
    :cond_12
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget v1, v1, Lui_Controller/b/b;->c:I

    if-eq v1, v2, :cond_13

    .line 687
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-boolean v4, v4, Lui_Controller/b/b;->i:Z

    .line 689
    invoke-virtual {v3, v4}, Lui_Controller/b/b;->a(Z)Z

    move-result v3

    iput-boolean v3, v1, Lui_Controller/b/b;->i:Z

    .line 691
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iput v2, v1, Lui_Controller/b/b;->c:I

    .line 692
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->a:Lui_Controller/ui_Gallery/a/a;

    iput v2, v1, Lui_Controller/ui_Gallery/a/a;->f:I

    .line 693
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget v3, v3, Lui_Controller/b/b;->c:I

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v5, v5, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v6, v6, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v6, v6, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4, v5, v6}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    .line 694
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 695
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 697
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->a()V

    .line 698
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 699
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 706
    :goto_6
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 707
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 708
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(Z)V

    .line 709
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    goto/16 :goto_0

    .line 704
    :cond_13
    const-string v1, "Do not need sort"

    invoke-direct {p0, v1, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    goto :goto_6

    .line 712
    :sswitch_1c
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-boolean v1, v1, Lui_Controller/b/b;->j:Z

    if-eqz v1, :cond_14

    .line 713
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iput v8, v1, Lui_Controller/b/b;->c:I

    .line 714
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->a:Lui_Controller/ui_Gallery/a/a;

    iput v8, v1, Lui_Controller/ui_Gallery/a/a;->f:I

    .line 715
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget v2, v2, Lui_Controller/b/b;->c:I

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v5, v5, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v1, v2, v3, v4, v5}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    .line 716
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v1, v2, v3}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 717
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v1, v2, v3}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 719
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->a()V

    .line 720
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 721
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 723
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iput-boolean v0, v1, Lui_Controller/b/b;->j:Z

    .line 725
    :cond_14
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget v0, v0, Lui_Controller/b/b;->c:I

    if-eq v0, v8, :cond_15

    .line 728
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-boolean v2, v2, Lui_Controller/b/b;->i:Z

    .line 730
    invoke-virtual {v1, v2}, Lui_Controller/b/b;->a(Z)Z

    move-result v1

    iput-boolean v1, v0, Lui_Controller/b/b;->i:Z

    .line 732
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iput v8, v0, Lui_Controller/b/b;->c:I

    .line 733
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->a:Lui_Controller/ui_Gallery/a/a;

    iput v8, v0, Lui_Controller/ui_Gallery/a/a;->f:I

    .line 734
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget v1, v1, Lui_Controller/b/b;->c:I

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2, v3, v4}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    .line 735
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 736
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 738
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->a()V

    .line 739
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 740
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 746
    :goto_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 747
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    goto/16 :goto_0

    .line 744
    :cond_15
    const-string v0, "Do not need sort"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    goto :goto_7

    .line 750
    :sswitch_1d
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->g()I

    move-result v0

    if-ne v0, v8, :cond_16

    .line 752
    const-string v0, "Can\'t Press Select All"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 753
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 757
    :cond_16
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0, v2, v2}, Lui_Controller/CustomWidget/a/a/a;->a(ZZ)Z

    .line 758
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(I)V

    .line 759
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 763
    :sswitch_1e
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->g()I

    move-result v1

    if-nez v1, :cond_17

    .line 765
    const-string v0, "Cant Press Unselect All"

    invoke-direct {p0, v0, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 766
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 770
    :cond_17
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1, v0, v2}, Lui_Controller/CustomWidget/a/a/a;->a(ZZ)Z

    .line 771
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(I)V

    .line 772
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 776
    :sswitch_1f
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 779
    :sswitch_20
    const-string v0, "header id"

    invoke-virtual {v1, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v5

    .line 780
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v4, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    const-wide/16 v6, -0x1

    move v8, v2

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lui_Controller/CustomWidget/a/a/a;->a(IJZZ)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 782
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(I)V

    .line 783
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 788
    :sswitch_21
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->j()I

    move-result v3

    invoke-virtual {v1, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(I)V

    .line 789
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v8, v1, Lui_Controller/b/e;->d:I

    .line 791
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(Z)V

    .line 793
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    invoke-virtual {v1, v2, v3}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 794
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    invoke-virtual {v1, v2, v3}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 796
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->a()V

    .line 797
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 798
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 799
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 800
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 802
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    .line 804
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->h:I

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->f(I)V

    goto/16 :goto_0

    .line 809
    :sswitch_22
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(I)V

    .line 810
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v2, 0x3

    iput v2, v1, Lui_Controller/b/e;->d:I

    .line 811
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d(Z)V

    .line 813
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 814
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 816
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->a()V

    .line 817
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 818
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 819
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 821
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->i:I

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->f(I)V

    goto/16 :goto_0

    .line 828
    :sswitch_23
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->j()I

    move-result v3

    invoke-virtual {v1, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(I)V

    .line 829
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v2, v1, Lui_Controller/b/e;->d:I

    .line 830
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 831
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 833
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->a()V

    .line 834
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 835
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 836
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 837
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 838
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(Z)V

    .line 839
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o:Z

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(Z)V

    .line 841
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    .line 843
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->g:I

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->f(I)V

    goto/16 :goto_0

    .line 849
    :sswitch_24
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v1}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 850
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0171

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0172

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 851
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a008b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a008d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    new-array v7, v8, [I

    fill-array-data v7, :array_3

    move v3, v2

    move v8, v2

    .line 850
    invoke-static/range {v1 .. v8}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    goto/16 :goto_0

    .line 858
    :sswitch_25
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v1}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 859
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput v0, v1, Lui_Controller/b/h;->a:I

    .line 860
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lui_Controller/b/e;->aa:Landroid/net/Uri;

    goto/16 :goto_0

    .line 863
    :sswitch_26
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lui_Controller/b/e;->ab:Ljava/lang/String;

    .line 864
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aG()V

    goto/16 :goto_0

    .line 867
    :sswitch_27
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->r:Z

    .line 868
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->q(Z)V

    .line 869
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 870
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x5012

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(I)V

    goto/16 :goto_0

    .line 873
    :sswitch_28
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-boolean v0, v1, Lui_Controller/b/e;->x:Z

    .line 874
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c(Z)V

    .line 875
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(Z)V

    .line 876
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v0, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->r:Z

    .line 877
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget v2, v2, Lui_Controller/b/b;->c:I

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v5, v5, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v1, v2, v3, v4, v5}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    .line 883
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->p:Z

    if-eqz v1, :cond_18

    .line 885
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->q:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->r:Z

    if-nez v1, :cond_18

    .line 887
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->q(Z)V

    .line 888
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 892
    :cond_18
    invoke-static {v0}, LGeneralFunction/m/a;->b(Z)V

    goto/16 :goto_0

    .line 895
    :sswitch_29
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v0, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->q:Z

    .line 896
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v0, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->r:Z

    .line 897
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget v3, v3, Lui_Controller/b/b;->c:I

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v5, v5, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v6, v6, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v6, v6, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4, v5, v6}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    .line 902
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->p:Z

    if-eqz v1, :cond_0

    .line 904
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g()V

    .line 905
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aF()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 907
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c(Z)V

    .line 909
    :cond_19
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->q:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->r:Z

    if-nez v1, :cond_0

    .line 911
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->q(Z)V

    .line 912
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    goto/16 :goto_0

    .line 917
    :sswitch_2a
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v1, 0x6

    iput v1, v0, Lui_Controller/b/e;->f:I

    .line 918
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Z)V

    .line 919
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x5006

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(I)V

    goto/16 :goto_0

    .line 922
    :sswitch_2b
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v1, 0x6

    iput v1, v0, Lui_Controller/b/e;->f:I

    .line 923
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Z)V

    .line 924
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x5009

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(I)V

    goto/16 :goto_0

    .line 927
    :sswitch_2c
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v0, v1, Lui_Controller/b/e;->f:I

    .line 928
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    .line 929
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 930
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->s(Z)V

    .line 931
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o:Z

    if-nez v0, :cond_1a

    .line 933
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aD()V

    goto/16 :goto_0

    .line 937
    :cond_1a
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->f()V

    goto/16 :goto_0

    .line 941
    :sswitch_2d
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Z)V

    .line 942
    const/4 v5, 0x0

    .line 943
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    packed-switch v0, :pswitch_data_0

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lLocalDatabaseSelectMode Wrong!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 954
    :goto_8
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 955
    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a00da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 957
    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0091

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2357

    move v3, v2

    move v8, v2

    .line 954
    invoke-static/range {v1 .. v8}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 945
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 948
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 961
    :sswitch_2e
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aE()V

    .line 962
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    goto/16 :goto_0

    .line 968
    :sswitch_2f
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v1}, La/b/b/a;->b(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v8, :cond_1b

    .line 970
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 971
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 972
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0049

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 973
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a008b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0092

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    new-array v7, v8, [I

    fill-array-data v7, :array_4

    move v3, v2

    .line 970
    invoke-static/range {v1 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 978
    :cond_1b
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x230f

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 983
    :sswitch_30
    const-string v1, "MSG_UI_GALLERY_MULTI_DELETE_ERROR_FILE"

    const/4 v3, 0x3

    invoke-direct {p0, v1, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a(Ljava/lang/String;I)V

    .line 985
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c(Ljava/lang/String;)V

    .line 987
    sget-object v1, Lui_Controller/a/c;->d:Ljava/lang/String;

    .line 988
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3, v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Ljava/lang/String;Z)V

    .line 989
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aE()V

    .line 990
    sget-object v1, Lui_Controller/a/c;->c:Ljava/lang/String;

    .line 991
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3, v1, v0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Ljava/lang/String;ZZ)I

    .line 992
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aE()V

    .line 993
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aF()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 995
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lui_Controller/b/e;->ab:Ljava/lang/String;

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/Android/data/com.huawei.cvIntl60/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "DCIM/PANORAMA_HUAWEI/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3, v1, v2, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Ljava/lang/String;ZZ)I

    .line 998
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aE()V

    .line 1001
    :cond_1c
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1003
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget v3, v3, Lui_Controller/b/b;->c:I

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v5, v5, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v6, v6, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v6, v6, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4, v5, v6}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    .line 1009
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->d:I

    packed-switch v1, :pswitch_data_1

    .line 1024
    :goto_9
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->a()V

    .line 1025
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 1026
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 1027
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->u()V

    .line 1028
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e(Z)V

    .line 1029
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 1030
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v0, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->z:Z

    goto/16 :goto_0

    .line 1011
    :pswitch_2
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 1012
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    goto :goto_9

    .line 1015
    :pswitch_3
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 1016
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    goto/16 :goto_9

    .line 1019
    :pswitch_4
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 1020
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v1, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    goto/16 :goto_9

    .line 1034
    :sswitch_31
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v0, v1, Lui_Controller/b/f;->o:Z

    .line 1035
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v1}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "apkUpdateLater"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1036
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iget-boolean v1, v1, Lui_Controller/b/f;->ag:Z

    if-nez v1, :cond_0

    .line 1038
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v2, v1, Lui_Controller/b/f;->ag:Z

    .line 1039
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v1}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "hotaOptimization"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1040
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 1041
    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 1042
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a008f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a0094

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    new-array v7, v8, [I

    fill-array-data v7, :array_5

    move v3, v0

    .line 1040
    invoke-static/range {v1 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 1048
    :sswitch_32
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v1}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1049
    const-string v3, "apkUpdateLater"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1050
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v0, v1, Lui_Controller/b/f;->ag:Z

    goto/16 :goto_0

    .line 1053
    :sswitch_33
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v2, v1, Lui_Controller/b/f;->o:Z

    .line 1054
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v1}, La/b/b/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v1}, La/b/b/a;->b(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v8, :cond_1d

    .line 1055
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a014a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 1056
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a014d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 1057
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a008b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a008d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    new-array v7, v8, [I

    fill-array-data v7, :array_6

    move v3, v0

    .line 1055
    invoke-static/range {v1 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 1063
    :goto_a
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v0, v1, Lui_Controller/b/f;->ag:Z

    goto/16 :goto_0

    .line 1061
    :cond_1d
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v2, 0x2106

    invoke-virtual {v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto :goto_a

    .line 1066
    :sswitch_34
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    iput-boolean v0, v1, Lui_Controller/b/f;->o:Z

    .line 1067
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v1}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "hotaOptimization"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1068
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 1069
    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 1070
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a008f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a0094

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    new-array v7, v8, [I

    fill-array-data v7, :array_7

    move v3, v0

    .line 1068
    invoke-static/range {v1 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x2120 -> :sswitch_2
        0x2308 -> :sswitch_b
        0x2310 -> :sswitch_2f
        0x2320 -> :sswitch_c
        0x2328 -> :sswitch_14
        0x2329 -> :sswitch_15
        0x232a -> :sswitch_16
        0x232b -> :sswitch_17
        0x232c -> :sswitch_18
        0x232e -> :sswitch_10
        0x232f -> :sswitch_11
        0x2330 -> :sswitch_12
        0x2331 -> :sswitch_13
        0x2332 -> :sswitch_0
        0x2333 -> :sswitch_19
        0x2334 -> :sswitch_1a
        0x2335 -> :sswitch_0
        0x2336 -> :sswitch_0
        0x2337 -> :sswitch_1b
        0x2338 -> :sswitch_1c
        0x2339 -> :sswitch_1d
        0x233a -> :sswitch_1e
        0x233b -> :sswitch_1f
        0x233c -> :sswitch_20
        0x234e -> :sswitch_1
        0x234f -> :sswitch_f
        0x2350 -> :sswitch_23
        0x2351 -> :sswitch_21
        0x2352 -> :sswitch_22
        0x2353 -> :sswitch_28
        0x2354 -> :sswitch_29
        0x2355 -> :sswitch_2a
        0x2356 -> :sswitch_2b
        0x2357 -> :sswitch_2c
        0x2358 -> :sswitch_2d
        0x2359 -> :sswitch_2e
        0x235d -> :sswitch_30
        0x235e -> :sswitch_a
        0x2415 -> :sswitch_24
        0x2416 -> :sswitch_26
        0x2417 -> :sswitch_27
        0x2418 -> :sswitch_25
        0x2420 -> :sswitch_31
        0x2421 -> :sswitch_32
        0x2422 -> :sswitch_33
        0x2426 -> :sswitch_34
        0x2f00 -> :sswitch_9
        0x2f02 -> :sswitch_4
        0x2f03 -> :sswitch_5
        0x2f04 -> :sswitch_6
        0x2f05 -> :sswitch_7
        0x2f06 -> :sswitch_3
        0x2f07 -> :sswitch_8
        0x3023 -> :sswitch_d
        0x3024 -> :sswitch_e
        0x8000 -> :sswitch_a
        0xf000 -> :sswitch_0
        0xf001 -> :sswitch_0
        0xf002 -> :sswitch_0
    .end sparse-switch

    .line 576
    :array_0
    .array-data 4
        0x2f07
        0x2f12
    .end array-data

    .line 604
    :array_1
    .array-data 4
        0x232c
        0x232b
    .end array-data

    .line 612
    :array_2
    .array-data 4
        0x232c
        0x232b
    .end array-data

    .line 851
    :array_3
    .array-data 4
        0x2418
        0x2416
    .end array-data

    .line 943
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 973
    :array_4
    .array-data 4
        0x2f07
        0x230f
    .end array-data

    .line 1009
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1042
    :array_5
    .array-data 4
        0x2421
        0x2422
    .end array-data

    .line 1057
    :array_6
    .array-data 4
        0x2426
        0x2106
    .end array-data

    .line 1070
    :array_7
    .array-data 4
        0x2421
        0x2422
    .end array-data
.end method

.method protected c(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/16 v4, 0x2358

    const/16 v1, 0x2357

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1078
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1160
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->b:Lui_Controller/ui_Gallery/ui_PhoneGallery/e;

    invoke-virtual {v0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->f(Landroid/os/Message;)V

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1081
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aK()V

    .line 1082
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aN()V

    goto :goto_0

    .line 1085
    :pswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto :goto_0

    .line 1088
    :pswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto :goto_0

    .line 1091
    :pswitch_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aK()V

    .line 1092
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aL()V

    goto :goto_0

    .line 1095
    :pswitch_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto :goto_0

    .line 1098
    :pswitch_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto :goto_0

    .line 1101
    :pswitch_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lui_Controller/b/e;->ab:Ljava/lang/String;

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.huawei.cvIntl60/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DCIM/PANORAMA_HUAWEI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0, v2, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Ljava/lang/String;ZZ)I

    move-result v0

    .line 1104
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aE()V

    .line 1105
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1107
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget v1, v1, Lui_Controller/b/b;->c:I

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2, v3, v4}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    .line 1118
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2353

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 1122
    :pswitch_8
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->q:Z

    .line 1123
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->az()V

    .line 1125
    sget-object v0, Lui_Controller/a/c;->d:Ljava/lang/String;

    .line 1126
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Ljava/lang/String;Z)V

    .line 1127
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aE()V

    .line 1128
    sget-object v0, Lui_Controller/a/c;->c:Ljava/lang/String;

    .line 1129
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0, v3, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Ljava/lang/String;ZZ)I

    .line 1130
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aE()V

    .line 1131
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aF()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lui_Controller/b/e;->ab:Ljava/lang/String;

    .line 1134
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aI()V

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.huawei.cvIntl60/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DCIM/PANORAMA_HUAWEI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iput-boolean v2, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->r:Z

    .line 1137
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v1, v0, v2, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Ljava/lang/String;ZZ)I

    .line 1138
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aE()V

    .line 1139
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-boolean v3, v0, Lui_Controller/b/e;->x:Z

    .line 1142
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget v1, v1, Lui_Controller/b/b;->c:I

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    invoke-virtual {v0, v1, v2, v3, v4}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    .line 1157
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/c;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2354

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x5006
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
