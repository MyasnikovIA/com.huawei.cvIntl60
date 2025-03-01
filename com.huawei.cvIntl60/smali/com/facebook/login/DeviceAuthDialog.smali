.class public Lcom/facebook/login/DeviceAuthDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/DeviceAuthDialog$RequestState;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/facebook/login/DeviceAuthMethodHandler;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile f:Lcom/facebook/n;

.field private volatile g:Ljava/util/concurrent/ScheduledFuture;

.field private volatile h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

.field private i:Landroid/app/Dialog;

.field private j:Z

.field private k:Z

.field private l:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    .line 94
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Lcom/facebook/login/LoginClient$Request;

    return-void
.end method

.method private a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 219
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/a/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 223
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/g;->a(Landroid/content/Context;)Lcom/facebook/a/g;

    move-result-object v0

    .line 230
    const-string v1, "fb_smart_login_service"

    invoke-virtual {v0, v1, v3, v3}, Lcom/facebook/a/g;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->c()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/u$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p6}, Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;Lcom/facebook/internal/u$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/u$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;Lcom/facebook/internal/u$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/internal/u$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 11

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$string;->com_facebook_smart_login_confirmation_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/R$string;->com_facebook_smart_login_confirmation_continue_as:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/common/R$string;->com_facebook_smart_login_confirmation_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 361
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 362
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 364
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v0, Lcom/facebook/login/DeviceAuthDialog$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/DeviceAuthDialog$6;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/u$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 365
    invoke-virtual {v10, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$5;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$5;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 375
    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 383
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/internal/u$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 10

    .prologue
    .line 474
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 476
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-virtual {p2}, Lcom/facebook/internal/u$b;->a()Ljava/util/List;

    move-result-object v4

    .line 479
    invoke-virtual {p2}, Lcom/facebook/internal/u$b;->b()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/facebook/c;->i:Lcom/facebook/c;

    const/4 v8, 0x0

    move-object v1, p3

    move-object v3, p1

    move-object v7, p4

    move-object v9, p5

    .line 474
    invoke-virtual/range {v0 .. v9}, Lcom/facebook/login/DeviceAuthMethodHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 484
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 485
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 11

    .prologue
    .line 388
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 389
    const-string v0, "fields"

    const-string v1, "id,permissions,name"

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v7, Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 391
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 394
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    new-instance v9, Ljava/util/Date;

    .line 395
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 399
    :goto_1
    new-instance v0, Lcom/facebook/AccessToken;

    .line 401
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 410
    new-instance v1, Lcom/facebook/GraphRequest;

    const-string v3, "me"

    sget-object v5, Lcom/facebook/q;->a:Lcom/facebook/q;

    new-instance v6, Lcom/facebook/login/DeviceAuthDialog$7;

    invoke-direct {v6, p0, p1, v7, v9}, Lcom/facebook/login/DeviceAuthDialog$7;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    move-object v2, v0

    move-object v4, v10

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    .line 466
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->j()Lcom/facebook/n;

    .line 467
    return-void

    .line 391
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 395
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b(J)V

    .line 273
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->d()Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->j()Lcom/facebook/n;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/n;

    .line 274
    return-void
.end method

.method static synthetic b(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->b()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 277
    invoke-static {}, Lcom/facebook/login/DeviceAuthMethodHandler;->d()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$3;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 284
    invoke-virtual {v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 277
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/ScheduledFuture;

    .line 286
    return-void
.end method

.method private d()Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 289
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 290
    const-string v0, "code"

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    const-string v2, "device/login_status"

    sget-object v4, Lcom/facebook/q;->b:Lcom/facebook/q;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$4;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$4;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->c()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/login/DeviceAuthDialog;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/login/DeviceAuthDialog;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    return v0
.end method


# virtual methods
.method protected a(Z)Landroid/view/View;
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 245
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->b(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 246
    sget v0, Lcom/facebook/common/R$id;->progress_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->a:Landroid/view/View;

    .line 247
    sget v0, Lcom/facebook/common/R$id;->confirmation_code:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    .line 249
    sget v0, Lcom/facebook/common/R$id;->cancel_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 250
    new-instance v2, Lcom/facebook/login/DeviceAuthDialog$2;

    invoke-direct {v2, p0}, Lcom/facebook/login/DeviceAuthDialog$2;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    sget v0, Lcom/facebook/common/R$id;->com_facebook_device_auth_instructions:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/widget/TextView;

    .line 259
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/widget/TextView;

    sget v2, Lcom/facebook/common/R$string;->com_facebook_device_auth_instructions:I

    .line 260
    invoke-virtual {p0, v2}, Lcom/facebook/login/DeviceAuthDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 259
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    return-object v1
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/a/a;->c(Ljava/lang/String;)V

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthMethodHandler;->c()V

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected a(Lcom/facebook/h;)V
    .locals 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/a/a;->c(Ljava/lang/String;)V

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;->a(Ljava/lang/Exception;)V

    .line 496
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public a(Lcom/facebook/login/LoginClient$Request;)V
    .locals 6

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Lcom/facebook/login/LoginClient$Request;

    .line 166
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 167
    const-string v0, "scope"

    const-string v1, ","

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->g()Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    const-string v1, "redirect_uri"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->h()Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_1

    .line 176
    const-string v1, "target_user_id"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/internal/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, "access_token"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "device_info"

    .line 182
    invoke-static {}, Lcom/facebook/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    const-string v2, "device/login"

    sget-object v4, Lcom/facebook/q;->b:Lcom/facebook/q;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$1;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$1;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    .line 214
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->j()Lcom/facebook/n;

    .line 215
    return-void
.end method

.method protected b(Z)I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 266
    if-eqz p1, :cond_0

    sget v0, Lcom/facebook/common/R$layout;->com_facebook_smart_device_dialog_fragment:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/facebook/common/R$layout;->com_facebook_device_auth_dialog_fragment:I

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/common/R$style;->com_facebook_auth_dialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    .line 125
    invoke-static {}, Lcom/facebook/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Z)Landroid/view/View;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    return-object v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookActivity;

    .line 105
    invoke-virtual {v0}, Lcom/facebook/FacebookActivity;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/d;

    .line 107
    invoke-virtual {v0}, Lcom/facebook/login/d;->c()Lcom/facebook/login/LoginClient;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/DeviceAuthMethodHandler;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 110
    if-eqz p3, :cond_0

    .line 111
    const-string v0, "request_state"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, v0}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    .line 117
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 152
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    .line 153
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/n;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/n;

    invoke-virtual {v0, v1}, Lcom/facebook/n;->cancel(Z)Z

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 162
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 134
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->a()V

    .line 137
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "request_state"

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    :cond_0
    return-void
.end method
