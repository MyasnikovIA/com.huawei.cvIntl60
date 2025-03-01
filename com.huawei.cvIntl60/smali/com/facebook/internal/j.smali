.class public Lcom/facebook/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/facebook/internal/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/j;->a:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/j;->b:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/internal/j;->c:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "sdk_version"

    invoke-static {}, Lcom/facebook/k;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "fields"

    const-string v2, "gatekeepers"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "mobile_sdk_gk"

    aput-object v3, v2, v4

    .line 158
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v5, v1, v5}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v4}, Lcom/facebook/GraphRequest;->a(Z)V

    .line 161
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/p;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 170
    const-class v3, Lcom/facebook/internal/j;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/facebook/internal/j;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/facebook/internal/j;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    .line 175
    :goto_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 176
    const/4 v0, 0x0

    .line 177
    if-eqz v4, :cond_0

    .line 178
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 181
    :cond_0
    if-eqz v0, :cond_2

    const-string v4, "gatekeepers"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 182
    const-string v4, "gatekeepers"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 183
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v1, v0, :cond_2

    .line 185
    :try_start_1
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 186
    const-string v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 173
    :cond_1
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v5, "FacebookSDK"

    invoke-static {v5, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 193
    :cond_2
    :try_start_3
    sget-object v0, Lcom/facebook/internal/j;->b:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    monitor-exit v3

    return-object v2
.end method

.method public static a(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 116
    if-nez p1, :cond_0

    sget-object v0, Lcom/facebook/internal/j;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/facebook/internal/j;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 135
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/j;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    if-nez v0, :cond_1

    .line 122
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    .line 126
    const-string v2, "com.facebook.internal.APP_GATEKEEPERS.%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 128
    const-string v3, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 131
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    invoke-static {p0, v0}, Lcom/facebook/internal/j;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method
