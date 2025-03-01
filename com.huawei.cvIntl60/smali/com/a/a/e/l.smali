.class public Lcom/a/a/e/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/e/l$a;
    }
.end annotation


# static fields
.field private static final i:Lcom/a/a/e/l$a;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/FragmentManager;",
            "Lcom/a/a/e/k;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/a/a/e/o;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/a/a/j;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/a/a/e/l$a;

.field private final f:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    new-instance v0, Lcom/a/a/e/l$1;

    invoke-direct {v0}, Lcom/a/a/e/l$1;-><init>()V

    sput-object v0, Lcom/a/a/e/l;->i:Lcom/a/a/e/l$a;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/e/l$a;)V
    .locals 2
    .param p1    # Lcom/a/a/e/l$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/e/l;->a:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/e/l;->b:Ljava/util/Map;

    .line 72
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/e/l;->f:Landroid/support/v4/util/ArrayMap;

    .line 73
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/e/l;->g:Landroid/support/v4/util/ArrayMap;

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/a/a/e/l;->h:Landroid/os/Bundle;

    .line 78
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/a/a/e/l;->e:Lcom/a/a/e/l$a;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/a/a/e/l;->d:Landroid/os/Handler;

    .line 80
    return-void

    .line 78
    :cond_0
    sget-object p1, Lcom/a/a/e/l;->i:Lcom/a/a/e/l$a;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/a/a/j;
    .locals 5

    .prologue
    .line 335
    invoke-virtual {p0, p2, p3}, Lcom/a/a/e/l;->a(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/a/a/e/k;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Lcom/a/a/e/k;->b()Lcom/a/a/j;

    move-result-object v0

    .line 337
    if-nez v0, :cond_0

    .line 339
    invoke-static {p1}, Lcom/a/a/c;->a(Landroid/content/Context;)Lcom/a/a/c;

    move-result-object v0

    .line 340
    iget-object v2, p0, Lcom/a/a/e/l;->e:Lcom/a/a/e/l$a;

    .line 341
    invoke-virtual {v1}, Lcom/a/a/e/k;->a()Lcom/a/a/e/a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/a/a/e/k;->c()Lcom/a/a/e/m;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/a/a/e/l$a;->a(Lcom/a/a/c;Lcom/a/a/e/h;Lcom/a/a/e/m;)Lcom/a/a/j;

    move-result-object v0

    .line 342
    invoke-virtual {v1, v0}, Lcom/a/a/e/k;->a(Lcom/a/a/j;)V

    .line 344
    :cond_0
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Lcom/a/a/j;
    .locals 5

    .prologue
    .line 366
    invoke-virtual {p0, p2, p3}, Lcom/a/a/e/l;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Lcom/a/a/e/o;

    move-result-object v1

    .line 367
    invoke-virtual {v1}, Lcom/a/a/e/o;->b()Lcom/a/a/j;

    move-result-object v0

    .line 368
    if-nez v0, :cond_0

    .line 370
    invoke-static {p1}, Lcom/a/a/c;->a(Landroid/content/Context;)Lcom/a/a/c;

    move-result-object v0

    .line 371
    iget-object v2, p0, Lcom/a/a/e/l;->e:Lcom/a/a/e/l$a;

    .line 372
    invoke-virtual {v1}, Lcom/a/a/e/o;->a()Lcom/a/a/e/a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/a/a/e/o;->c()Lcom/a/a/e/m;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/a/a/e/l$a;->a(Lcom/a/a/c;Lcom/a/a/e/h;Lcom/a/a/e/m;)Lcom/a/a/j;

    move-result-object v0

    .line 373
    invoke-virtual {v1, v0}, Lcom/a/a/e/o;->a(Lcom/a/a/j;)V

    .line 375
    :cond_0
    return-object v0
.end method

.method private b(Landroid/content/Context;)Lcom/a/a/j;
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/a/a/e/l;->c:Lcom/a/a/j;

    if-nez v0, :cond_1

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/a/a/e/l;->c:Lcom/a/a/j;

    if-nez v0, :cond_0

    .line 93
    invoke-static {p1}, Lcom/a/a/c;->a(Landroid/content/Context;)Lcom/a/a/c;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/a/a/e/l;->e:Lcom/a/a/e/l$a;

    new-instance v2, Lcom/a/a/e/b;

    invoke-direct {v2}, Lcom/a/a/e/b;-><init>()V

    new-instance v3, Lcom/a/a/e/g;

    invoke-direct {v3}, Lcom/a/a/e/g;-><init>()V

    .line 95
    invoke-interface {v1, v0, v2, v3}, Lcom/a/a/e/l$a;->a(Lcom/a/a/c;Lcom/a/a/e/h;Lcom/a/a/e/m;)Lcom/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/e/l;->c:Lcom/a/a/j;

    .line 97
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/a/a/e/l;->c:Lcom/a/a/j;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load for a destroyed activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/a/a/e/k;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 319
    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/a/a/e/k;

    .line 320
    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/a/a/e/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e/k;

    .line 322
    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/a/a/e/k;

    invoke-direct {v0}, Lcom/a/a/e/k;-><init>()V

    .line 324
    invoke-virtual {v0, p2}, Lcom/a/a/e/k;->a(Landroid/app/Fragment;)V

    .line 325
    iget-object v1, p0, Lcom/a/a/e/l;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 327
    iget-object v1, p0, Lcom/a/a/e/l;->d:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 330
    :cond_0
    return-object v0
.end method

.method a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Lcom/a/a/e/o;
    .locals 3

    .prologue
    .line 349
    const-string v0, "com.bumptech.glide.manager"

    .line 350
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/a/a/e/o;

    .line 351
    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/a/a/e/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e/o;

    .line 353
    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lcom/a/a/e/o;

    invoke-direct {v0}, Lcom/a/a/e/o;-><init>()V

    .line 355
    invoke-virtual {v0, p2}, Lcom/a/a/e/o;->a(Landroid/support/v4/app/Fragment;)V

    .line 356
    iget-object v1, p0, Lcom/a/a/e/l;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "com.bumptech.glide.manager"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 358
    iget-object v1, p0, Lcom/a/a/e/l;->d:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 361
    :cond_0
    return-object v0
.end method

.method public a(Landroid/app/Activity;)Lcom/a/a/j;
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/a/a/j/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/e/l;->a(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 144
    :cond_0
    invoke-static {p1}, Lcom/a/a/e/l;->b(Landroid/app/Activity;)V

    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 146
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/e/l;->a(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/a/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Lcom/a/a/j;
    .locals 2

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    invoke-static {}, Lcom/a/a/j/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_3

    .line 107
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 108
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/a/a/e/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/a/a/j;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 109
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 110
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/a/a/e/l;->a(Landroid/app/Activity;)Lcom/a/a/j;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_2
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_3

    .line 112
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/e/l;->a(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_3
    invoke-direct {p0, p1}, Lcom/a/a/e/l;->b(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)Lcom/a/a/j;
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/a/a/j/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/e/l;->a(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/a/a/e/l;->b(Landroid/app/Activity;)V

    .line 124
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 125
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/a/a/e/l;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)Lcom/a/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 380
    const/4 v3, 0x1

    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 395
    const/4 v3, 0x0

    move-object v0, v1

    move-object v2, v1

    .line 398
    :goto_0
    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    const-string v1, "RMRetriever"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    const-string v1, "RMRetriever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    return v3

    .line 385
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/FragmentManager;

    .line 387
    iget-object v1, p0, Lcom/a/a/e/l;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 388
    goto :goto_0

    .line 390
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    .line 392
    iget-object v1, p0, Lcom/a/a/e/l;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 393
    goto :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
