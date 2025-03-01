.class public final Lcom/facebook/AccessToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessToken$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/AccessToken;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/Date;

.field private static final b:Ljava/util/Date;

.field private static final c:Ljava/util/Date;

.field private static final d:Lcom/facebook/c;


# instance fields
.field private final e:Ljava/util/Date;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:Lcom/facebook/c;

.field private final j:Ljava/util/Date;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Ljava/util/Date;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->a:Ljava/util/Date;

    .line 60
    sget-object v0, Lcom/facebook/AccessToken;->a:Ljava/util/Date;

    sput-object v0, Lcom/facebook/AccessToken;->b:Ljava/util/Date;

    .line 61
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/facebook/AccessToken;->c:Ljava/util/Date;

    .line 62
    sget-object v0, Lcom/facebook/c;->b:Lcom/facebook/c;

    sput-object v0, Lcom/facebook/AccessToken;->d:Lcom/facebook/c;

    .line 688
    new-instance v0, Lcom/facebook/AccessToken$1;

    invoke-direct {v0}, Lcom/facebook/AccessToken$1;-><init>()V

    sput-object v0, Lcom/facebook/AccessToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 657
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/AccessToken;->f:Ljava/util/Set;

    .line 658
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 659
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 660
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->g:Ljava/util/Set;

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/c;->valueOf(Ljava/lang/String;)Lcom/facebook/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->i:Lcom/facebook/c;

    .line 664
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/AccessToken;->j:Ljava/util/Date;

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->l:Ljava/lang/String;

    .line 667
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/AccessToken;->m:Ljava/util/Date;

    .line 668
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 4
    .param p4    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/c;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "userId"

    invoke-static {p3, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz p7, :cond_0

    :goto_0
    iput-object p7, p0, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    .line 136
    if-eqz p4, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->f:Ljava/util/Set;

    .line 138
    if-eqz p5, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->g:Ljava/util/Set;

    .line 142
    iput-object p1, p0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    .line 143
    if-eqz p6, :cond_3

    :goto_3
    iput-object p6, p0, Lcom/facebook/AccessToken;->i:Lcom/facebook/c;

    .line 144
    if-eqz p8, :cond_4

    :goto_4
    iput-object p8, p0, Lcom/facebook/AccessToken;->j:Ljava/util/Date;

    .line 145
    iput-object p2, p0, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lcom/facebook/AccessToken;->l:Ljava/lang/String;

    .line 147
    if-eqz p9, :cond_5

    .line 148
    invoke-virtual {p9}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    :goto_5
    iput-object p9, p0, Lcom/facebook/AccessToken;->m:Ljava/util/Date;

    .line 151
    return-void

    .line 135
    :cond_0
    sget-object p7, Lcom/facebook/AccessToken;->b:Ljava/util/Date;

    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    .line 138
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_2

    .line 143
    :cond_3
    sget-object p6, Lcom/facebook/AccessToken;->d:Lcom/facebook/c;

    goto :goto_3

    .line 144
    :cond_4
    sget-object p8, Lcom/facebook/AccessToken;->c:Ljava/util/Date;

    goto :goto_4

    .line 148
    :cond_5
    sget-object p9, Lcom/facebook/AccessToken;->b:Ljava/util/Date;

    goto :goto_5
.end method

.method public static a()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 487
    const-string v0, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-static {p0, v0}, Lcom/facebook/AccessToken;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 490
    const-string v0, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    invoke-static {p0, v0}, Lcom/facebook/AccessToken;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 494
    invoke-static {p0}, Lcom/facebook/s;->d(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-static {v2}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v2

    .line 499
    :cond_0
    invoke-static {p0}, Lcom/facebook/s;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-static {v1}, Lcom/facebook/internal/u;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 503
    :try_start_0
    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 510
    new-instance v0, Lcom/facebook/AccessToken;

    .line 516
    invoke-static {p0}, Lcom/facebook/s;->c(Landroid/os/Bundle;)Lcom/facebook/c;

    move-result-object v6

    const-string v7, "com.facebook.TokenCachingStrategy.ExpirationDate"

    .line 517
    invoke-static {p0, v7}, Lcom/facebook/s;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    const-string v8, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    .line 520
    invoke-static {p0, v8}, Lcom/facebook/s;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-direct/range {v0 .. v9}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 510
    :goto_0
    return-object v0

    .line 504
    :catch_0
    move-exception v0

    move-object v0, v9

    .line 507
    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;
    .locals 12

    .prologue
    .line 577
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 578
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 579
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Unknown AccessToken serialization format."

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_0
    const-string v0, "token"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    new-instance v7, Ljava/util/Date;

    const-string v0, "expires_at"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 584
    const-string v0, "permissions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 585
    const-string v0, "declined_permissions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 586
    new-instance v8, Ljava/util/Date;

    const-string v0, "last_refresh"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 587
    const-string v0, "source"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/c;->valueOf(Ljava/lang/String;)Lcom/facebook/c;

    move-result-object v6

    .line 588
    const-string v0, "application_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 589
    const-string v0, "user_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 590
    new-instance v9, Ljava/util/Date;

    const-string v0, "data_access_expiration_time"

    const-wide/16 v10, 0x0

    .line 591
    invoke-virtual {p0, v0, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 593
    new-instance v0, Lcom/facebook/AccessToken;

    .line 597
    invoke-static {v4}, Lcom/facebook/internal/u;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 598
    invoke-static {v5}, Lcom/facebook/internal/u;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v9}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 593
    return-object v0
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 531
    if-nez v0, :cond_0

    .line 532
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    .line 534
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/AccessToken;)V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;)V

    .line 195
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 643
    const-string v0, " permissions:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget-object v0, p0, Lcom/facebook/AccessToken;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 645
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :goto_0
    return-void

    .line 647
    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string v0, ", "

    iget-object v1, p0, Lcom/facebook/AccessToken;->f:Ljava/util/Set;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static b(Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;
    .locals 10

    .prologue
    .line 474
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    .line 477
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->l()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->g()Ljava/util/Set;

    move-result-object v4

    .line 479
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->h()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/AccessToken;->i:Lcom/facebook/c;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    iget-object v9, p0, Lcom/facebook/AccessToken;->m:Ljava/util/Date;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 474
    return-object v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c()V
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-static {v0}, Lcom/facebook/AccessToken;->b(Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;)V

    .line 186
    :cond_0
    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 634
    const-string v0, "null"

    .line 638
    :goto_0
    return-object v0

    .line 635
    :cond_0
    sget-object v0, Lcom/facebook/t;->b:Lcom/facebook/t;

    invoke-static {v0}, Lcom/facebook/k;->a(Lcom/facebook/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    goto :goto_0

    .line 638
    :cond_1
    const-string v0, "ACCESS_TOKEN_REMOVED"

    goto :goto_0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/Date;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 403
    if-ne p0, p1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    instance-of v2, p1, Lcom/facebook/AccessToken;

    if-nez v2, :cond_2

    move v0, v1

    .line 408
    goto :goto_0

    .line 411
    :cond_2
    check-cast p1, Lcom/facebook/AccessToken;

    .line 413
    iget-object v2, p0, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    iget-object v3, p1, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->f:Ljava/util/Set;

    iget-object v3, p1, Lcom/facebook/AccessToken;->f:Ljava/util/Set;

    .line 414
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->g:Ljava/util/Set;

    iget-object v3, p1, Lcom/facebook/AccessToken;->g:Ljava/util/Set;

    .line 415
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    .line 416
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->i:Lcom/facebook/c;

    iget-object v3, p1, Lcom/facebook/AccessToken;->i:Lcom/facebook/c;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->j:Ljava/util/Date;

    iget-object v3, p1, Lcom/facebook/AccessToken;->j:Ljava/util/Date;

    .line 418
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 421
    :goto_1
    iget-object v2, p0, Lcom/facebook/AccessToken;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/AccessToken;->l:Ljava/lang/String;

    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->m:Ljava/util/Date;

    iget-object v3, p1, Lcom/facebook/AccessToken;->m:Ljava/util/Date;

    .line 423
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 418
    :cond_4
    iget-object v2, p0, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    .line 421
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1
.end method

.method public f()Ljava/util/Date;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/AccessToken;->m:Ljava/util/Date;

    return-object v0
.end method

.method public g()Ljava/util/Set;
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
    .line 257
    iget-object v0, p0, Lcom/facebook/AccessToken;->f:Ljava/util/Set;

    return-object v0
.end method

.method public h()Ljava/util/Set;
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
    .line 270
    iget-object v0, p0, Lcom/facebook/AccessToken;->g:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 428
    .line 430
    iget-object v0, p0, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 431
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->i:Lcom/facebook/c;

    invoke-virtual {v1}, Lcom/facebook/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->j:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 437
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->m:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    return v0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Lcom/facebook/c;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/AccessToken;->i:Lcom/facebook/c;

    return-object v0
.end method

.method public j()Ljava/util/Date;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/facebook/AccessToken;->j:Ljava/util/Date;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/AccessToken;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 545
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method n()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 558
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 560
    const-string v1, "version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 561
    const-string v1, "token"

    iget-object v2, p0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    const-string v1, "expires_at"

    iget-object v2, p0, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 563
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/facebook/AccessToken;->f:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 564
    const-string v2, "permissions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/facebook/AccessToken;->g:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 566
    const-string v2, "declined_permissions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    const-string v1, "last_refresh"

    iget-object v2, p0, Lcom/facebook/AccessToken;->j:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 568
    const-string v1, "source"

    iget-object v2, p0, Lcom/facebook/AccessToken;->i:Lcom/facebook/c;

    invoke-virtual {v2}, Lcom/facebook/c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    const-string v1, "application_id"

    iget-object v2, p0, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/facebook/AccessToken;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v1, "data_access_expiration_time"

    iget-object v2, p0, Lcom/facebook/AccessToken;->m:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 573
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    const-string v1, "{AccessToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/AccessToken;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-direct {p0, v0}, Lcom/facebook/AccessToken;->a(Ljava/lang/StringBuilder;)V

    .line 396
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/AccessToken;->f:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/AccessToken;->g:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 680
    iget-object v0, p0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/facebook/AccessToken;->i:Lcom/facebook/c;

    invoke-virtual {v0}, Lcom/facebook/c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/facebook/AccessToken;->j:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 683
    iget-object v0, p0, Lcom/facebook/AccessToken;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/facebook/AccessToken;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/facebook/AccessToken;->m:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 686
    return-void
.end method
