.class public Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;
.super Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;
.source "SourceFile"


# instance fields
.field public a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Z

.field private e:Z

.field private f:LGeneralFunction/e/d;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;-><init>()V

    .line 13
    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->b:Landroid/graphics/Bitmap;

    .line 14
    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->c:Landroid/graphics/Bitmap;

    .line 18
    iput-boolean v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->d:Z

    .line 19
    iput-boolean v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->e:Z

    .line 21
    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    .line 22
    iput v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    .line 23
    iput v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->h:I

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->h:I

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->e(II)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    iget v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->h:I

    invoke-virtual {v1, v2, v3}, LGeneralFunction/e/d;->a(II)I

    move-result v1

    .line 49
    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x0

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 52
    invoke-static {v0}, LGeneralFunction/g/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(LGeneralFunction/e/d;LGeneralFunction/e/a;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->b:Landroid/graphics/Bitmap;

    .line 33
    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->c:Landroid/graphics/Bitmap;

    .line 35
    new-instance v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    invoke-direct {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    .line 37
    iput-boolean v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->d:Z

    .line 38
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    .line 39
    iget v0, p2, LGeneralFunction/e/a;->b:I

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    .line 40
    iget-object v0, p2, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->h:I

    .line 41
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->b:Landroid/graphics/Bitmap;

    .line 91
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 114
    iput-boolean p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->d:Z

    .line 115
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->h:I

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->f(II)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    iget v3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->h:I

    invoke-virtual {v1, v2, v3}, LGeneralFunction/e/d;->a(II)I

    move-result v1

    .line 63
    if-eqz v0, :cond_0

    .line 64
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 65
    invoke-static {v0}, LGeneralFunction/g/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->c:Landroid/graphics/Bitmap;

    .line 103
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->e:Z

    .line 185
    return-void
.end method

.method public c()I
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->h:I

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->b(II)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->h:I

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->c(II)I

    move-result v0

    return v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->h:I

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->a(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 158
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public j()Z
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->h:I

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->a(II)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->e:Z

    return v0
.end method

.method public l()I
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    iget v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->h:I

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->a(II)I

    move-result v0

    .line 193
    packed-switch v0, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 197
    :pswitch_0
    iget-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->g:I

    invoke-virtual {v1, v2}, LGeneralFunction/e/d;->u(I)I

    move-result v1

    .line 198
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->f:LGeneralFunction/e/d;

    invoke-virtual {v2, v1}, LGeneralFunction/e/d;->q(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 200
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->l()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 218
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public n()Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/d;

    return-object v0
.end method
