.class LGeneralFunction/i/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/i/a/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZIIIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/i/a/a;


# direct methods
.method constructor <init>(LGeneralFunction/i/a/a;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 219
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 220
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;)I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 222
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iput-boolean v7, v2, LGeneralFunction/i/a/a;->a:Z

    .line 224
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;)F

    move-result v3

    invoke-static {v2, v3}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;F)F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->c(LGeneralFunction/i/a/a;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 226
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;)F

    move-result v2

    invoke-static {v0, v2}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;F)F

    move-result v0

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->c(LGeneralFunction/i/a/a;)F

    move-result v2

    sub-float/2addr v0, v2

    .line 229
    :cond_0
    :goto_0
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;)F

    move-result v3

    invoke-static {v2, v3}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;F)I

    move-result v2

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v4, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v4, v0}, LGeneralFunction/i/a/a;->c(LGeneralFunction/i/a/a;F)F

    move-result v4

    invoke-static {v3, v4}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->d(LGeneralFunction/i/a/a;)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 231
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make sure label gap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v4}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;Ljava/lang/String;I)V

    .line 232
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->c(LGeneralFunction/i/a/a;)F

    move-result v2

    div-float/2addr v2, v5

    sub-float/2addr v0, v2

    .line 233
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2, v0}, LGeneralFunction/i/a/a;->d(LGeneralFunction/i/a/a;F)F

    move-result v0

    goto :goto_0

    .line 236
    :cond_1
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 238
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iput-boolean v8, v2, LGeneralFunction/i/a/a;->a:Z

    .line 240
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->e(LGeneralFunction/i/a/a;)F

    move-result v3

    invoke-static {v2, v3}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;F)F

    move-result v2

    sub-float v2, v0, v2

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->c(LGeneralFunction/i/a/a;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 242
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->e(LGeneralFunction/i/a/a;)F

    move-result v2

    invoke-static {v0, v2}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;F)F

    move-result v0

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->c(LGeneralFunction/i/a/a;)F

    move-result v2

    add-float/2addr v0, v2

    .line 245
    :cond_2
    :goto_1
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3, v0}, LGeneralFunction/i/a/a;->c(LGeneralFunction/i/a/a;F)F

    move-result v3

    invoke-static {v2, v3}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;F)I

    move-result v2

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v4, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v4}, LGeneralFunction/i/a/a;->e(LGeneralFunction/i/a/a;)F

    move-result v4

    invoke-static {v3, v4}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->d(LGeneralFunction/i/a/a;)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 247
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make sure label gap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v4}, LGeneralFunction/i/a/a;->e(LGeneralFunction/i/a/a;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;Ljava/lang/String;I)V

    .line 248
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->c(LGeneralFunction/i/a/a;)F

    move-result v2

    div-float/2addr v2, v5

    add-float/2addr v0, v2

    .line 249
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2, v0}, LGeneralFunction/i/a/a;->d(LGeneralFunction/i/a/a;F)F

    move-result v0

    goto :goto_1

    .line 252
    :cond_3
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->f(LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a$b;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 254
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->f(LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a$b;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;)I

    move-result v3

    iget-object v4, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v5, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v5, v0}, LGeneralFunction/i/a/a;->c(LGeneralFunction/i/a/a;F)F

    move-result v5

    invoke-static {v4, v5}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;F)I

    move-result v4

    invoke-interface {v2, v3, v4, p2}, LGeneralFunction/i/a/a$b;->a(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 323
    :cond_4
    :goto_2
    return v8

    .line 257
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    .line 260
    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3, v0, v1}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;FF)I

    move-result v0

    invoke-static {v2, v0}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;I)I

    .line 261
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;)I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 263
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->h(LGeneralFunction/i/a/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v1}, LGeneralFunction/i/a/a;->g(LGeneralFunction/i/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 264
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->j(LGeneralFunction/i/a/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v1}, LGeneralFunction/i/a/a;->i(LGeneralFunction/i/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 266
    :cond_6
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;)I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 268
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->h(LGeneralFunction/i/a/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v1}, LGeneralFunction/i/a/a;->i(LGeneralFunction/i/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 269
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->j(LGeneralFunction/i/a/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v1}, LGeneralFunction/i/a/a;->g(LGeneralFunction/i/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 272
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_9

    .line 276
    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v1}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;)I

    move-result v1

    if-ne v1, v7, :cond_8

    .line 278
    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2, v0}, LGeneralFunction/i/a/a;->c(LGeneralFunction/i/a/a;F)F

    move-result v2

    invoke-static {v1, v2}, LGeneralFunction/i/a/a;->e(LGeneralFunction/i/a/a;F)F

    .line 279
    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->h(LGeneralFunction/i/a/a;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->e(LGeneralFunction/i/a/a;)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;Landroid/widget/LinearLayout;I)V

    .line 280
    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->k(LGeneralFunction/i/a/a;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->e(LGeneralFunction/i/a/a;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v4}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v1, v2, v3, v4}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;Landroid/widget/LinearLayout;II)V

    .line 282
    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->l(LGeneralFunction/i/a/a;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3, v0}, LGeneralFunction/i/a/a;->f(LGeneralFunction/i/a/a;F)I

    move-result v0

    invoke-static {v1, v2, v0}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;Landroid/widget/TextView;I)V

    .line 283
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->l(LGeneralFunction/i/a/a;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->e(LGeneralFunction/i/a/a;)F

    move-result v3

    invoke-static {v2, v3}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 286
    :cond_8
    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v1}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;)I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 288
    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2, v0}, LGeneralFunction/i/a/a;->c(LGeneralFunction/i/a/a;F)F

    move-result v2

    invoke-static {v1, v2}, LGeneralFunction/i/a/a;->g(LGeneralFunction/i/a/a;F)F

    .line 289
    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->j(LGeneralFunction/i/a/a;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;Landroid/widget/LinearLayout;I)V

    .line 290
    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->k(LGeneralFunction/i/a/a;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->e(LGeneralFunction/i/a/a;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v4}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v1, v2, v3, v4}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;Landroid/widget/LinearLayout;II)V

    .line 292
    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->m(LGeneralFunction/i/a/a;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3, v0}, LGeneralFunction/i/a/a;->f(LGeneralFunction/i/a/a;F)I

    move-result v0

    invoke-static {v1, v2, v0}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;Landroid/widget/TextView;I)V

    .line 293
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->m(LGeneralFunction/i/a/a;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v3, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v3}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;)F

    move-result v3

    invoke-static {v2, v3}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 296
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 299
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;)I

    move-result v0

    if-ne v0, v7, :cond_b

    .line 301
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->n(LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 303
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->n(LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a$a;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->e(LGeneralFunction/i/a/a;)F

    move-result v2

    invoke-static {v1, v2}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;F)I

    move-result v1

    invoke-interface {v0, v7, v1}, LGeneralFunction/i/a/a$a;->a(II)V

    .line 320
    :cond_a
    :goto_3
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0, v8}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;I)I

    goto/16 :goto_2

    .line 306
    :cond_b
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->a(LGeneralFunction/i/a/a;)I

    move-result v0

    if-ne v0, v6, :cond_c

    .line 308
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->n(LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 310
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->n(LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a$a;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    iget-object v2, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v2}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;)F

    move-result v2

    invoke-static {v1, v2}, LGeneralFunction/i/a/a;->b(LGeneralFunction/i/a/a;F)I

    move-result v1

    invoke-interface {v0, v6, v1}, LGeneralFunction/i/a/a$a;->a(II)V

    goto :goto_3

    .line 315
    :cond_c
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->n(LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 317
    iget-object v0, p0, LGeneralFunction/i/a/a$1;->a:LGeneralFunction/i/a/a;

    invoke-static {v0}, LGeneralFunction/i/a/a;->n(LGeneralFunction/i/a/a;)LGeneralFunction/i/a/a$a;

    move-result-object v0

    invoke-interface {v0, v8, v8}, LGeneralFunction/i/a/a$a;->a(II)V

    goto :goto_3
.end method
