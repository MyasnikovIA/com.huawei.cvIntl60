.class public Landroid/support/v4/app/ActivityCompat;
.super Landroid/support/v4/content/ContextCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;,
        Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;,
        Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field private static sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/support/v4/content/ContextCompat;-><init>()V

    .line 151
    return-void
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static getPermissionCompatDelegate()Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 169
    sget-object v0, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 341
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 333
    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 334
    if-nez v0, :cond_0

    .line 337
    const-string v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_2

    .line 339
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 412
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    .line 414
    :cond_0
    return-void
.end method

.method public static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/support/a/a/a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 565
    invoke-static {p0, p1}, Landroid/support/a/a/a;->a(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/support/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 491
    sget-object v0, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    .line 492
    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 498
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 499
    check-cast v0, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    .line 500
    invoke-interface {v0, p2}, Landroid/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 502
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 503
    :cond_3
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 505
    new-instance v1, Landroid/support/v4/app/ActivityCompat$1;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/ActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static requireViewById(Landroid/app/Activity;I)Landroid/view/View;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 363
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    .line 370
    :cond_0
    return-object v0

    .line 366
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 367
    if-nez v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ID does not reference a View inside this Activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/SharedElementCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 384
    if-eqz p1, :cond_1

    new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 387
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 389
    :cond_0
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v4/app/SharedElementCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 403
    if-eqz p1, :cond_1

    new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    .line 406
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 408
    :cond_0
    return-void

    .line 403
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPermissionCompatDelegate(Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;)V
    .locals 0
    .param p0    # Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 161
    sput-object p0, Landroid/support/v4/app/ActivityCompat;->sDelegate:Landroid/support/v4/app/ActivityCompat$PermissionCompatDelegate;

    .line 162
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 549
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    .line 551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 271
    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 418
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 420
    :cond_0
    return-void
.end method
