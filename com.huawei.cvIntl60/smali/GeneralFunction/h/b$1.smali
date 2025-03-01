.class LGeneralFunction/h/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/h/b;->a(Landroid/os/HandlerThread;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/h/b;


# direct methods
.method constructor <init>(LGeneralFunction/h/b;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 214
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v1, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Server HandleMessage: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;Ljava/lang/String;I)V

    .line 222
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    iget-object v0, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v0}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;)LGeneralFunction/h/a;

    move-result-object v0

    iget v1, v0, LGeneralFunction/h/a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LGeneralFunction/h/a;->b:I

    .line 309
    iget-object v0, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsFileControllerIdle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-virtual {v2}, LGeneralFunction/h/b;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;Ljava/lang/String;I)V

    .line 310
    iget-object v0, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v0}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;)LGeneralFunction/h/a;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, LGeneralFunction/h/a;->a:I

    .line 311
    return-void

    .line 226
    :pswitch_0
    iget-object v1, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v1}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;)LGeneralFunction/h/a;

    move-result-object v1

    iget-boolean v1, v1, LGeneralFunction/h/a;->c:Z

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v1}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;)LGeneralFunction/h/a;

    move-result-object v1

    const/4 v2, 0x5

    iput v2, v1, LGeneralFunction/h/a;->a:I

    .line 231
    const-string v1, "ActionList"

    invoke-virtual {v0, v1}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    .line 233
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 235
    iget-object v1, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    const-string v3, "======================"

    const/4 v4, 0x4

    invoke-static {v1, v3, v4}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;Ljava/lang/String;I)V

    .line 236
    iget-object v3, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lui_Controller/b/a;

    invoke-virtual {v1}, Lui_Controller/b/a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    invoke-static {v3, v1, v4}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;Ljava/lang/String;I)V

    .line 233
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 239
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 241
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 243
    iget-object v1, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v1}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;)LGeneralFunction/h/a;

    move-result-object v1

    iget-boolean v1, v1, LGeneralFunction/h/a;->c:Z

    if-eqz v1, :cond_3

    .line 245
    iget-object v0, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    const-string v1, "Delete Cancel"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;Ljava/lang/String;I)V

    .line 290
    :cond_2
    iget-object v0, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v0}, LGeneralFunction/h/b;->c(LGeneralFunction/h/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    new-instance v1, La/c/a;

    const/16 v2, 0x3024

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 292
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 293
    iget-object v2, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v3, v0}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;ILjava/lang/String;)V

    .line 292
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 248
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lui_Controller/b/a;

    .line 249
    iget-object v9, v1, Lui_Controller/b/a;->b:Ljava/util/ArrayList;

    .line 252
    const/4 v5, 0x0

    .line 254
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 256
    const/4 v2, 0x1

    move v4, v2

    .line 263
    :goto_4
    const/4 v2, 0x0

    move v6, v2

    :goto_5
    if-ge v6, v4, :cond_4

    .line 265
    iget-object v2, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v2}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;)LGeneralFunction/h/a;

    move-result-object v2

    iget-boolean v2, v2, LGeneralFunction/h/a;->c:Z

    if-eqz v2, :cond_6

    .line 267
    iget-object v1, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    const-string v2, "Delete Cancel"

    const/4 v4, 0x4

    invoke-static {v1, v2, v4}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;Ljava/lang/String;I)V

    .line 241
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 260
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 261
    iget-object v4, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ulRunCount "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x4

    invoke-static {v4, v6, v10}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;Ljava/lang/String;I)V

    move v4, v2

    goto :goto_4

    .line 271
    :cond_6
    iget v10, v1, Lui_Controller/b/a;->a:I

    .line 272
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 273
    iget-object v2, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v2}, LGeneralFunction/h/b;->b(LGeneralFunction/h/b;)LGeneralFunction/e/d;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, LGeneralFunction/e/d;->a(II)I

    move-result v2

    .line 274
    iget-object v12, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v12}, LGeneralFunction/h/b;->b(LGeneralFunction/h/b;)LGeneralFunction/e/d;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, LGeneralFunction/e/d;->h(II)Ljava/lang/String;

    move-result-object v12

    .line 275
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v2, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v2}, LGeneralFunction/h/b;->b(LGeneralFunction/h/b;)LGeneralFunction/e/d;

    move-result-object v2

    invoke-virtual {v2, v10}, LGeneralFunction/e/d;->u(I)I

    move-result v2

    .line 279
    iget-object v12, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v12}, LGeneralFunction/h/b;->b(LGeneralFunction/h/b;)LGeneralFunction/e/d;

    move-result-object v12

    invoke-virtual {v12, v2}, LGeneralFunction/e/d;->q(I)I

    move-result v2

    const/4 v12, 0x1

    if-gt v2, v12, :cond_7

    .line 280
    const/4 v2, 0x1

    .line 282
    :goto_6
    iget-object v5, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v5, v10, v11}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;II)V

    .line 283
    new-instance v5, La/c/a;

    const/16 v12, 0x3023

    invoke-direct {v5, v12}, La/c/a;-><init>(I)V

    .line 284
    const-string v12, "parent index"

    invoke-virtual {v5, v12, v10}, La/c/a;->a(Ljava/lang/String;I)V

    .line 285
    const-string v10, "child index"

    invoke-virtual {v5, v10, v11}, La/c/a;->a(Ljava/lang/String;I)V

    .line 286
    const-string v10, "delete group"

    invoke-virtual {v5, v10, v2}, La/c/a;->a(Ljava/lang/String;Z)V

    .line 287
    iget-object v10, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v10}, LGeneralFunction/h/b;->c(LGeneralFunction/h/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v10

    invoke-virtual {v10, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 263
    add-int/lit8 v6, v6, 0x1

    move v5, v2

    goto/16 :goto_5

    .line 299
    :pswitch_1
    iget-object v0, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    const-string v1, "File server cancel complete"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;Ljava/lang/String;I)V

    .line 300
    iget-object v0, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v0}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;)LGeneralFunction/h/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, LGeneralFunction/h/a;->c:Z

    .line 301
    iget-object v0, p0, LGeneralFunction/h/b$1;->a:LGeneralFunction/h/b;

    invoke-static {v0}, LGeneralFunction/h/b;->a(LGeneralFunction/h/b;)LGeneralFunction/h/a;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, LGeneralFunction/h/a;->a:I

    goto/16 :goto_0

    :cond_7
    move v2, v5

    goto :goto_6

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x3002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
