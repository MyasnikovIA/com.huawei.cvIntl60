.class public final Lcom/facebook/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/l$b;,
        Lcom/facebook/internal/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/internal/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/facebook/internal/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Z

.field private static g:Z

.field private static h:Lorg/json/JSONArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    const-class v0, Lcom/facebook/internal/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/l;->a:Ljava/lang/String;

    .line 102
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "supports_implicit_sdk_logging"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "gdpv4_nux_content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gdpv4_nux_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gdpv4_chrome_custom_tabs_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android_dialog_configs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android_sdk_error_categories"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "app_events_session_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "app_events_feature_bitmask"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "auto_event_mapping_android"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "seamless_login"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "smart_login_bookmark_icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "smart_login_menu_icon_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/l;->b:[Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/l;->c:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/internal/l$a;->a:Lcom/facebook/internal/l$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/facebook/internal/l;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 125
    sput-boolean v3, Lcom/facebook/internal/l;->f:Z

    .line 127
    sput-boolean v3, Lcom/facebook/internal/l;->g:Z

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/internal/l;->h:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/internal/k;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 213
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/internal/l;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/k;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/k;
    .locals 1

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/facebook/internal/l;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/facebook/internal/k;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    if-nez p1, :cond_1

    sget-object v0, Lcom/facebook/internal/l;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    sget-object v0, Lcom/facebook/internal/l;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/k;

    .line 289
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :cond_1
    invoke-static {p0}, Lcom/facebook/internal/l;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 278
    if-nez v0, :cond_2

    .line 279
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_2
    invoke-static {p0, v0}, Lcom/facebook/internal/l;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/k;

    move-result-object v0

    .line 284
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    sget-object v1, Lcom/facebook/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/facebook/internal/l$a;->c:Lcom/facebook/internal/l$a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 286
    invoke-static {}, Lcom/facebook/internal/l;->g()V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/k$a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 377
    if-eqz p0, :cond_2

    .line 378
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 379
    if-eqz v3, :cond_2

    .line 380
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 383
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/facebook/internal/k$a;->a(Lorg/json/JSONObject;)Lcom/facebook/internal/k$a;

    move-result-object v4

    .line 384
    if-nez v4, :cond_0

    .line 380
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/internal/k$a;->a()Ljava/lang/String;

    move-result-object v5

    .line 390
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 391
    if-nez v0, :cond_1

    .line 392
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 393
    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/internal/k$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 400
    :cond_2
    return-object v2
.end method

.method public static a()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v3

    .line 132
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-static {v4}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/facebook/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/internal/l$a;->d:Lcom/facebook/internal/l$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Lcom/facebook/internal/l;->g()V

    .line 208
    :goto_0
    return-void

    .line 138
    :cond_0
    sget-object v0, Lcom/facebook/internal/l;->c:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/facebook/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/internal/l$a;->c:Lcom/facebook/internal/l$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lcom/facebook/internal/l;->g()V

    goto :goto_0

    .line 144
    :cond_1
    sget-object v0, Lcom/facebook/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lcom/facebook/internal/l$a;->a:Lcom/facebook/internal/l$a;

    sget-object v6, Lcom/facebook/internal/l$a;->b:Lcom/facebook/internal/l$a;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/facebook/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lcom/facebook/internal/l$a;->d:Lcom/facebook/internal/l$a;

    sget-object v6, Lcom/facebook/internal/l$a;->b:Lcom/facebook/internal/l$a;

    .line 145
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 147
    :goto_1
    if-nez v0, :cond_4

    .line 148
    invoke-static {}, Lcom/facebook/internal/l;->g()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 145
    goto :goto_1

    .line 152
    :cond_4
    const-string v0, "com.facebook.internal.APP_SETTINGS.%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/facebook/k;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/internal/l$1;

    invoke-direct {v2, v3, v0, v4}, Lcom/facebook/internal/l$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 62
    sput-boolean p0, Lcom/facebook/internal/l;->f:Z

    return p0
.end method

.method private static b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/k;
    .locals 19

    .prologue
    .line 295
    const-string v2, "android_sdk_error_categories"

    .line 296
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 297
    if-nez v2, :cond_1

    .line 299
    invoke-static {}, Lcom/facebook/internal/g;->a()Lcom/facebook/internal/g;

    move-result-object v11

    .line 303
    :goto_0
    const-string v2, "app_events_feature_bitmask"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 304
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_2

    const/4 v10, 0x1

    .line 306
    :goto_1
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_3

    const/4 v14, 0x1

    .line 308
    :goto_2
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_4

    const/4 v15, 0x1

    .line 310
    :goto_3
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_5

    const/16 v18, 0x1

    .line 312
    :goto_4
    const-string v2, "auto_event_mapping_android"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 314
    sput-object v16, Lcom/facebook/internal/l;->h:Lorg/json/JSONArray;

    .line 315
    sget-object v2, Lcom/facebook/internal/l;->h:Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/facebook/internal/m;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/a/a/a/e;->a(Ljava/lang/String;)V

    .line 319
    :cond_0
    new-instance v2, Lcom/facebook/internal/k;

    const-string v3, "supports_implicit_sdk_logging"

    const/4 v4, 0x0

    .line 320
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "gdpv4_nux_content"

    const-string v5, ""

    .line 321
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gdpv4_nux_enabled"

    const/4 v6, 0x0

    .line 322
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "gdpv4_chrome_custom_tabs_enabled"

    const/4 v7, 0x0

    .line 323
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "app_events_session_timeout"

    .line 326
    invoke-static {}, Lcom/facebook/a/b/e;->a()I

    move-result v8

    .line 324
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "seamless_login"

    .line 327
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/facebook/internal/t;->a(J)Ljava/util/EnumSet;

    move-result-object v8

    const-string v9, "android_dialog_configs"

    .line 328
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/internal/l;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v9

    const-string v12, "smart_login_bookmark_icon_url"

    .line 331
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "smart_login_menu_icon_url"

    .line 332
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v17, "sdk_update_message"

    .line 336
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v18}, Lcom/facebook/internal/k;-><init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/g;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;Z)V

    .line 340
    sget-object v3, Lcom/facebook/internal/l;->c:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-object v2

    .line 300
    :cond_1
    invoke-static {v2}, Lcom/facebook/internal/g;->a(Lorg/json/JSONArray;)Lcom/facebook/internal/g;

    move-result-object v11

    goto/16 :goto_0

    .line 304
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 306
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 308
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 310
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_4
.end method

.method static synthetic b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lcom/facebook/internal/l;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/facebook/internal/l;->f:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/internal/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 356
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/internal/l;->b:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 363
    const-string v2, "fields"

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {v4, p0, v4}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 366
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/GraphRequest;->a(Z)V

    .line 367
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 369
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/p;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/internal/l;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 62
    invoke-static {}, Lcom/facebook/internal/l;->g()V

    return-void
.end method

.method private static declared-synchronized g()V
    .locals 5

    .prologue
    .line 232
    const-class v2, Lcom/facebook/internal/l;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/facebook/internal/l;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/l$a;

    .line 233
    sget-object v1, Lcom/facebook/internal/l$a;->a:Lcom/facebook/internal/l$a;

    invoke-virtual {v1, v0}, Lcom/facebook/internal/l$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/internal/l$a;->b:Lcom/facebook/internal/l$a;

    invoke-virtual {v1, v0}, Lcom/facebook/internal/l$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    :cond_0
    monitor-exit v2

    return-void

    .line 237
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v1

    .line 238
    sget-object v3, Lcom/facebook/internal/l;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/k;

    .line 239
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    sget-object v4, Lcom/facebook/internal/l$a;->d:Lcom/facebook/internal/l$a;

    invoke-virtual {v4, v0}, Lcom/facebook/internal/l$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    :goto_0
    sget-object v0, Lcom/facebook/internal/l;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lcom/facebook/internal/l;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/l$b;

    .line 244
    new-instance v1, Lcom/facebook/internal/l$2;

    invoke-direct {v1, v0}, Lcom/facebook/internal/l$2;-><init>(Lcom/facebook/internal/l$b;)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 254
    :cond_2
    :goto_1
    :try_start_2
    sget-object v0, Lcom/facebook/internal/l;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lcom/facebook/internal/l;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/l$b;

    .line 256
    new-instance v4, Lcom/facebook/internal/l$3;

    invoke-direct {v4, v0, v1}, Lcom/facebook/internal/l$3;-><init>(Lcom/facebook/internal/l$b;Lcom/facebook/internal/k;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
