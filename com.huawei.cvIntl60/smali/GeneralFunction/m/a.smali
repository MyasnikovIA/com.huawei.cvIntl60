.class public LGeneralFunction/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lui_Controller/b/f;

.field public static b:Lui_Controller/ui_StartMode/UI_ModeMain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    .line 25
    sput-object v0, LGeneralFunction/m/a;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    return-void
.end method

.method public constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sput-object p1, LGeneralFunction/m/a;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 30
    iget-object v0, p1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->l:Lui_Controller/b/f;

    sput-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    .line 31
    return-void
.end method

.method public static A()I
    .locals 1

    .prologue
    .line 825
    invoke-static {}, LGeneralFunction/m/a;->b()I

    move-result v0

    invoke-static {v0}, La/c/b;->f(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 831
    const/16 v0, 0x3c0

    .line 834
    :goto_0
    return v0

    .line 827
    :pswitch_0
    const/16 v0, 0x280

    .line 828
    goto :goto_0

    .line 825
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public static A(I)V
    .locals 1

    .prologue
    .line 475
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->H:I

    .line 476
    return-void
.end method

.method public static B(I)V
    .locals 1

    .prologue
    .line 478
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->z:I

    .line 479
    return-void
.end method

.method public static C(I)V
    .locals 1

    .prologue
    .line 490
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->N:I

    .line 491
    return-void
.end method

.method public static D(I)V
    .locals 1

    .prologue
    .line 493
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->O:I

    .line 494
    return-void
.end method

.method public static E(I)V
    .locals 1

    .prologue
    .line 496
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->P:I

    .line 497
    return-void
.end method

.method public static F(I)V
    .locals 2

    .prologue
    .line 563
    new-instance v0, La/c/a;

    const/16 v1, 0x4850

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 564
    const-string v1, "setting"

    invoke-virtual {v0, v1, p0}, La/c/a;->a(Ljava/lang/String;I)V

    .line 565
    sget-object v1, LGeneralFunction/m/a;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 566
    return-void
.end method

.method public static G(I)V
    .locals 2

    .prologue
    .line 569
    new-instance v0, La/c/a;

    const/16 v1, 0x4851

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 570
    const-string v1, "setting"

    invoke-virtual {v0, v1, p0}, La/c/a;->a(Ljava/lang/String;I)V

    .line 571
    sget-object v1, LGeneralFunction/m/a;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 572
    return-void
.end method

.method public static H(I)V
    .locals 0

    .prologue
    .line 575
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 206
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->d:I

    return v0
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 372
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->d:I

    .line 373
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 482
    sget-object v0, LGeneralFunction/m/a;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->j:Lui_Controller/b/o;

    iput-object p0, v0, Lui_Controller/b/o;->d:Ljava/lang/String;

    .line 483
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 35
    const-string v0, "UI_SettingControl"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 404
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput-boolean p0, v0, Lui_Controller/b/f;->ae:Z

    .line 405
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 209
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->e:I

    return v0
.end method

.method public static b(I)V
    .locals 1

    .prologue
    .line 375
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->e:I

    .line 376
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 486
    sget-object v0, LGeneralFunction/m/a;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->j:Lui_Controller/b/o;

    iput-object p0, v0, Lui_Controller/b/o;->e:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public static b(Z)V
    .locals 1

    .prologue
    .line 407
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput-boolean p0, v0, Lui_Controller/b/f;->af:Z

    .line 408
    return-void
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 212
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->f:I

    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 751
    sget-object v0, LGeneralFunction/m/a;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->b()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 752
    new-instance v0, La/c/a;

    const/16 v1, 0x4358

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 757
    const-string v1, "value"

    invoke-virtual {v0, v1, p0}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    sget-object v1, LGeneralFunction/m/a;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 759
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 755
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static c(I)V
    .locals 1

    .prologue
    .line 379
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->f:I

    .line 380
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 215
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->g:I

    return v0
.end method

.method public static d(I)V
    .locals 1

    .prologue
    .line 382
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->g:I

    .line 383
    return-void
.end method

.method public static d(Z)V
    .locals 1

    .prologue
    .line 523
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput-boolean p0, v0, Lui_Controller/b/f;->S:Z

    .line 524
    return-void
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 218
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->h:I

    return v0
.end method

.method public static e(I)V
    .locals 1

    .prologue
    .line 385
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->h:I

    .line 386
    return-void
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 221
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->i:I

    return v0
.end method

.method public static f(I)V
    .locals 1

    .prologue
    .line 388
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->i:I

    .line 389
    return-void
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 224
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->j:I

    return v0
.end method

.method public static g(I)V
    .locals 1

    .prologue
    .line 391
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->j:I

    .line 392
    return-void
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 227
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->l:I

    return v0
.end method

.method public static h(I)V
    .locals 1

    .prologue
    .line 394
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->l:I

    .line 395
    return-void
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 230
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->k:I

    return v0
.end method

.method public static i(I)V
    .locals 1

    .prologue
    .line 397
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->k:I

    .line 398
    return-void
.end method

.method public static j()I
    .locals 1

    .prologue
    .line 233
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->I:I

    return v0
.end method

.method public static j(I)V
    .locals 1

    .prologue
    .line 400
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->m:I

    .line 401
    return-void
.end method

.method public static k()I
    .locals 1

    .prologue
    .line 236
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->J:I

    return v0
.end method

.method public static k(I)V
    .locals 1

    .prologue
    .line 425
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->f:I

    return-void
.end method

.method public static l()I
    .locals 1

    .prologue
    .line 239
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->K:I

    return v0
.end method

.method public static l(I)V
    .locals 1

    .prologue
    .line 428
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->v:I

    .line 429
    return-void
.end method

.method public static m()I
    .locals 1

    .prologue
    .line 242
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->m:I

    return v0
.end method

.method public static m(I)V
    .locals 1

    .prologue
    .line 431
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->I:I

    .line 432
    return-void
.end method

.method public static n()I
    .locals 1

    .prologue
    .line 254
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->I:I

    return v0
.end method

.method public static n(I)V
    .locals 1

    .prologue
    .line 434
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->J:I

    .line 435
    return-void
.end method

.method public static o()I
    .locals 1

    .prologue
    .line 257
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->J:I

    return v0
.end method

.method public static o(I)V
    .locals 1

    .prologue
    .line 437
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->K:I

    .line 438
    return-void
.end method

.method public static p()I
    .locals 1

    .prologue
    .line 260
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->K:I

    return v0
.end method

.method public static p(I)V
    .locals 1

    .prologue
    .line 440
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->w:I

    .line 441
    return-void
.end method

.method public static q()I
    .locals 1

    .prologue
    .line 315
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v0, v0, Lui_Controller/b/f;->M:I

    return v0
.end method

.method public static q(I)V
    .locals 1

    .prologue
    .line 442
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->e:I

    return-void
.end method

.method public static r(I)V
    .locals 1

    .prologue
    .line 444
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->L:I

    .line 445
    return-void
.end method

.method public static r()Z
    .locals 1

    .prologue
    .line 344
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->R:Z

    return v0
.end method

.method public static s(I)V
    .locals 1

    .prologue
    .line 447
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->E:I

    .line 452
    return-void
.end method

.method public static s()Z
    .locals 1

    .prologue
    .line 359
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->S:Z

    return v0
.end method

.method public static t(I)V
    .locals 1

    .prologue
    .line 454
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->D:I

    .line 455
    return-void
.end method

.method public static t()Z
    .locals 1

    .prologue
    .line 363
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->ae:Z

    return v0
.end method

.method public static u(I)V
    .locals 1

    .prologue
    .line 457
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->x:I

    .line 458
    return-void
.end method

.method public static u()Z
    .locals 1

    .prologue
    .line 366
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget-boolean v0, v0, Lui_Controller/b/f;->af:Z

    return v0
.end method

.method public static v()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 412
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput-boolean v1, v0, Lui_Controller/b/f;->ae:Z

    .line 413
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput-boolean v1, v0, Lui_Controller/b/f;->af:Z

    .line 414
    return-void
.end method

.method public static v(I)V
    .locals 1

    .prologue
    .line 460
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->y:I

    .line 461
    return-void
.end method

.method public static w()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    const/4 v1, 0x6

    iput v1, v0, Lui_Controller/b/f;->I:I

    .line 421
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput v2, v0, Lui_Controller/b/f;->J:I

    .line 422
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput v2, v0, Lui_Controller/b/f;->K:I

    .line 423
    return-void
.end method

.method public static w(I)V
    .locals 1

    .prologue
    .line 463
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->F:I

    .line 464
    return-void
.end method

.method public static x()I
    .locals 2

    .prologue
    const/16 v0, 0x1500

    .line 776
    invoke-static {}, LGeneralFunction/m/a;->c()I

    move-result v1

    invoke-static {v1}, La/c/b;->e(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 787
    :goto_0
    :pswitch_0
    return v0

    .line 781
    :pswitch_1
    const/16 v0, 0xf00

    .line 782
    goto :goto_0

    .line 776
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static x(I)V
    .locals 1

    .prologue
    .line 466
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->G:I

    .line 467
    return-void
.end method

.method public static y()I
    .locals 2

    .prologue
    const/16 v0, 0xa80

    .line 793
    invoke-static {}, LGeneralFunction/m/a;->c()I

    move-result v1

    invoke-static {v1}, La/c/b;->e(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 804
    :goto_0
    :pswitch_0
    return v0

    .line 798
    :pswitch_1
    const/16 v0, 0x780

    .line 799
    goto :goto_0

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static y(I)V
    .locals 1

    .prologue
    .line 469
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->A:I

    .line 470
    return-void
.end method

.method public static z()I
    .locals 1

    .prologue
    .line 810
    invoke-static {}, LGeneralFunction/m/a;->b()I

    move-result v0

    invoke-static {v0}, La/c/b;->f(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 816
    const/16 v0, 0x780

    .line 819
    :goto_0
    return v0

    .line 812
    :pswitch_0
    const/16 v0, 0x500

    .line 813
    goto :goto_0

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public static z(I)V
    .locals 1

    .prologue
    .line 472
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iput p0, v0, Lui_Controller/b/f;->B:I

    .line 473
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 40
    .line 41
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 43
    const-string v1, "result"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 44
    const-string v0, "CONNECTION ERROR!"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LGeneralFunction/m/a;->a(Ljava/lang/String;I)V

    .line 202
    :goto_0
    return-void

    .line 47
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 192
    :sswitch_0
    sget-object v1, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    const-string v2, "DscName"

    invoke-virtual {v0, v2}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lui_Controller/b/f;->b:Ljava/lang/String;

    .line 193
    sget-object v1, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    const-string v2, "DscVersion"

    invoke-virtual {v0, v2}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lui_Controller/b/f;->a:Ljava/lang/String;

    .line 194
    sget-object v1, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    const-string v2, "DscGuid"

    invoke-virtual {v0, v2}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lui_Controller/b/f;->c:Ljava/lang/String;

    .line 196
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    sget-object v1, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget-object v1, v1, Lui_Controller/b/f;->a:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lui_Controller/b/f;->Z:I

    .line 197
    sget-object v0, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    sget-object v1, LGeneralFunction/m/a;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fw"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lui_Controller/b/f;->aa:I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DscVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v1, v1, Lui_Controller/b/f;->Z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UpgradeVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LGeneralFunction/m/a;->a:Lui_Controller/b/f;

    iget v1, v1, Lui_Controller/b/f;->aa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/m/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 49
    :sswitch_1
    invoke-static {}, LGeneralFunction/m/a;->w()V

    goto/16 :goto_0

    .line 55
    :sswitch_2
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->a(Ljava/lang/String;)I

    move-result v0

    .line 56
    invoke-static {v0}, LGeneralFunction/m/a;->k(I)V

    goto/16 :goto_0

    .line 62
    :sswitch_3
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->b(Ljava/lang/String;)I

    move-result v0

    .line 63
    invoke-static {v0}, LGeneralFunction/m/a;->l(I)V

    goto/16 :goto_0

    .line 68
    :sswitch_4
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->c(Ljava/lang/String;)I

    move-result v0

    .line 69
    invoke-static {v0}, LGeneralFunction/m/a;->m(I)V

    goto/16 :goto_0

    .line 75
    :sswitch_5
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->d(Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-static {v0}, LGeneralFunction/m/a;->p(I)V

    goto/16 :goto_0

    .line 82
    :sswitch_6
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->e(Ljava/lang/String;)I

    move-result v0

    .line 83
    invoke-static {v0}, LGeneralFunction/m/a;->q(I)V

    goto/16 :goto_0

    .line 88
    :sswitch_7
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->f(Ljava/lang/String;)I

    move-result v0

    .line 89
    invoke-static {v0}, LGeneralFunction/m/a;->r(I)V

    goto/16 :goto_0

    .line 95
    :sswitch_8
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->g(Ljava/lang/String;)I

    move-result v0

    .line 96
    invoke-static {v0}, LGeneralFunction/m/a;->s(I)V

    goto/16 :goto_0

    .line 102
    :sswitch_9
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->h(Ljava/lang/String;)I

    move-result v0

    .line 103
    invoke-static {v0}, LGeneralFunction/m/a;->t(I)V

    goto/16 :goto_0

    .line 109
    :sswitch_a
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->i(Ljava/lang/String;)I

    move-result v0

    .line 110
    invoke-static {v0}, LGeneralFunction/m/a;->u(I)V

    goto/16 :goto_0

    .line 116
    :sswitch_b
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->j(Ljava/lang/String;)I

    move-result v0

    .line 117
    invoke-static {v0}, LGeneralFunction/m/a;->v(I)V

    goto/16 :goto_0

    .line 122
    :sswitch_c
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->k(Ljava/lang/String;)I

    move-result v0

    .line 123
    invoke-static {v0}, LGeneralFunction/m/a;->w(I)V

    goto/16 :goto_0

    .line 128
    :sswitch_d
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->l(Ljava/lang/String;)I

    move-result v0

    .line 129
    invoke-static {v0}, LGeneralFunction/m/a;->x(I)V

    goto/16 :goto_0

    .line 135
    :sswitch_e
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->m(Ljava/lang/String;)I

    move-result v0

    .line 136
    invoke-static {v0}, LGeneralFunction/m/a;->y(I)V

    goto/16 :goto_0

    .line 142
    :sswitch_f
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->n(Ljava/lang/String;)I

    move-result v0

    .line 143
    invoke-static {v0}, LGeneralFunction/m/a;->z(I)V

    goto/16 :goto_0

    .line 148
    :sswitch_10
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->o(Ljava/lang/String;)I

    move-result v0

    .line 149
    invoke-static {v0}, LGeneralFunction/m/a;->A(I)V

    goto/16 :goto_0

    .line 155
    :sswitch_11
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->p(Ljava/lang/String;)I

    move-result v0

    .line 156
    invoke-static {v0}, LGeneralFunction/m/a;->B(I)V

    goto/16 :goto_0

    .line 163
    :sswitch_12
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/m/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :sswitch_13
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/m/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :sswitch_14
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, LGeneralFunction/m/a;->D(I)V

    goto/16 :goto_0

    .line 179
    :sswitch_15
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, LGeneralFunction/m/a;->E(I)V

    goto/16 :goto_0

    .line 186
    :sswitch_16
    const-string v1, "value"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/b;->q(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, LGeneralFunction/m/a;->C(I)V

    goto/16 :goto_0

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x4202 -> :sswitch_0
        0x4260 -> :sswitch_16
        0x4301 -> :sswitch_14
        0x4302 -> :sswitch_15
        0x4305 -> :sswitch_4
        0x4307 -> :sswitch_2
        0x430a -> :sswitch_6
        0x430d -> :sswitch_3
        0x430f -> :sswitch_5
        0x4311 -> :sswitch_7
        0x4313 -> :sswitch_8
        0x4315 -> :sswitch_9
        0x4317 -> :sswitch_b
        0x4319 -> :sswitch_c
        0x431b -> :sswitch_d
        0x431d -> :sswitch_e
        0x431f -> :sswitch_f
        0x4321 -> :sswitch_10
        0x4323 -> :sswitch_a
        0x4325 -> :sswitch_11
        0x4327 -> :sswitch_12
        0x4329 -> :sswitch_13
        0x4402 -> :sswitch_0
        0x4460 -> :sswitch_16
        0x4505 -> :sswitch_12
        0x4507 -> :sswitch_13
        0x450a -> :sswitch_3
        0x450c -> :sswitch_5
        0x450e -> :sswitch_2
        0x4511 -> :sswitch_6
        0x4516 -> :sswitch_b
        0x4518 -> :sswitch_a
        0x451a -> :sswitch_11
        0x451c -> :sswitch_e
        0x451e -> :sswitch_f
        0x4520 -> :sswitch_9
        0x4526 -> :sswitch_8
        0x4803 -> :sswitch_1
    .end sparse-switch
.end method
