.class public final Lcom/facebook/share/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 535
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 536
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_0

    .line 537
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 538
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 542
    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 719
    invoke-static {p1}, Lcom/facebook/internal/u;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    new-instance v0, Ljava/io/File;

    .line 722
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 720
    invoke-static {p0, v0, p2}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 733
    :goto_0
    return-object v0

    .line 724
    :cond_0
    invoke-static {p1}, Lcom/facebook/internal/u;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    new-instance v0, Lcom/facebook/h;

    const-string v1, "The image Uri must be either a file:// or content:// Uri"

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    new-instance v0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v1, "image/png"

    invoke-direct {v0, p1, v1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 730
    new-instance v3, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 731
    const-string v1, "file"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 733
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me/staging_resources"

    sget-object v4, Lcom/facebook/q;->b:Lcom/facebook/q;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    goto :goto_0
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/io/File;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 686
    const/high16 v0, 0x10000000

    .line 687
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 688
    new-instance v1, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const-string v2, "image/png"

    invoke-direct {v1, v0, v2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 690
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 691
    const-string v0, "file"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 693
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me/staging_resources"

    sget-object v4, Lcom/facebook/q;->b:Lcom/facebook/q;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 467
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 468
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 469
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 470
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 471
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/b;->a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v0

    .line 475
    :cond_0
    :goto_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 468
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 472
    :cond_1
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 473
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/b;->a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1

    .line 478
    :cond_2
    return-object v2
.end method

.method public static a(Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->c()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    .line 442
    new-instance v1, Lcom/facebook/share/internal/b$1;

    invoke-direct {v1}, Lcom/facebook/share/internal/b$1;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/a$a;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 484
    if-nez p0, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 526
    :goto_0
    return-object v0

    .line 489
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 490
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 491
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    .line 492
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 493
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 495
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 496
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 497
    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/b;->a(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    move-object v3, v0

    .line 502
    :goto_2
    invoke-static {v7}, Lcom/facebook/share/internal/b;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 504
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 505
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 507
    if-eqz p1, :cond_5

    .line 508
    if-eqz v0, :cond_2

    const-string v8, "fbsdk"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 509
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 498
    :cond_1
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_9

    .line 499
    check-cast v0, Lorg/json/JSONArray;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/b;->a(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    .line 510
    :cond_2
    if-eqz v0, :cond_3

    const-string v7, "og"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    :cond_3
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 527
    :catch_0
    move-exception v0

    .line 528
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Failed to create json object from share content"

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_4
    :try_start_1
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 515
    :cond_5
    if-eqz v0, :cond_6

    const-string v8, "fb"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 516
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 518
    :cond_6
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 522
    :cond_7
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 523
    const-string v0, "data"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    move-object v0, v2

    .line 526
    goto/16 :goto_0

    :cond_9
    move-object v3, v0

    goto :goto_2
.end method
