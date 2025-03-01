.class LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/player/SphericalVideoPlayer$g;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;


# direct methods
.method constructor <init>(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1216
    iput-object p1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1219
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1220
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1371
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1222
    :pswitch_1
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 1225
    :pswitch_2
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->b(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V

    goto :goto_0

    .line 1228
    :pswitch_3
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->c(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V

    goto :goto_0

    .line 1231
    :pswitch_4
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 1232
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;I)V

    .line 1233
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)V

    goto :goto_0

    .line 1236
    :pswitch_5
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/Player/player/g;

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;LGeneralFunction/Player/player/g;)V

    goto :goto_0

    .line 1239
    :pswitch_6
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->a:I

    if-eq v0, v4, :cond_0

    .line 1241
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;FZ)V

    goto :goto_0

    .line 1244
    :pswitch_7
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0, v1, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;FZ)V

    goto :goto_0

    .line 1247
    :pswitch_8
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, LGeneralFunction/Player/player/h;->z:[F

    .line 1248
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    goto/16 :goto_0

    .line 1251
    :pswitch_9
    const-string v0, "MSG_ON_RECEIVE_BITMAP"

    const/4 v1, 0x3

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1252
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/Player/player/a;

    .line 1253
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget v2, v0, LGeneralFunction/Player/player/a;->b:I

    invoke-static {v1, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;I)I

    .line 1254
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v2, v0, LGeneralFunction/Player/player/a;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Landroid/graphics/Bitmap;)V

    .line 1255
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-boolean v0, v0, LGeneralFunction/Player/player/a;->c:Z

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->b(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)Z

    goto/16 :goto_0

    .line 1258
    :pswitch_a
    if-eqz p0, :cond_0

    .line 1260
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->b(LGeneralFunction/Player/player/SphericalVideoPlayer$g;I)V

    .line 1261
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    goto/16 :goto_0

    .line 1266
    :pswitch_b
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, LGeneralFunction/Player/player/h;->s:I

    .line 1267
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    goto/16 :goto_0

    .line 1270
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_UPDATE_TEXTURE_SIZE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1272
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->m:I

    if-ne v0, v3, :cond_1

    .line 1274
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a(LGeneralFunction/Player/player/SphericalVideoPlayer$g;I)I

    .line 1276
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->c(LGeneralFunction/Player/player/SphericalVideoPlayer$g;I)I

    .line 1277
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d(LGeneralFunction/Player/player/SphericalVideoPlayer$g;I)I

    .line 1278
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    .line 1279
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->c(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)Z

    goto/16 :goto_0

    .line 1282
    :pswitch_d
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, LGeneralFunction/Player/player/h;->b:I

    .line 1283
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v1, v1, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->b:I

    invoke-static {v0, v1}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e(LGeneralFunction/Player/player/SphericalVideoPlayer$g;I)V

    .line 1284
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    goto/16 :goto_0

    .line 1287
    :pswitch_e
    if-eqz p0, :cond_0

    .line 1289
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)Z

    .line 1290
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    goto/16 :goto_0

    .line 1294
    :pswitch_f
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->a:I

    if-eq v0, v4, :cond_0

    .line 1296
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->d(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V

    .line 1297
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    goto/16 :goto_0

    .line 1301
    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PLAYER]MSG_UPDATE_SURFACE_SIZE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v1, v1, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v1, v1, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(Ljava/lang/String;I)V

    .line 1303
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v0, v0, LGeneralFunction/Player/player/h;->o:I

    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v1, v1, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v1, v1, LGeneralFunction/Player/player/h;->p:I

    if-le v0, v1, :cond_2

    .line 1304
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/h;->b(Z)V

    goto/16 :goto_0

    .line 1306
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    invoke-virtual {v0, v2}, LGeneralFunction/Player/player/h;->b(Z)V

    goto/16 :goto_0

    .line 1311
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/Player/player/g;

    .line 1312
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v1, v1, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v2, v0, LGeneralFunction/Player/player/g;->a:F

    iget v0, v0, LGeneralFunction/Player/player/g;->b:F

    invoke-virtual {v1, v2, v0}, LGeneralFunction/Player/player/h;->a(FF)V

    goto/16 :goto_0

    .line 1317
    :pswitch_12
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/h;->e()V

    .line 1318
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput v1, v0, LGeneralFunction/Player/player/h;->u:F

    .line 1319
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput v1, v0, LGeneralFunction/Player/player/h;->v:F

    goto/16 :goto_0

    .line 1324
    :pswitch_13
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->c(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)Z

    .line 1325
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    .line 1326
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->b(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V

    goto/16 :goto_0

    .line 1331
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/Player/player/h;

    .line 1332
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v1, v1, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    invoke-virtual {v1}, LGeneralFunction/Player/player/h;->e()V

    .line 1333
    iget v1, v0, LGeneralFunction/Player/player/h;->m:I

    if-eqz v1, :cond_0

    .line 1335
    iget v1, v0, LGeneralFunction/Player/player/h;->a:I

    if-eqz v1, :cond_0

    .line 1337
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v1, v1, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v2, v0, LGeneralFunction/Player/player/h;->l:F

    iput v2, v1, LGeneralFunction/Player/player/h;->l:F

    .line 1338
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v1, v1, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v2, v0, LGeneralFunction/Player/player/h;->q:F

    iput v2, v1, LGeneralFunction/Player/player/h;->q:F

    .line 1339
    iget-object v1, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v1, v1, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v1}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget v0, v0, LGeneralFunction/Player/player/h;->r:F

    invoke-virtual {v1, v0}, LGeneralFunction/Player/player/h;->b(F)V

    .line 1340
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->c(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)Z

    .line 1341
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    goto/16 :goto_0

    .line 1348
    :pswitch_15
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/Player/player/h;->e()V

    .line 1349
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V

    .line 1350
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iput-boolean v3, v0, LGeneralFunction/Player/player/h;->y:Z

    goto/16 :goto_0

    .line 1355
    :pswitch_16
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer;->b(LGeneralFunction/Player/player/SphericalVideoPlayer;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, LGeneralFunction/Player/player/h;->A:[F

    goto/16 :goto_0

    .line 1360
    :pswitch_17
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->e(LGeneralFunction/Player/player/SphericalVideoPlayer$g;Z)Z

    .line 1361
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    invoke-static {v0}, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->f(LGeneralFunction/Player/player/SphericalVideoPlayer$g;)V

    goto/16 :goto_0

    .line 1366
    :pswitch_18
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-virtual {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(I)V

    .line 1367
    iget-object v0, p0, LGeneralFunction/Player/player/SphericalVideoPlayer$g$1;->a:LGeneralFunction/Player/player/SphericalVideoPlayer$g;

    iget-object v0, v0, LGeneralFunction/Player/player/SphericalVideoPlayer$g;->a:LGeneralFunction/Player/player/SphericalVideoPlayer;

    invoke-static {v0, v3}, LGeneralFunction/Player/player/SphericalVideoPlayer;->a(LGeneralFunction/Player/player/SphericalVideoPlayer;I)V

    goto/16 :goto_0

    .line 1220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_7
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_18
    .end packed-switch
.end method
