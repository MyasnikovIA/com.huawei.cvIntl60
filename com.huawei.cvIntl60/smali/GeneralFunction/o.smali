.class public LGeneralFunction/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/Dialog;

.field private static b:Landroid/app/ProgressDialog;

.field private static c:LGeneralFunction/a/a;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-object v0, LGeneralFunction/o;->a:Landroid/app/Dialog;

    .line 67
    sput-object v0, LGeneralFunction/o;->b:Landroid/app/ProgressDialog;

    .line 68
    sput-object v0, LGeneralFunction/o;->c:LGeneralFunction/a/a;

    .line 69
    const/4 v0, 0x0

    sput v0, LGeneralFunction/o;->d:I

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, LGeneralFunction/o;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 82
    sget-object v0, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 85
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 213
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p6

    invoke-static/range {v0 .. v9}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V

    .line 214
    return-void
.end method

.method public static a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 12

    .prologue
    .line 226
    const/4 v2, 0x2

    sput v2, LGeneralFunction/o;->d:I

    .line 227
    invoke-static {p0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 228
    if-nez p1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 236
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    .line 238
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v2, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 239
    if-eqz p2, :cond_1

    .line 240
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    new-instance v3, LGeneralFunction/o$4;

    move/from16 v0, p7

    invoke-direct {v3, p0, v0}, LGeneralFunction/o$4;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 245
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    new-instance v3, LGeneralFunction/o$5;

    move/from16 v0, p7

    invoke-direct {v3, p0, v0}, LGeneralFunction/o$5;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 257
    :cond_1
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 258
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    const v2, 0x7f100127

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 260
    const v3, 0x7f100129

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 261
    const v5, 0x7f10012b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 264
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 265
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 267
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 268
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 271
    if-le v5, v6, :cond_6

    .line 272
    div-int/lit8 v5, v5, 0x23

    int-to-float v5, v5

    invoke-static {p0, v5}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v5

    .line 276
    :goto_1
    int-to-double v8, v8

    const-wide v10, 0x3fee666666666666L    # 0.95

    mul-double/2addr v8, v10

    double-to-int v6, v8

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x2

    .line 278
    int-to-float v8, v5

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 279
    int-to-float v8, v5

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 280
    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 282
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 283
    div-int/lit8 v8, v7, 0x10

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 286
    invoke-static {}, LGeneralFunction/d;->b()I

    move-result v8

    .line 289
    const/16 v9, 0xf

    if-eq v8, v9, :cond_2

    const/16 v9, 0x11

    if-ne v8, v9, :cond_3

    .line 292
    :cond_2
    div-int/lit8 v9, v7, 0xc

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 294
    div-int/lit8 v5, v6, 0x12

    const/4 v9, 0x0

    div-int/lit8 v10, v6, 0x12

    const/4 v11, 0x0

    invoke-virtual {v2, v5, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 298
    :cond_3
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 302
    div-int/lit8 v5, v7, 0x5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 303
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    const/16 v5, 0x10

    if-ne v8, v5, :cond_4

    .line 309
    int-to-double v8, v7

    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    div-double/2addr v8, v10

    double-to-int v5, v8

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 310
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 314
    :cond_4
    div-int/lit8 v2, v6, 0xe

    const/4 v5, 0x0

    div-int/lit8 v8, v6, 0xe

    const/4 v9, 0x0

    invoke-virtual {v3, v2, v5, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 315
    if-eqz p9, :cond_8

    .line 317
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v2, v5, :cond_7

    .line 318
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    .line 322
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 328
    :goto_3
    if-eqz p8, :cond_5

    .line 329
    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 331
    :cond_5
    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 332
    div-int/lit8 v3, v7, 0xf

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 333
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 336
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 338
    new-instance v2, LGeneralFunction/o$6;

    move/from16 v0, p6

    invoke-direct {v2, p0, v0}, LGeneralFunction/o$6;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 348
    check-cast p0, LGeneralFunction/a/a;

    sput-object p0, LGeneralFunction/o;->c:LGeneralFunction/a/a;

    goto/16 :goto_0

    .line 274
    :cond_6
    div-int/lit8 v5, v5, 0x14

    int-to-float v5, v5

    invoke-static {p0, v5}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v5

    goto/16 :goto_1

    .line 320
    :cond_7
    invoke-static/range {p4 .. p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_2

    .line 326
    :cond_8
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 10

    .prologue
    .line 217
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v9}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V

    .line 218
    return-void
.end method

.method public static a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 9

    .prologue
    .line 552
    const/4 v7, 0x0

    const v8, 0x7f0f0013

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    .line 553
    return-void
.end method

.method public static a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V
    .locals 9

    .prologue
    .line 557
    const v8, 0x7f0f0013

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    .line 558
    return-void
.end method

.method public static a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V
    .locals 14

    .prologue
    .line 562
    const/4 v2, 0x4

    sput v2, LGeneralFunction/o;->d:I

    .line 563
    invoke-static {p0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 564
    if-nez p1, :cond_0

    .line 671
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040064

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 572
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    .line 574
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 575
    if-eqz p2, :cond_1

    .line 576
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    new-instance v3, LGeneralFunction/o$10;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v0}, LGeneralFunction/o$10;-><init>(Landroid/content/Context;[I)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 581
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    new-instance v3, LGeneralFunction/o$1;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v0}, LGeneralFunction/o$1;-><init>(Landroid/content/Context;[I)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 593
    :cond_1
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 594
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    const v2, 0x7f100127

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 596
    const v3, 0x7f100129

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 597
    const v4, 0x7f10012f

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 598
    const v6, 0x7f100130

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 601
    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 602
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 604
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 605
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 608
    div-int/lit8 v7, v6, 0x15

    int-to-float v7, v7

    invoke-static {p0, v7}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v7

    .line 610
    int-to-double v10, v6

    const-wide v12, 0x3fee666666666666L    # 0.95

    mul-double/2addr v10, v12

    double-to-int v6, v10

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x2

    .line 612
    int-to-float v9, v7

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 613
    int-to-float v9, v7

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 614
    int-to-float v9, v7

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 615
    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 617
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 618
    div-int/lit8 v9, v8, 0x10

    iput v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 619
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 621
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 625
    div-int/lit8 v7, v8, 0x5

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 626
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 628
    if-eqz p7, :cond_2

    .line 629
    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 634
    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 637
    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 638
    div-int/lit8 v3, v8, 0xf

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 639
    div-int/lit8 v3, v6, 0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 641
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 642
    div-int/lit8 v3, v8, 0xf

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 643
    div-int/lit8 v3, v6, 0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 646
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    const/4 v3, 0x0

    aget-object v3, p5, v3

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 648
    new-instance v3, LGeneralFunction/o$2;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v0}, LGeneralFunction/o$2;-><init>(Landroid/content/Context;[I)V

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    const/4 v2, 0x1

    aget-object v2, p5, v2

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 659
    move/from16 v0, p8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 660
    new-instance v2, LGeneralFunction/o$3;

    move-object/from16 v0, p6

    invoke-direct {v2, p0, v0}, LGeneralFunction/o$3;-><init>(Landroid/content/Context;[I)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 670
    check-cast p0, LGeneralFunction/a/a;

    sput-object p0, LGeneralFunction/o;->c:LGeneralFunction/a/a;

    goto/16 :goto_0

    .line 632
    :cond_2
    div-int/lit8 v2, v6, 0xe

    const/4 v7, 0x0

    div-int/lit8 v9, v6, 0xe

    const/4 v10, 0x0

    invoke-virtual {v3, v2, v7, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 352
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p6

    invoke-static/range {v0 .. v8}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IIZ)V

    .line 353
    return-void
.end method

.method public static a(Landroid/content/Context;ZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;IIZ)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 356
    const/4 v2, 0x3

    sput v2, LGeneralFunction/o;->d:I

    .line 357
    invoke-static/range {p0 .. p0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 358
    if-nez p1, :cond_0

    .line 549
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    .line 364
    const/4 v2, 0x1

    if-ne v14, v2, :cond_1

    .line 366
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040063

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    .line 373
    :goto_1
    if-nez v13, :cond_2

    .line 375
    const-string v2, "UiDialog"

    const-string v3, "DialogWithSingleButtonInformation can\'t find view"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040062

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    goto :goto_1

    .line 379
    :cond_2
    new-instance v2, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    .line 381
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 382
    if-eqz p2, :cond_3

    .line 383
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    new-instance v3, LGeneralFunction/o$7;

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v3, v0, v1}, LGeneralFunction/o$7;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 388
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    new-instance v3, LGeneralFunction/o$8;

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v3, v0, v1}, LGeneralFunction/o$8;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 400
    :cond_3
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 401
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    const v2, 0x7f100127

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 403
    const v3, 0x7f100128

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 404
    const v4, 0x7f100131

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 405
    const v5, 0x7f100135

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 406
    const v6, 0x7f100132

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 407
    const v7, 0x7f100133

    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 408
    const v8, 0x7f100134

    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 409
    const v9, 0x7f100139

    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 410
    const v10, 0x7f100136

    invoke-virtual {v13, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 411
    const v11, 0x7f100137

    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 412
    const v12, 0x7f100138

    invoke-virtual {v13, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 413
    const v15, 0x7f10012b

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 416
    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 417
    iget v15, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 419
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v17

    div-int/lit8 v17, v17, 0x24

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v17

    .line 420
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v18

    div-int/lit8 v18, v18, 0x28

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v18

    .line 422
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fee666666666666L    # 0.95

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    mul-int/lit8 v19, v19, 0x2

    .line 424
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 425
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 426
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 427
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 428
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 429
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 430
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 431
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 432
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 433
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 434
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 436
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 437
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v18

    div-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 438
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 440
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 444
    const/4 v3, 0x1

    if-ne v14, v3, :cond_9

    .line 446
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v17, 0x6

    move/from16 v0, v17

    if-le v3, v0, :cond_8

    .line 448
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v17, 0x8

    move/from16 v0, v17

    if-gt v3, v0, :cond_7

    .line 450
    int-to-double v0, v15

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4004000000000000L    # 2.5

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 466
    :cond_4
    :goto_2
    move/from16 v0, v19

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 468
    move/from16 v0, v19

    div-int/lit16 v2, v0, 0x8c

    .line 469
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x1b

    .line 471
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_a

    .line 473
    div-int/lit8 v14, v19, 0xe

    div-int/lit8 v17, v19, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v14, v3, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 474
    div-int/lit8 v3, v19, 0xe

    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v3, v2, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 475
    div-int/lit8 v3, v19, 0xe

    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v3, v2, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 476
    div-int/lit8 v3, v19, 0xe

    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v3, v2, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 477
    div-int/lit8 v3, v19, 0xe

    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v3, v2, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 487
    :cond_5
    :goto_3
    div-int/lit8 v3, v19, 0xe

    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v3, v2, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 488
    div-int/lit8 v3, v19, 0xe

    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v3, v2, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 489
    div-int/lit8 v3, v19, 0xe

    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v2, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 490
    div-int/lit8 v3, v19, 0xe

    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v3, v2, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 492
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    const/4 v2, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    const/4 v2, 0x3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    const/4 v2, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    const/4 v2, 0x5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_c

    .line 500
    const/4 v2, 0x6

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    const/4 v2, 0x7

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_b

    .line 504
    const-string v2, ""

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :goto_4
    if-eqz p8, :cond_6

    .line 520
    const/16 v2, 0x11

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 521
    const/16 v2, 0x11

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 522
    const/16 v2, 0x11

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 523
    const/16 v2, 0x11

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 524
    const/16 v2, 0x11

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 525
    const/16 v2, 0x11

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 526
    const/16 v2, 0x11

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 527
    const/16 v2, 0x11

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 528
    const/16 v2, 0x11

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 531
    :cond_6
    invoke-virtual {v13}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 532
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v3, v3, 0xf

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 533
    move/from16 v0, v19

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 536
    invoke-virtual {v13, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 538
    new-instance v2, LGeneralFunction/o$9;

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v2, v0, v1}, LGeneralFunction/o$9;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    sget-object v2, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 548
    check-cast p0, LGeneralFunction/a/a;

    sput-object p0, LGeneralFunction/o;->c:LGeneralFunction/a/a;

    goto/16 :goto_0

    .line 454
    :cond_7
    int-to-double v0, v15

    move-wide/from16 v20, v0

    const-wide v22, 0x4002666666666666L    # 2.3

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    .line 459
    :cond_8
    int-to-double v0, v15

    move-wide/from16 v20, v0

    const-wide v22, 0x4008cccccccccccdL    # 3.1

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    .line 462
    :cond_9
    const/4 v3, 0x2

    if-ne v14, v3, :cond_4

    .line 464
    int-to-double v0, v15

    move-wide/from16 v20, v0

    const-wide v22, 0x4000cccccccccccdL    # 2.1

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    .line 479
    :cond_a
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_5

    .line 481
    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v14, v3, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 482
    const/4 v14, 0x0

    div-int/lit8 v17, v19, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v14, v3, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 483
    const/4 v3, 0x0

    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v3, v2, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 484
    const/4 v3, 0x0

    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v3, v2, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 485
    const/4 v3, 0x0

    div-int/lit8 v14, v19, 0xe

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v3, v2, v14, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 508
    :cond_b
    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 513
    :cond_c
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 515
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 89
    sget-object v1, LGeneralFunction/o;->c:LGeneralFunction/a/a;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    sget-object v1, LGeneralFunction/o;->b:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    sget-object v1, LGeneralFunction/o;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    sget-object v1, LGeneralFunction/o;->a:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    sget-object v1, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 101
    sget v0, LGeneralFunction/o;->d:I

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    sget-object v0, LGeneralFunction/o;->c:LGeneralFunction/a/a;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    sget-object v0, LGeneralFunction/o;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, LGeneralFunction/o;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 122
    :cond_0
    sput-object v1, LGeneralFunction/o;->b:Landroid/app/ProgressDialog;

    .line 123
    sget-object v0, LGeneralFunction/o;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, LGeneralFunction/o;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 125
    :cond_1
    sput-object v1, LGeneralFunction/o;->a:Landroid/app/Dialog;

    .line 127
    :cond_2
    return-void
.end method

.method static synthetic c()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 51
    sget-object v0, LGeneralFunction/o;->a:Landroid/app/Dialog;

    return-object v0
.end method
