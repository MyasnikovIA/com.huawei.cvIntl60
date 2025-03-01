.class LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/GifGenerate/GifGenerate$e;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;


# direct methods
.method constructor <init>(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 894
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 895
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1098
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 897
    :pswitch_1
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, v2, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 900
    :pswitch_2
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V

    goto :goto_0

    .line 903
    :pswitch_3
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->c(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V

    goto :goto_0

    .line 906
    :pswitch_4
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->d(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)I

    move-result v1

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    .line 907
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)V

    goto :goto_0

    .line 910
    :pswitch_5
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/Player/GifGenerate/GifGenerate$f;

    invoke-static {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;LGeneralFunction/Player/GifGenerate/GifGenerate$f;)V

    goto :goto_0

    .line 913
    :pswitch_6
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;FZ)V

    goto :goto_0

    .line 916
    :pswitch_7
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;FZ)V

    goto :goto_0

    .line 919
    :pswitch_8
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, LGeneralFunction/Player/player/h;->z:[F

    .line 920
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z

    goto :goto_0

    .line 923
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/Player/GifGenerate/GifGenerate$a;

    .line 924
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget v2, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$a;->b:I

    invoke-static {v1, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    .line 925
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v2, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$a;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Landroid/graphics/Bitmap;)V

    .line 926
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-boolean v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$a;->c:Z

    invoke-static {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->c(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z

    goto/16 :goto_0

    .line 930
    :pswitch_a
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->c(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)V

    .line 931
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z

    goto/16 :goto_0

    .line 936
    :pswitch_b
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    .line 937
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->d(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    .line 938
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->e(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    goto/16 :goto_0

    .line 941
    :pswitch_c
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    goto/16 :goto_0

    .line 945
    :pswitch_d
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Ljava/lang/String;)Ljava/lang/String;

    .line 946
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->g(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    goto/16 :goto_0

    .line 950
    :pswitch_e
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 951
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v1, v1, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v1

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 952
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z

    .line 953
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->e(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)I

    move-result v1

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)V

    .line 954
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 956
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V

    goto/16 :goto_0

    .line 961
    :pswitch_f
    const-string v0, "MSG_GIF_FROM_VIDEO"

    invoke-static {v0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 963
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->i(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    .line 964
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 965
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v1, v1, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v1

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    .line 966
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z

    .line 967
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 969
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->f(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V

    goto/16 :goto_0

    .line 975
    :pswitch_10
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, LGeneralFunction/Player/player/h;->m:I

    goto/16 :goto_0

    .line 980
    :pswitch_11
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->j(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    .line 981
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->k(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    goto/16 :goto_0

    .line 987
    :pswitch_12
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->l(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    .line 988
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->g(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 990
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 994
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->i(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 998
    :cond_1
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->j(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V

    .line 999
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1001
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1002
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto/16 :goto_0

    .line 1006
    :cond_2
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    if-eq v0, v3, :cond_3

    .line 1008
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v6}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1009
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v6}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto/16 :goto_0

    .line 1013
    :cond_3
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1015
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto/16 :goto_0

    .line 1023
    :pswitch_13
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->d(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z

    goto/16 :goto_0

    .line 1028
    :pswitch_14
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->e(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z

    .line 1029
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z

    .line 1030
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V

    goto/16 :goto_0

    .line 1035
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/Player/player/h;

    .line 1036
    iget v1, v0, LGeneralFunction/Player/player/h;->m:I

    if-eqz v1, :cond_0

    .line 1038
    iget v1, v0, LGeneralFunction/Player/player/h;->a:I

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v1, v1, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, LGeneralFunction/Player/player/h;

    iget v1, v1, LGeneralFunction/Player/player/h;->a:I

    iput v1, v2, LGeneralFunction/Player/player/h;->a:I

    .line 1041
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v1, v1, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, LGeneralFunction/Player/player/h;

    iget v1, v1, LGeneralFunction/Player/player/h;->l:F

    iput v1, v2, LGeneralFunction/Player/player/h;->l:F

    .line 1042
    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v1, v1, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, LGeneralFunction/Player/player/h;

    iget v1, v1, LGeneralFunction/Player/player/h;->s:I

    iput v1, v2, LGeneralFunction/Player/player/h;->s:I

    .line 1043
    iget v0, v0, LGeneralFunction/Player/player/h;->s:I

    if-eq v0, v3, :cond_4

    .line 1045
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v0

    iget-object v0, v0, LGeneralFunction/Player/player/h;->z:[F

    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1046
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/Player/player/h;

    iget-object v0, v0, LGeneralFunction/Player/player/h;->z:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, LGeneralFunction/Player/player/h;->z:[F

    .line 1048
    :cond_4
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->q:F

    iput v0, v1, LGeneralFunction/Player/player/h;->q:F

    .line 1049
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->r:F

    iput v0, v1, LGeneralFunction/Player/player/h;->r:F

    .line 1050
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;)LGeneralFunction/Player/player/h;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LGeneralFunction/Player/player/h;

    iget v0, v0, LGeneralFunction/Player/player/h;->e:F

    const/high16 v2, 0x420c0000    # 35.0f

    sub-float/2addr v0, v2

    iput v0, v1, LGeneralFunction/Player/player/h;->f:F

    .line 1052
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0, v3}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z

    goto/16 :goto_0

    .line 1059
    :pswitch_16
    const-string v0, "MSG_SET_PLAY_COMPLETE"

    invoke-static {v0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(Ljava/lang/String;I)V

    .line 1061
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 1063
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1065
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1067
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->i(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v2}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->h(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1070
    :cond_5
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->j(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)V

    .line 1072
    :cond_6
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b(LGeneralFunction/Player/GifGenerate/GifGenerate$e;Z)Z

    .line 1073
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 1074
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->k(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)I

    move-result v1

    invoke-virtual {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate;->seekTo(I)V

    .line 1075
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v1, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    invoke-static {v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->d(LGeneralFunction/Player/GifGenerate/GifGenerate$e;)I

    move-result v1

    invoke-static {v0, v1}, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->a(LGeneralFunction/Player/GifGenerate/GifGenerate$e;I)I

    .line 1076
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->b(LGeneralFunction/Player/GifGenerate/GifGenerate;)I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1078
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1079
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v4}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto/16 :goto_0

    .line 1083
    :cond_7
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;)Z

    move-result v0

    if-eq v0, v3, :cond_8

    .line 1085
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v6}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1086
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v6}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto/16 :goto_0

    .line 1090
    :cond_8
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->c(LGeneralFunction/Player/GifGenerate/GifGenerate;I)I

    .line 1092
    iget-object v0, p0, LGeneralFunction/Player/GifGenerate/GifGenerate$e$1;->a:LGeneralFunction/Player/GifGenerate/GifGenerate$e;

    iget-object v0, v0, LGeneralFunction/Player/GifGenerate/GifGenerate$e;->b:LGeneralFunction/Player/GifGenerate/GifGenerate;

    invoke-static {v0, v5}, LGeneralFunction/Player/GifGenerate/GifGenerate;->d(LGeneralFunction/Player/GifGenerate/GifGenerate;I)V

    goto/16 :goto_0

    .line 895
    nop

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
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method
