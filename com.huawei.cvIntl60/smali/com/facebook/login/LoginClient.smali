.class Lcom/facebook/login/LoginClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginClient$Result;,
        Lcom/facebook/login/LoginClient$Request;,
        Lcom/facebook/login/LoginClient$a;,
        Lcom/facebook/login/LoginClient$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/LoginClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:[Lcom/facebook/login/LoginMethodHandler;

.field b:I

.field c:Landroid/support/v4/app/Fragment;

.field d:Lcom/facebook/login/LoginClient$b;

.field e:Lcom/facebook/login/LoginClient$a;

.field f:Z

.field g:Lcom/facebook/login/LoginClient$Request;

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/facebook/login/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 712
    new-instance v0, Lcom/facebook/login/LoginClient$1;

    invoke-direct {v0}, Lcom/facebook/login/LoginClient$1;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 686
    const-class v0, Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 687
    array-length v0, v2

    new-array v0, v0, [Lcom/facebook/login/LoginMethodHandler;

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 688
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 689
    iget-object v3, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v0, v2, v1

    check-cast v0, Lcom/facebook/login/LoginMethodHandler;

    aput-object v0, v3, v1

    .line 690
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/facebook/login/LoginMethodHandler;->a(Lcom/facebook/login/LoginClient;)V

    .line 688
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 692
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 693
    const-class v0, Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Request;

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 694
    invoke-static {p1}, Lcom/facebook/internal/u;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 695
    invoke-static {p1}, Lcom/facebook/internal/u;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->i:Ljava/util/Map;

    .line 696
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 73
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->c:Landroid/support/v4/app/Fragment;

    .line 74
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/login/LoginClient$Result;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p2, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$a;

    .line 402
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Result$a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/facebook/login/LoginClient$Result;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/facebook/login/LoginClient$Result;->d:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 401
    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 406
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-nez v0, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->o()Lcom/facebook/login/e;

    move-result-object v0

    const-string v1, "fb_mobile_login_method_complete"

    const-string v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/login/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->o()Lcom/facebook/login/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/login/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/facebook/internal/d$b;->a:Lcom/facebook/internal/d$b;

    invoke-virtual {v0}, Lcom/facebook/internal/d$b;->a()I

    move-result v0

    return v0
.end method

.method private d(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->d:Lcom/facebook/login/LoginClient$b;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->d:Lcom/facebook/login/LoginClient$b;

    invoke-interface {v0, p1}, Lcom/facebook/login/LoginClient$b;->a(Lcom/facebook/login/LoginClient$Result;)V

    .line 383
    :cond_0
    return-void
.end method

.method static m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 428
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 430
    :try_start_0
    const-string v1, "init"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 431
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const-string v1, "Login attempt failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Result;)V

    .line 231
    return-void
.end method

.method private o()Lcom/facebook/login/e;
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->j:Lcom/facebook/login/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->j:Lcom/facebook/login/e;

    .line 372
    invoke-virtual {v0}, Lcom/facebook/login/e;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    :cond_0
    new-instance v0, Lcom/facebook/login/e;

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/login/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->j:Lcom/facebook/login/e;

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->j:Lcom/facebook/login/e;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Can\'t set fragment once it is already set."

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->c:Landroid/support/v4/app/Fragment;

    .line 85
    return-void
.end method

.method a(Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Request;)V

    .line 104
    :cond_0
    return-void
.end method

.method a(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/AccessToken;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_0
.end method

.method a(Lcom/facebook/login/LoginClient$a;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    .line 335
    return-void
.end method

.method a(Lcom/facebook/login/LoginClient$b;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->d:Lcom/facebook/login/LoginClient$b;

    .line 325
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/login/LoginMethodHandler;->a(IILandroid/content/Intent;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/facebook/login/LoginClient$Request;)V
    .locals 2

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    invoke-static {}, Lcom/facebook/AccessToken;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :cond_3
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 120
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 121
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->i()V

    goto :goto_0
.end method

.method b(Lcom/facebook/login/LoginClient$Result;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/facebook/login/LoginMethodHandler;->a:Ljava/util/Map;

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->f:Ljava/util/Map;

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->i:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->i:Ljava/util/Map;

    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->g:Ljava/util/Map;

    .line 311
    :cond_2
    iput-object v2, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 313
    iput-object v2, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 314
    iput-object v2, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 316
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    .line 317
    return-void
.end method

.method public c()Lcom/facebook/login/LoginClient$Request;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method c(Lcom/facebook/login/LoginClient$Result;)V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Can\'t validate without a token"

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 347
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    .line 351
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 352
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    invoke-static {v0, v1}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 361
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Result;)V

    .line 368
    :goto_1
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const-string v1, "User logged in as different Facebook user."

    const/4 v2, 0x0

    .line 356
    invoke-static {v0, v1, v2}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const-string v2, "Caught exception"

    .line 366
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v1, v2, v0}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_1
.end method

.method protected c(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Lcom/facebook/login/c;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/facebook/login/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    new-instance v2, Lcom/facebook/login/GetTokenLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/GetTokenLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/login/c;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    new-instance v2, Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/login/c;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    new-instance v2, Lcom/facebook/login/FacebookLiteLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/FacebookLiteLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/login/c;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    new-instance v2, Lcom/facebook/login/CustomTabLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/login/c;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    new-instance v2, Lcom/facebook/login/WebViewLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/WebViewLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_4
    invoke-virtual {v1}, Lcom/facebook/login/c;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    new-instance v1, Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/login/LoginMethodHandler;

    .line 180
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 181
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()V
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->b()V

    .line 132
    :cond_0
    return-void
.end method

.method g()Lcom/facebook/login/LoginMethodHandler;
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    iget v1, p0, Lcom/facebook/login/LoginClient;->b:I

    aget-object v0, v0, v1

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 185
    iget-boolean v1, p0, Lcom/facebook/login/LoginClient;->f:Z

    if-eqz v1, :cond_0

    .line 200
    :goto_0
    return v0

    .line 189
    :cond_0
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0, v1}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;)I

    move-result v1

    .line 190
    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 192
    sget v1, Lcom/facebook/common/R$string;->com_facebook_internet_permission_error_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    sget v2, Lcom/facebook/common/R$string;->com_facebook_internet_permission_error_message:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-static {v2, v1, v0}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Result;)V

    .line 196
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_1
    iput-boolean v0, p0, Lcom/facebook/login/LoginClient;->f:Z

    goto :goto_0
.end method

.method i()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 204
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skipped"

    .line 210
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    iget-object v5, v0, Lcom/facebook/login/LoginMethodHandler;->a:Ljava/util/Map;

    move-object v0, p0

    move-object v4, v3

    .line 205
    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 214
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 216
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->j()Z

    move-result v0

    .line 218
    if-eqz v0, :cond_0

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->n()V

    goto :goto_0
.end method

.method j()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Lcom/facebook/login/LoginMethodHandler;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->h()Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    const-string v1, "no_internet_permission"

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginMethodHandler;->a(Lcom/facebook/login/LoginClient$Request;)Z

    move-result v0

    .line 265
    if-eqz v0, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->o()Lcom/facebook/login/e;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {v1}, Lcom/facebook/login/LoginMethodHandler;->a()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v2, v3, v1}, Lcom/facebook/login/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->o()Lcom/facebook/login/e;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v1}, Lcom/facebook/login/LoginMethodHandler;->a()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {v2, v3, v4}, Lcom/facebook/login/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "not_tried"

    .line 275
    invoke-virtual {v1}, Lcom/facebook/login/LoginMethodHandler;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 273
    invoke-direct {p0, v2, v1, v3}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method k()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    invoke-interface {v0}, Lcom/facebook/login/LoginClient$a;->a()V

    .line 389
    :cond_0
    return-void
.end method

.method l()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    invoke-interface {v0}, Lcom/facebook/login/LoginClient$a;->b()V

    .line 395
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 706
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 708
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/facebook/internal/u;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 709
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->i:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/facebook/internal/u;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 710
    return-void
.end method
