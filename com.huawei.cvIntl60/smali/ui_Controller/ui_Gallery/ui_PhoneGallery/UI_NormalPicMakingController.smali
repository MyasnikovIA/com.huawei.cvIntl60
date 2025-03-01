.class public Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;
.super LGeneralFunction/a/a;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageButton;

.field private H:Landroid/widget/ImageButton;

.field private I:Landroid/widget/ImageButton;

.field private J:Landroid/widget/ImageButton;

.field private K:Landroid/widget/ImageButton;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/ImageView;

.field private N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

.field private O:Landroid/support/v7/widget/LinearLayoutManager;

.field private P:Landroid/widget/LinearLayout;

.field private Q:Landroid/widget/LinearLayout;

.field private R:Landroid/widget/LinearLayout;

.field private S:Landroid/widget/LinearLayout;

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/LinearLayout;

.field private X:Landroid/widget/LinearLayout;

.field private Y:Landroid/widget/ImageView;

.field private Z:Landroid/widget/LinearLayout;

.field private aa:Landroid/widget/Button;

.field private ab:F

.field private ac:I

.field private ad:F

.field private ae:Landroid/widget/FrameLayout;

.field private af:Landroid/widget/LinearLayout;

.field private ag:Landroid/widget/ImageButton;

.field private ah:Landroid/widget/ImageButton;

.field private ai:Landroid/widget/ImageView;

.field private aj:Landroid/widget/Space;

.field private ak:Landroid/widget/LinearLayout;

.field private al:Landroid/widget/LinearLayout;

.field private am:Landroid/widget/ImageButton;

.field private an:Landroid/widget/ListView;

.field private ao:Landroid/widget/TextView;

.field private ap:Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

.field private aq:Landroid/view/View$OnTouchListener;

.field private ar:Landroid/view/View$OnClickListener;

.field protected b:Lui_Controller/ui_StartMode/UI_ModeMain;

.field protected c:Lui_Controller/b/b;

.field protected d:Lui_Controller/b/e;

.field protected e:I

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/view/OrientationEventListener;

.field private o:Lui_Controller/ui_Gallery/ui_PhoneGallery/b;

.field private p:Landroid/graphics/Bitmap;

.field private q:I

.field private r:LThirdParty/OpenCV/OpenCVFunc;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/widget/ImageButton;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, LGeneralFunction/a/a;-><init>()V

    .line 72
    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j:I

    .line 73
    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->k:I

    .line 74
    iput v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->l:I

    .line 75
    iput v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->m:I

    .line 77
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->n:Landroid/view/OrientationEventListener;

    .line 79
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->o:Lui_Controller/ui_Gallery/ui_PhoneGallery/b;

    .line 80
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 81
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c:Lui_Controller/b/b;

    .line 82
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    .line 84
    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->e:I

    .line 85
    iput-boolean v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->f:Z

    .line 86
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p:Landroid/graphics/Bitmap;

    .line 87
    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->q:I

    .line 89
    iput-boolean v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->g:Z

    .line 90
    iput-boolean v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->h:Z

    .line 377
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->s:Landroid/widget/ImageButton;

    .line 378
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->t:Landroid/widget/ImageButton;

    .line 379
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->u:Landroid/widget/ImageButton;

    .line 380
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->v:Landroid/widget/ImageButton;

    .line 382
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->w:Landroid/widget/TextView;

    .line 383
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->x:Landroid/widget/TextView;

    .line 385
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->y:Landroid/widget/LinearLayout;

    .line 386
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->z:Landroid/widget/LinearLayout;

    .line 387
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->A:Landroid/widget/LinearLayout;

    .line 389
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->B:Landroid/widget/ImageView;

    .line 390
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->C:Landroid/widget/ImageView;

    .line 391
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->D:Landroid/widget/ImageView;

    .line 392
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->E:Landroid/widget/ImageView;

    .line 393
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->F:Landroid/widget/ImageView;

    .line 394
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->G:Landroid/widget/ImageButton;

    .line 395
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->H:Landroid/widget/ImageButton;

    .line 396
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->I:Landroid/widget/ImageButton;

    .line 397
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->J:Landroid/widget/ImageButton;

    .line 398
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->K:Landroid/widget/ImageButton;

    .line 399
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->L:Landroid/widget/LinearLayout;

    .line 400
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->M:Landroid/widget/ImageView;

    .line 402
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    .line 403
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->O:Landroid/support/v7/widget/LinearLayoutManager;

    .line 404
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->P:Landroid/widget/LinearLayout;

    .line 405
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Q:Landroid/widget/LinearLayout;

    .line 406
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->R:Landroid/widget/LinearLayout;

    .line 407
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->S:Landroid/widget/LinearLayout;

    .line 408
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->T:Landroid/widget/LinearLayout;

    .line 409
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->U:Landroid/widget/TextView;

    .line 410
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->V:Landroid/widget/TextView;

    .line 411
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->W:Landroid/widget/LinearLayout;

    .line 413
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->X:Landroid/widget/LinearLayout;

    .line 414
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Y:Landroid/widget/ImageView;

    .line 416
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Z:Landroid/widget/LinearLayout;

    .line 417
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->aa:Landroid/widget/Button;

    .line 419
    iput v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ab:F

    .line 420
    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ac:I

    .line 421
    iput v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ad:F

    .line 423
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ae:Landroid/widget/FrameLayout;

    .line 424
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->af:Landroid/widget/LinearLayout;

    .line 425
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ag:Landroid/widget/ImageButton;

    .line 426
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ah:Landroid/widget/ImageButton;

    .line 427
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ai:Landroid/widget/ImageView;

    .line 428
    iput-boolean v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->i:Z

    .line 434
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ak:Landroid/widget/LinearLayout;

    .line 435
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->al:Landroid/widget/LinearLayout;

    .line 436
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->am:Landroid/widget/ImageButton;

    .line 437
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->an:Landroid/widget/ListView;

    .line 438
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ao:Landroid/widget/TextView;

    .line 439
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ap:Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    .line 811
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$6;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$6;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->aq:Landroid/view/View$OnTouchListener;

    .line 863
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$7;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$7;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;F)F
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ab:F

    return p1
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->m:I

    return p1
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ak:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 94
    const-string v0, "UI_NormalPicMaking"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1030
    .line 1032
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->q:I

    packed-switch v0, :pswitch_data_0

    .line 1075
    :cond_0
    :goto_0
    return-object p1

    .line 1038
    :pswitch_0
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020109

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1051
    :goto_1
    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x78

    div-int/lit16 v1, v1, 0x64c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x78

    div-int/lit16 v2, v2, 0x64c

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bmScaledWatermark Height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    .line 1058
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1061
    if-eqz v1, :cond_0

    .line 1063
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1064
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1065
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, p1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1066
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x78

    div-int/lit16 v3, v3, 0x1500

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit16 v4, v4, 0x5b1

    div-int/lit16 v4, v4, 0x64c

    int-to-float v4, v4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1067
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1068
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1069
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1070
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    .line 1071
    goto/16 :goto_0

    .line 1041
    :pswitch_1
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 1044
    :pswitch_2
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020110

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 1047
    :pswitch_3
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020113

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->al:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1081
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v2}, LGeneralFunction/e/d;->o(I)Ljava/lang/String;

    move-result-object v0

    .line 1083
    invoke-static {v0}, LGeneralFunction/d;->c(Ljava/lang/String;)I

    move-result v0

    .line 1085
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1087
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1089
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1090
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1091
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    .line 1094
    :cond_0
    return-object p1
.end method

.method static synthetic c(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Lui_Controller/ui_Gallery/ui_PhoneGallery/d;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ap:Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    return-object v0
.end method

.method static synthetic d(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->U:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->V:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ab:F

    return v0
.end method

.method static synthetic g(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ac:I

    return v0
.end method

.method static synthetic h(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->m:I

    return v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ab:F

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ad:F

    .line 284
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 454
    const v0, 0x7f1001b0

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ak:Landroid/widget/LinearLayout;

    .line 455
    const v0, 0x7f1001b1

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->al:Landroid/widget/LinearLayout;

    .line 456
    const v0, 0x7f1001b3

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->am:Landroid/widget/ImageButton;

    .line 457
    const v0, 0x7f1001b4

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->an:Landroid/widget/ListView;

    .line 458
    const v0, 0x7f1001b2

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ao:Landroid/widget/TextView;

    .line 460
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ao:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    invoke-direct {v0, p0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ap:Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    .line 463
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ap:Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b(I)V

    .line 465
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->an:Landroid/widget/ListView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ap:Lui_Controller/ui_Gallery/ui_PhoneGallery/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 467
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->al:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ak:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->am:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ak:Landroid/widget/LinearLayout;

    new-instance v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$1;

    invoke-direct {v1, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$1;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 482
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->an:Landroid/widget/ListView;

    new-instance v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;

    invoke-direct {v1, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$2;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 507
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 510
    const v0, 0x7f1001b5

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ae:Landroid/widget/FrameLayout;

    .line 511
    const v0, 0x7f1001b7

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->af:Landroid/widget/LinearLayout;

    .line 512
    const v0, 0x7f1001b8

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ag:Landroid/widget/ImageButton;

    .line 513
    const v0, 0x7f1001ba

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ah:Landroid/widget/ImageButton;

    .line 514
    const v0, 0x7f1001b6

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ai:Landroid/widget/ImageView;

    .line 516
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ah:Landroid/widget/ImageButton;

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 517
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ag:Landroid/widget/ImageButton;

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 518
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ag:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ag:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ah:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ae:Landroid/widget/FrameLayout;

    new-instance v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$3;

    invoke-direct {v1, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$3;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 529
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ae:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 530
    return-void
.end method

.method private q()V
    .locals 6

    .prologue
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 627
    const v0, 0x7f1001ab

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->t:Landroid/widget/ImageButton;

    .line 628
    const v0, 0x7f1001ad

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->u:Landroid/widget/ImageButton;

    .line 629
    const v0, 0x7f1001af

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->v:Landroid/widget/ImageButton;

    .line 630
    const v0, 0x7f1001a9

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->s:Landroid/widget/ImageButton;

    .line 632
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->t:Landroid/widget/ImageButton;

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 633
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->u:Landroid/widget/ImageButton;

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 634
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->v:Landroid/widget/ImageButton;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 635
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->s:Landroid/widget/ImageButton;

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 636
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->s:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->s:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->t:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->u:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->v:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->w:Landroid/widget/TextView;

    .line 644
    const v0, 0x7f1001ae

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->x:Landroid/widget/TextView;

    .line 646
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j:I

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->k:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x28

    int-to-float v0, v0

    invoke-static {p0, v0}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v0

    .line 648
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    new-instance v1, LGeneralFunction/c;

    invoke-direct {v1, v0}, LGeneralFunction/c;-><init>(I)V

    int-to-double v2, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, LGeneralFunction/c;->d(I)LGeneralFunction/c;

    move-result-object v1

    int-to-double v2, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, LGeneralFunction/c;->o(I)LGeneralFunction/c;

    move-result-object v1

    int-to-double v2, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, LGeneralFunction/c;->f(I)LGeneralFunction/c;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, LGeneralFunction/c;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 654
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, LGeneralFunction/c;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 666
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 669
    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->L:Landroid/widget/LinearLayout;

    .line 670
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 671
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->M:Landroid/widget/ImageView;

    .line 672
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    const v0, 0x7f100197

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->aj:Landroid/widget/Space;

    .line 675
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j:I

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->k:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 676
    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j:I

    iget v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->k:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 677
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->P:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 679
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    .line 680
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    .line 684
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->M:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v2, v2, 0x78

    div-int/lit16 v2, v2, 0x64c

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 686
    mul-int/lit8 v0, v0, 0x78

    div-int/lit16 v0, v0, 0x1500

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 687
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    const v0, 0x7f10019e

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->A:Landroid/widget/LinearLayout;

    .line 690
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->A:Landroid/widget/LinearLayout;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 691
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 693
    const v0, 0x7f10019f

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->B:Landroid/widget/ImageView;

    .line 694
    const v0, 0x7f1001a1

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->C:Landroid/widget/ImageView;

    .line 695
    const v0, 0x7f1001a3

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->D:Landroid/widget/ImageView;

    .line 696
    const v0, 0x7f1001a5

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->E:Landroid/widget/ImageView;

    .line 697
    const v0, 0x7f1001a7

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->F:Landroid/widget/ImageView;

    .line 699
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->B:Landroid/widget/ImageView;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 700
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->C:Landroid/widget/ImageView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 701
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->D:Landroid/widget/ImageView;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 702
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->E:Landroid/widget/ImageView;

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 703
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->F:Landroid/widget/ImageView;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 705
    const v0, 0x7f1001a0

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->G:Landroid/widget/ImageButton;

    .line 706
    const v0, 0x7f1001a2

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->H:Landroid/widget/ImageButton;

    .line 707
    const v0, 0x7f1001a4

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->I:Landroid/widget/ImageButton;

    .line 708
    const v0, 0x7f1001a6

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->J:Landroid/widget/ImageButton;

    .line 709
    const v0, 0x7f1001a8

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->K:Landroid/widget/ImageButton;

    .line 711
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->G:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->H:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->I:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->J:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->K:Landroid/widget/ImageButton;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    const v0, 0x7f10019c

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->y:Landroid/widget/LinearLayout;

    .line 718
    const v0, 0x7f10019d

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->z:Landroid/widget/LinearLayout;

    .line 720
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(I)V

    .line 721
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 725
    const v0, 0x7f100191

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->P:Landroid/widget/LinearLayout;

    .line 726
    const v0, 0x7f100192

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Q:Landroid/widget/LinearLayout;

    .line 727
    const v0, 0x7f100195

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->R:Landroid/widget/LinearLayout;

    .line 728
    const v0, 0x7f100193

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->S:Landroid/widget/LinearLayout;

    .line 729
    const v0, 0x7f100194

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->T:Landroid/widget/LinearLayout;

    .line 730
    const v0, 0x7f100199

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->U:Landroid/widget/TextView;

    .line 731
    const v0, 0x7f10019b

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->V:Landroid/widget/TextView;

    .line 732
    const v0, 0x7f10019a

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->W:Landroid/widget/LinearLayout;

    .line 734
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->U:Landroid/widget/TextView;

    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 735
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->V:Landroid/widget/TextView;

    const v1, 0x7f0a00ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 736
    const v0, 0x7f100190

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    .line 737
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->O:Landroid/support/v7/widget/LinearLayoutManager;

    .line 738
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->O:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    .line 739
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->getAdapter()Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 740
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j:I

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ac:I

    .line 742
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 757
    const v0, 0x7f1001be

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Z:Landroid/widget/LinearLayout;

    .line 758
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Z:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Z:Landroid/widget/LinearLayout;

    new-instance v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$4;

    invoke-direct {v1, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$4;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 766
    const v0, 0x7f1001c1

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->aa:Landroid/widget/Button;

    .line 767
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->aa:Landroid/widget/Button;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 783
    const v0, 0x7f1001bb

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->X:Landroid/widget/LinearLayout;

    .line 784
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->X:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->X:Landroid/widget/LinearLayout;

    new-instance v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$5;

    invoke-direct {v1, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$5;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 792
    const v0, 0x7f1001bc

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Y:Landroid/widget/ImageView;

    .line 793
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 1099
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$9;

    invoke-direct {v0, p0, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$9;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;Landroid/content/Context;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->n:Landroid/view/OrientationEventListener;

    .line 1122
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x3

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    .line 935
    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ab:F

    iget v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ac:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, v1

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Panorama degree: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    .line 937
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lui_Controller/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "result.jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 940
    invoke-static {p1}, LGeneralFunction/d;->c(Ljava/lang/String;)I

    move-result v6

    .line 941
    if-eq v6, v4, :cond_0

    move v6, v0

    .line 945
    :cond_0
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->r:LThirdParty/OpenCV/OpenCVFunc;

    float-to-double v4, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, LThirdParty/OpenCV/OpenCVFunc;->PanoramaPath(Ljava/lang/String;Ljava/lang/String;DI)Z

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Panorama get:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    .line 949
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 950
    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 951
    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 953
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 956
    return-object v0
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, p1}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;J)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendUiMsg error!! Msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(La/c/a;J)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, p1, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;J)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendUiMsg error!! MsgEx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, La/c/a;->b()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1008
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    new-instance v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;

    invoke-direct {v1, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController$8;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)V

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    .line 1026
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->o:Lui_Controller/ui_Gallery/ui_PhoneGallery/b;

    invoke-virtual {v0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;->a(Landroid/os/Message;)V

    .line 375
    return-void
.end method

.method protected a(Z)V
    .locals 2

    .prologue
    .line 534
    iput-boolean p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->i:Z

    .line 536
    if-eqz p1, :cond_1

    .line 538
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ai:Landroid/widget/ImageView;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 541
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ae:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 548
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ae:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 546
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->m()V

    goto :goto_0
.end method

.method public b(IJ)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, p1, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(IJ)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v0, "UI_SendAidMsg error!!"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(Landroid/os/Message;)V
    .locals 29

    .prologue
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AidServer_Handler:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    .line 162
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 232
    :goto_0
    :pswitch_0
    return-void

    .line 166
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->o(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p:Landroid/graphics/Bitmap;

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p:Landroid/graphics/Bitmap;

    .line 174
    const/16 v2, 0x2b22

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(I)V

    goto :goto_0

    .line 180
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 181
    const-string v3, "tmp"

    invoke-static {v2, v3}, LGeneralFunction/g/a;->a(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lui_Controller/a/c;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LGeneralFunction/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b(Ljava/lang/String;)V

    .line 185
    new-instance v4, La/c/a;

    const/16 v5, 0x5000

    invoke-direct {v4, v5}, La/c/a;-><init>(I)V

    .line 186
    const-string v5, "path"

    invoke-virtual {v4, v5, v3}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v3, "time"

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, La/c/a;->a(Ljava/lang/String;J)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2, v4}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(La/c/a;)V

    goto :goto_0

    .line 194
    :pswitch_3
    new-instance v2, La/c/a;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 195
    const-string v3, "path"

    invoke-virtual {v2, v3}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    const-string v4, "time"

    invoke-virtual {v2, v4}, La/c/a;->c(Ljava/lang/String;)J

    move-result-wide v14

    .line 198
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->h:Z

    if-eqz v2, :cond_1

    .line 200
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 205
    :cond_0
    const/16 v2, 0x2b2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(I)V

    goto/16 :goto_0

    .line 209
    :cond_1
    const-string v2, "jpg"

    invoke-static {v3, v2}, LGeneralFunction/g/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->c()I

    move-result v16

    .line 215
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 216
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v2}, LGeneralFunction/b;->a(Ljava/lang/String;)I

    move-result v10

    invoke-static {v2}, LGeneralFunction/b;->b(Ljava/lang/String;)I

    move-result v11

    const-wide/16 v12, 0x0

    add-int/lit8 v18, v16, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-wide/from16 v16, v14

    invoke-virtual/range {v3 .. v28}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZZZ)V

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->x()I

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v4, v4, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c:Lui_Controller/b/b;

    iget-object v5, v5, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v5}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 223
    move-object/from16 v0, p0

    invoke-static {v0, v2}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    invoke-virtual {v3}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->y()V

    .line 225
    const/16 v3, 0x2b27

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lui_Controller/b/e;->A:Z

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iput-object v2, v3, Lui_Controller/b/e;->B:Ljava/lang/String;

    goto/16 :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x5000
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 960
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 962
    const/16 v3, 0x64

    .line 963
    const/4 v1, 0x0

    .line 967
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_0
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 975
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 977
    :cond_0
    if-eqz v0, :cond_1

    .line 979
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 984
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->m()V

    .line 985
    return-void

    .line 969
    :catch_0
    move-exception v0

    .line 971
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 980
    :catch_1
    move-exception v0

    .line 981
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected b(Z)V
    .locals 2

    .prologue
    .line 771
    if-eqz p1, :cond_0

    .line 773
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Z:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 779
    :goto_0
    return-void

    .line 777
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Z:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 288
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j:I

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ac:I

    .line 289
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ac:I

    int-to-float v0, v0

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ad:F

    mul-float/2addr v0, v1

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ab:F

    .line 291
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ab:F

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->scrollBy(II)V

    .line 292
    return-void
.end method

.method protected c(I)V
    .locals 3

    .prologue
    const v2, 0x7f020105

    const/4 v1, 0x0

    .line 591
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->G:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 592
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 593
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 594
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 595
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->K:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 596
    packed-switch p1, :pswitch_data_0

    .line 623
    :goto_0
    return-void

    .line 598
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->G:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 600
    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->q:I

    goto :goto_0

    .line 603
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->M:Landroid/widget/ImageView;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 604
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->H:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 605
    const/4 v0, 0x1

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->q:I

    goto :goto_0

    .line 608
    :pswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->M:Landroid/widget/ImageView;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->I:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 610
    const/4 v0, 0x2

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->q:I

    goto :goto_0

    .line 613
    :pswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->M:Landroid/widget/ImageView;

    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 614
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->J:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 615
    const/4 v0, 0x3

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->q:I

    goto :goto_0

    .line 618
    :pswitch_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->M:Landroid/widget/ImageView;

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 619
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->K:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 620
    const/4 v0, 0x4

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->q:I

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 797
    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->X:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Y:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 801
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lui_Controller/b/e;->z:Z

    .line 809
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->X:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->Y:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 807
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iput-boolean v2, v0, Lui_Controller/b/e;->z:Z

    goto :goto_0
.end method

.method protected d()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 296
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iput-boolean v2, v0, Lui_Controller/b/e;->x:Z

    .line 297
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 299
    iput-boolean v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->g:Z

    .line 300
    const/16 v0, 0x2104

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(IJ)V

    .line 302
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 1126
    invoke-static {p0, p1}, LGeneralFunction/d;->a(Landroid/app/Activity;I)V

    .line 1127
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->q()V

    .line 444
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->r()V

    .line 445
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->t()V

    .line 446
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->u()V

    .line 447
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p()V

    .line 448
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->o()V

    .line 449
    return-void
.end method

.method protected f()Z
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, LGeneralFunction/e/d;->o(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const/4 v0, 0x1

    .line 557
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ai:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ai:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 564
    :cond_0
    return-void
.end method

.method protected h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 567
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->t:Landroid/widget/ImageButton;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 571
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 572
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->P:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->ar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->A:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->t:Landroid/widget/ImageButton;

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 577
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 578
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->P:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0
.end method

.method protected i()V
    .locals 3

    .prologue
    .line 583
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->A:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->t:Landroid/widget/ImageButton;

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 585
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->P:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->P:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 588
    return-void
.end method

.method protected j()V
    .locals 3

    .prologue
    .line 746
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->a(Landroid/support/v7/widget/RecyclerView$a;Z)V

    .line 747
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->N:Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/CustomRecyclerView/CustomRecyclerView;->y()V

    .line 752
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j()V

    .line 753
    return-void
.end method

.method protected l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 989
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->M:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 996
    return-void
.end method

.method protected m()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1001
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->p:Landroid/graphics/Bitmap;

    .line 1003
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    const v0, 0x8000

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(IJ)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 306
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 307
    const-string v0, "onConfigurationChanged"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    .line 308
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->v()V

    .line 311
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->n()V

    .line 313
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 315
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j:I

    .line 316
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->k:I

    .line 318
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->l:I

    .line 320
    new-instance v0, La/c/a;

    const/16 v1, 0x2f06

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 321
    const-string v1, "mode"

    const/16 v2, 0xf00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 322
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(La/c/a;J)V

    .line 324
    invoke-static {}, LGeneralFunction/o;->a()V

    .line 325
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v2, 0x7f040076

    .line 237
    invoke-super {p0, p1}, LGeneralFunction/a/a;->onCreate(Landroid/os/Bundle;)V

    .line 238
    const-string v0, "onCreate"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    .line 239
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lui_Controller/ui_StartMode/UI_ModeMain;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 240
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->v()V

    .line 243
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 245
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j:I

    .line 246
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->k:I

    .line 248
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->k:I

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->j:I

    if-le v0, v1, :cond_0

    .line 250
    const/4 v0, 0x1

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->l:I

    .line 251
    invoke-virtual {p0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->setContentView(I)V

    .line 260
    :goto_0
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/b;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->o:Lui_Controller/ui_Gallery/ui_PhoneGallery/b;

    .line 261
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c:Lui_Controller/b/b;

    .line 262
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    .line 263
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0xf10

    invoke-virtual {v0, v1, p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 265
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->v()V

    .line 267
    new-instance v0, LThirdParty/OpenCV/OpenCVFunc;

    invoke-direct {v0}, LThirdParty/OpenCV/OpenCVFunc;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->r:LThirdParty/OpenCV/OpenCVFunc;

    .line 269
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->s()V

    .line 270
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 271
    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 272
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->d:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    invoke-virtual {v1, v2}, LGeneralFunction/e/d;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    invoke-direct {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 276
    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Landroid/graphics/Bitmap;)V

    .line 278
    const/16 v0, 0x2f01

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(IJ)V

    .line 279
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->l:I

    .line 256
    invoke-virtual {p0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 365
    invoke-super {p0}, LGeneralFunction/a/a;->onDestroy()V

    .line 366
    new-instance v0, La/c/a;

    const/16 v1, 0x2f05

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 367
    const-string v1, "mode"

    const/16 v2, 0xf00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 368
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(La/c/a;J)V

    .line 369
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 344
    invoke-super {p0}, LGeneralFunction/a/a;->onPause()V

    .line 345
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->n:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 346
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->b:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0xf20

    if-ne v0, v1, :cond_0

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->h:Z

    .line 350
    :cond_0
    new-instance v0, La/c/a;

    const/16 v1, 0x2f03

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 351
    const-string v1, "mode"

    const/16 v2, 0xf00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 352
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(La/c/a;J)V

    .line 353
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 329
    invoke-super {p0}, LGeneralFunction/a/a;->onResume()V

    .line 330
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->n:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 331
    new-instance v0, La/c/a;

    const/16 v1, 0x2f02

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 332
    const-string v1, "mode"

    const/16 v2, 0xf00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 333
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(La/c/a;J)V

    .line 334
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->n()V

    .line 335
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const-string v0, "Original File Not Exist!"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(Ljava/lang/String;I)V

    .line 338
    const/16 v0, 0x2104

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(I)V

    .line 340
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 357
    invoke-super {p0}, LGeneralFunction/a/a;->onStop()V

    .line 358
    new-instance v0, La/c/a;

    const/16 v1, 0x2f04

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 359
    const-string v1, "mode"

    const/16 v2, 0xf00

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 360
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;->a(La/c/a;J)V

    .line 361
    return-void
.end method
