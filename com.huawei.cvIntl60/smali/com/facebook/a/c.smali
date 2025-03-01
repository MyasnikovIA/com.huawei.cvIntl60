.class Lcom/facebook/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/c$b;,
        Lcom/facebook/a/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final b:Lorg/json/JSONObject;

.field private final c:Z

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/a/c;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V
    .locals 1
    .param p7    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static/range {p1 .. p7}, Lcom/facebook/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/c;->b:Lorg/json/JSONObject;

    .line 76
    iput-boolean p5, p0, Lcom/facebook/a/c;->c:Z

    .line 77
    iput-boolean p6, p0, Lcom/facebook/a/c;->d:Z

    .line 78
    iput-object p2, p0, Lcom/facebook/a/c;->e:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/facebook/a/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/c;->f:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/a/c;->b:Lorg/json/JSONObject;

    .line 92
    iput-boolean p2, p0, Lcom/facebook/a/c;->c:Z

    .line 93
    iget-object v0, p0, Lcom/facebook/a/c;->b:Lorg/json/JSONObject;

    const-string v1, "_eventName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/c;->e:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/facebook/a/c;->f:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Lcom/facebook/a/c;->d:Z

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/a/c$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/a/c;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)Lorg/json/JSONObject;
    .locals 8
    .param p6    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    invoke-static {p1}, Lcom/facebook/a/c;->a(Ljava/lang/String;)V

    .line 172
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 174
    const-string v0, "_eventName"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v0, "_eventName_md5"

    invoke-static {p1}, Lcom/facebook/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v0, "_logTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 177
    const-string v0, "_ui"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    if-eqz p6, :cond_0

    .line 179
    const-string v0, "_session_id"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    :cond_0
    if-eqz p2, :cond_1

    .line 183
    const-string v0, "_valueToSum"

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 186
    :cond_1
    if-eqz p4, :cond_2

    .line 187
    const-string v0, "_implicitlyLogged"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_2
    if-eqz p5, :cond_3

    .line 191
    const-string v0, "_inBackground"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    :cond_3
    if-eqz p3, :cond_5

    .line 195
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    invoke-static {v0}, Lcom/facebook/a/c;->a(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 200
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/Number;

    if-nez v4, :cond_4

    .line 201
    new-instance v1, Lcom/facebook/h;

    const-string v2, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    aput-object v0, v4, v7

    .line 202
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 214
    :cond_5
    if-nez p4, :cond_6

    .line 215
    sget-object v0, Lcom/facebook/t;->e:Lcom/facebook/t;

    const-string v2, "AppEvents"

    const-string v3, "Created app event \'%s\'"

    new-array v4, v7, [Ljava/lang/Object;

    .line 216
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 215
    invoke-static {v0, v2, v3, v4}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :cond_6
    return-object v1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x28

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    const-string v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    .line 123
    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 126
    :cond_0
    if-nez p0, :cond_1

    .line 127
    const-string p0, "<None Provided>"

    .line 129
    :cond_1
    new-instance v0, Lcom/facebook/h;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Identifier \'%s\' must be less than %d characters"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 130
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2
    sget-object v1, Lcom/facebook/a/c;->a:Ljava/util/HashSet;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Lcom/facebook/a/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 141
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    if-nez v0, :cond_3

    .line 144
    const-string v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    sget-object v1, Lcom/facebook/a/c;->a:Ljava/util/HashSet;

    monitor-enter v1

    .line 146
    :try_start_1
    sget-object v0, Lcom/facebook/a/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    :cond_3
    return-void

    .line 141
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 147
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 149
    :cond_4
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    .line 150
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 300
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 301
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 302
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 303
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 304
    invoke-static {v0}, Lcom/facebook/a/b/b;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 306
    :catch_0
    move-exception v0

    .line 308
    const-string v1, "Failed to generate checksum: "

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 309
    const-string v0, "0"

    goto :goto_0

    .line 311
    :catch_1
    move-exception v0

    .line 313
    const-string v1, "Failed to generate checksum: "

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 314
    const-string v0, "1"

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/facebook/a/c;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    .line 283
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/facebook/a/c;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/a/c;->b:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 292
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 264
    new-instance v0, Lcom/facebook/a/c$b;

    iget-object v1, p0, Lcom/facebook/a/c;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/a/c;->c:Z

    iget-boolean v3, p0, Lcom/facebook/a/c;->d:Z

    iget-object v4, p0, Lcom/facebook/a/c;->f:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/c$b;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/a/c$1;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/facebook/a/c;->c:Z

    return v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/a/c;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/a/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/a/c;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 269
    const-string v0, "\"%s\", implicit: %b, json: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/a/c;->b:Lorg/json/JSONObject;

    const-string v4, "_eventName"

    .line 271
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/facebook/a/c;->c:Z

    .line 272
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/a/c;->b:Lorg/json/JSONObject;

    .line 273
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 269
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
