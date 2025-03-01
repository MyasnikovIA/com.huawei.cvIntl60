.class Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;


# direct methods
.method constructor <init>(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1081
    .line 1082
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->g(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return v7

    .line 1086
    :cond_1
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->h(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->i(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v2

    invoke-static {v1, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;

    move-result-object v1

    .line 1099
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1238
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->b()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1239
    invoke-virtual {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/b;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v0

    iget-object v0, v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1101
    :pswitch_1
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)V

    .line 1102
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 1104
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->g()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1106
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1111
    :cond_3
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1112
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->c:F

    .line 1113
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v7}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    goto :goto_1

    .line 1117
    :pswitch_2
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)V

    .line 1118
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->l(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v2

    if-eq v2, v6, :cond_4

    .line 1120
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1122
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->f(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v2

    if-nez v2, :cond_5

    .line 1124
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v7}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    .line 1125
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    const/4 v3, 0x3

    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v5, 0xc8

    invoke-static {v2, v3, v4, v5}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;ILjava/lang/Object;I)V

    .line 1136
    :cond_4
    :goto_2
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v8}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    .line 1137
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->c:F

    goto/16 :goto_1

    .line 1127
    :cond_5
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->f(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 1129
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v8}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    .line 1130
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v2, v6, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;ILandroid/graphics/PointF;)V

    .line 1131
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1132
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v2, v0, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;Landroid/graphics/PointF;)V

    goto :goto_2

    .line 1141
    :pswitch_3
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->g()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1143
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->m()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1149
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v3, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)F

    move-result v3

    invoke-static {v2, v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;F)F

    .line 1150
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->m(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_6

    .line 1151
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1152
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    iget-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 1153
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v6}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    .line 1155
    :cond_6
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1159
    :cond_7
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v7}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    goto/16 :goto_1

    .line 1162
    :cond_8
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v7}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    goto/16 :goto_1

    .line 1166
    :pswitch_4
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)V

    .line 1167
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->g()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1169
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->h()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1171
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->i()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->j()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1173
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0, v7}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    .line 1176
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v0, v8}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    goto/16 :goto_0

    .line 1182
    :cond_9
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->l(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v2

    if-ne v2, v7, :cond_d

    .line 1184
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    iget-object v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1185
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    iget-object v2, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v4}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v5}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1186
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v2

    iget-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v5

    iget-object v5, v5, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-static {v3, v4, v5}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)F

    move-result v3

    iput v3, v2, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->c:F

    .line 1187
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->g()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1189
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->f()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v4

    iget-object v4, v4, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    invoke-static {v2, v3, v4}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->b(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1191
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1193
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->o(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1195
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v7}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    .line 1196
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v8}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    goto/16 :goto_1

    .line 1201
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->j(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v9

    if-lez v2, :cond_c

    .line 1202
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1203
    if-ltz v2, :cond_0

    .line 1212
    :cond_b
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1214
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->o(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1216
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v7}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    .line 1217
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v8}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->d(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)I

    goto/16 :goto_1

    .line 1207
    :cond_c
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->e(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1208
    iget-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v3, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->f(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;I)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 1222
    :cond_d
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->l(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1224
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->g()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1226
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, p2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->c(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Landroid/view/MotionEvent;)F

    move-result v2

    .line 1227
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 1228
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v4}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->k(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1229
    iget-object v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v3}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->m(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)F

    move-result v3

    div-float/2addr v2, v3

    .line 1230
    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;->n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    move-result-object v3

    iget-object v3, v3, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v4}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v5}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->n(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1231
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$5;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;

    invoke-static {v2, v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;->a(Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;)V

    goto/16 :goto_1

    .line 1099
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
