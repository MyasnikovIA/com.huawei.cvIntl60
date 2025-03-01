.class public Lcom/facebook/login/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/f$b;,
        Lcom/facebook/login/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/facebook/login/f;


# instance fields
.field private c:Lcom/facebook/login/c;

.field private d:Lcom/facebook/login/a;

.field private final e:Landroid/content/SharedPreferences;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/facebook/login/f;->c()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/f;->a:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/facebook/login/c;->a:Lcom/facebook/login/c;

    iput-object v0, p0, Lcom/facebook/login/f;->c:Lcom/facebook/login/c;

    .line 75
    sget-object v0, Lcom/facebook/login/a;->c:Lcom/facebook/login/a;

    iput-object v0, p0, Lcom/facebook/login/f;->d:Lcom/facebook/login/a;

    .line 77
    const-string v0, "rerequest"

    iput-object v0, p0, Lcom/facebook/login/f;->f:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/facebook/internal/v;->a()V

    .line 81
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.loginManager"

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/f;->e:Landroid/content/SharedPreferences;

    .line 83
    return-void
.end method

.method public static a()Lcom/facebook/login/f;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/facebook/login/f;->b:Lcom/facebook/login/f;

    if-nez v0, :cond_1

    .line 91
    const-class v1, Lcom/facebook/login/f;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lcom/facebook/login/f;->b:Lcom/facebook/login/f;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/facebook/login/f;

    invoke-direct {v0}, Lcom/facebook/login/f;-><init>()V

    sput-object v0, Lcom/facebook/login/f;->b:Lcom/facebook/login/f;

    .line 95
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    sget-object v0, Lcom/facebook/login/f;->b:Lcom/facebook/login/f;

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/g;
    .locals 3

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/util/Set;

    move-result-object v0

    .line 671
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->g()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 675
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 679
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 680
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 681
    new-instance v0, Lcom/facebook/login/g;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/login/g;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    .prologue
    .line 586
    invoke-static {p1}, Lcom/facebook/login/f$b;->a(Landroid/content/Context;)Lcom/facebook/login/e;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 588
    invoke-virtual {v0, p2}, Lcom/facebook/login/e;->a(Lcom/facebook/login/LoginClient$Request;)V

    .line 590
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 599
    invoke-static {p1}, Lcom/facebook/login/f$b;->a(Landroid/content/Context;)Lcom/facebook/login/e;

    move-result-object v0

    .line 600
    if-nez v0, :cond_0

    .line 624
    :goto_0
    return-void

    .line 603
    :cond_0
    if-nez p6, :cond_1

    .line 605
    const-string v1, "fb_mobile_login_complete"

    const-string v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 611
    const-string v3, "try_login_activity"

    if-eqz p5, :cond_2

    const-string v1, "1"

    :goto_1
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 617
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/login/e;->a(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;)V

    goto :goto_0

    .line 611
    :cond_2
    const-string v1, "0"

    goto :goto_1
.end method

.method private a(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/h;ZLcom/facebook/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/login/LoginClient$Request;",
            "Lcom/facebook/h;",
            "Z",
            "Lcom/facebook/f",
            "<",
            "Lcom/facebook/login/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 690
    if-eqz p1, :cond_0

    .line 691
    invoke-static {p1}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 692
    invoke-static {}, Lcom/facebook/Profile;->b()V

    .line 695
    :cond_0
    if-eqz p5, :cond_2

    .line 696
    if-eqz p1, :cond_3

    .line 697
    invoke-static {p2, p1}, Lcom/facebook/login/f;->a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/g;

    move-result-object v0

    .line 700
    :goto_0
    if-nez p4, :cond_1

    if-eqz v0, :cond_4

    .line 702
    invoke-virtual {v0}, Lcom/facebook/login/g;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 703
    :cond_1
    invoke-interface {p5}, Lcom/facebook/f;->a()V

    .line 711
    :cond_2
    :goto_1
    return-void

    .line 697
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 704
    :cond_4
    if-eqz p3, :cond_5

    .line 705
    invoke-interface {p5, p3}, Lcom/facebook/f;->a(Lcom/facebook/h;)V

    goto :goto_1

    .line 706
    :cond_5
    if-eqz p1, :cond_2

    .line 707
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/login/f;->a(Z)V

    .line 708
    invoke-interface {p5, v0}, Lcom/facebook/f;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Lcom/facebook/login/h;Lcom/facebook/login/LoginClient$Request;)V
    .locals 7

    .prologue
    .line 554
    invoke-interface {p1}, Lcom/facebook/login/h;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/f;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 557
    sget-object v0, Lcom/facebook/internal/d$b;->a:Lcom/facebook/internal/d$b;

    .line 558
    invoke-virtual {v0}, Lcom/facebook/internal/d$b;->a()I

    move-result v0

    new-instance v1, Lcom/facebook/login/f$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/f$3;-><init>(Lcom/facebook/login/f;)V

    .line 557
    invoke-static {v0, v1}, Lcom/facebook/internal/d;->a(ILcom/facebook/internal/d$a;)V

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/f;->b(Lcom/facebook/login/h;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v0

    .line 569
    if-nez v0, :cond_0

    .line 570
    new-instance v4, Lcom/facebook/h;

    const-string v0, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v4, v0}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    .line 573
    const/4 v5, 0x0

    .line 575
    invoke-interface {p1}, Lcom/facebook/login/h;->a()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/login/LoginClient$Result$a;->c:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 574
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/f;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 581
    throw v4

    .line 583
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/facebook/login/f;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 820
    const-string v1, "express_login_allowed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 821
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 822
    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 648
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 649
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 650
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 509
    if-eqz p0, :cond_1

    const-string v0, "publish"

    .line 510
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    .line 511
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/login/f;->a:Ljava/util/Set;

    .line 512
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 509
    :goto_0
    return v0

    .line 512
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    if-nez p1, :cond_1

    .line 506
    :cond_0
    return-void

    .line 498
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 499
    invoke-static {v0}, Lcom/facebook/login/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 500
    new-instance v1, Lcom/facebook/h;

    const-string v2, "Cannot pass a read permission (%s) to a request for publish authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 501
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(Lcom/facebook/login/h;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 630
    invoke-virtual {p0, p2}, Lcom/facebook/login/f;->a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object v1

    .line 632
    invoke-direct {p0, v1}, Lcom/facebook/login/f;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    :goto_0
    return v0

    .line 639
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginClient;->d()I

    move-result v2

    .line 637
    invoke-interface {p1, v1, v2}, Lcom/facebook/login/h;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    const/4 v0, 0x1

    goto :goto_0

    .line 640
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    new-instance v0, Lcom/facebook/login/f$2;

    invoke-direct {v0}, Lcom/facebook/login/f$2;-><init>()V

    .line 521
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 654
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 655
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 656
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Lcom/facebook/login/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 660
    const-string v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 661
    const-string v2, "com.facebook.LoginFragment:Request"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 663
    return-object v0
.end method

.method protected a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/facebook/login/f;->c:Lcom/facebook/login/c;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 527
    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/f;->d:Lcom/facebook/login/a;

    iget-object v4, p0, Lcom/facebook/login/f;->f:Ljava/lang/String;

    .line 531
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v5

    .line 532
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/c;Ljava/util/Set;Lcom/facebook/login/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/facebook/AccessToken;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient$Request;->a(Z)V

    .line 535
    return-object v0

    .line 525
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public a(Lcom/facebook/login/a;)Lcom/facebook/login/f;
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/facebook/login/f;->d:Lcom/facebook/login/a;

    .line 295
    return-object p0
.end method

.method public a(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    invoke-direct {p0, p2}, Lcom/facebook/login/f;->b(Ljava/util/Collection;)V

    .line 475
    invoke-virtual {p0, p2}, Lcom/facebook/login/f;->a(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 476
    new-instance v1, Lcom/facebook/login/f$a;

    invoke-direct {v1, p1}, Lcom/facebook/login/f$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/f;->a(Lcom/facebook/login/h;Lcom/facebook/login/LoginClient$Request;)V

    .line 477
    return-void
.end method

.method public a(Lcom/facebook/d;Lcom/facebook/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d;",
            "Lcom/facebook/f",
            "<",
            "Lcom/facebook/login/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    instance-of v0, p1, Lcom/facebook/internal/d;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    check-cast p1, Lcom/facebook/internal/d;

    sget-object v0, Lcom/facebook/internal/d$b;->a:Lcom/facebook/internal/d$b;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/internal/d$b;->a()I

    move-result v0

    new-instance v1, Lcom/facebook/login/f$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/login/f$1;-><init>(Lcom/facebook/login/f;Lcom/facebook/f;)V

    .line 169
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/d;->b(ILcom/facebook/internal/d$a;)V

    .line 181
    return-void
.end method

.method a(ILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/f;->a(ILandroid/content/Intent;Lcom/facebook/f;)Z

    move-result v0

    return v0
.end method

.method a(ILandroid/content/Intent;Lcom/facebook/f;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/f",
            "<",
            "Lcom/facebook/login/g;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v5, 0x0

    .line 203
    const/4 v4, 0x0

    .line 204
    sget-object v2, Lcom/facebook/login/LoginClient$Result$a;->c:Lcom/facebook/login/LoginClient$Result$a;

    .line 205
    const/4 v3, 0x0

    .line 206
    const/4 v6, 0x0

    .line 208
    const/4 v1, 0x0

    .line 209
    if-eqz p2, :cond_2

    .line 210
    const-string v0, "com.facebook.LoginFragment:Result"

    .line 211
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Result;

    .line 212
    if-eqz v0, :cond_6

    .line 213
    iget-object v6, v0, Lcom/facebook/login/LoginClient$Result;->e:Lcom/facebook/login/LoginClient$Request;

    .line 214
    iget-object v8, v0, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$a;

    .line 215
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 216
    iget-object v2, v0, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$a;

    sget-object v3, Lcom/facebook/login/LoginClient$Result$a;->a:Lcom/facebook/login/LoginClient$Result$a;

    if-ne v2, v3, :cond_0

    .line 217
    iget-object v2, v0, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    move-object v3, v5

    .line 224
    :goto_0
    iget-object v4, v0, Lcom/facebook/login/LoginClient$Result;->f:Ljava/util/Map;

    move-object v0, v6

    move-object v7, v4

    move-object v9, v8

    move-object v10, v2

    move-object v5, v3

    :goto_1
    move v11, v1

    move-object v6, v0

    move-object v3, v7

    move-object v2, v9

    move-object v8, v10

    .line 231
    :goto_2
    if-nez v5, :cond_3

    if-nez v8, :cond_3

    if-nez v11, :cond_3

    .line 232
    new-instance v4, Lcom/facebook/h;

    const-string v0, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v4, v0}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    .line 235
    :goto_3
    const/4 v5, 0x1

    .line 236
    const/4 v1, 0x0

    move-object v0, p0

    .line 237
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/f;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    move-object v7, p0

    move-object v9, v6

    move-object v10, v4

    move-object/from16 v12, p3

    .line 245
    invoke-direct/range {v7 .. v12}, Lcom/facebook/login/f;->a(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/h;ZLcom/facebook/f;)V

    .line 247
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    new-instance v3, Lcom/facebook/e;

    iget-object v2, v0, Lcom/facebook/login/LoginClient$Result;->c:Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/facebook/e;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 221
    :cond_1
    if-nez p1, :cond_5

    .line 222
    const/4 v1, 0x1

    move-object v2, v4

    move-object v3, v5

    goto :goto_0

    .line 226
    :cond_2
    if-nez p1, :cond_4

    .line 227
    const/4 v1, 0x1

    .line 228
    sget-object v2, Lcom/facebook/login/LoginClient$Result$a;->b:Lcom/facebook/login/LoginClient$Result$a;

    move v11, v1

    move-object v8, v4

    goto :goto_2

    :cond_3
    move-object v4, v5

    goto :goto_3

    :cond_4
    move v11, v1

    move-object v8, v4

    goto :goto_2

    :cond_5
    move-object v2, v4

    move-object v3, v5

    goto :goto_0

    :cond_6
    move-object v0, v6

    move-object v7, v3

    move-object v9, v2

    move-object v10, v4

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-static {v0}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 321
    invoke-static {v0}, Lcom/facebook/Profile;->a(Lcom/facebook/Profile;)V

    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/login/f;->a(Z)V

    .line 323
    return-void
.end method
