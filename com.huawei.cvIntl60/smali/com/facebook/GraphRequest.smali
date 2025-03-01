.class public Lcom/facebook/GraphRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;,
        Lcom/facebook/GraphRequest$c;,
        Lcom/facebook/GraphRequest$e;,
        Lcom/facebook/GraphRequest$b;,
        Lcom/facebook/GraphRequest$f;,
        Lcom/facebook/GraphRequest$d;,
        Lcom/facebook/GraphRequest$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/regex/Pattern;

.field private static volatile r:Ljava/lang/String;


# instance fields
.field private e:Lcom/facebook/AccessToken;

.field private f:Lcom/facebook/q;

.field private g:Ljava/lang/String;

.field private h:Lorg/json/JSONObject;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Landroid/os/Bundle;

.field private m:Lcom/facebook/GraphRequest$b;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 81
    const-class v0, Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->a:Ljava/lang/String;

    .line 131
    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->d:Ljava/util/regex/Pattern;

    .line 149
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 154
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v4, v0, 0x1e

    .line 155
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 156
    array-length v5, v1

    invoke-virtual {v3, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    aget-char v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 165
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V
    .locals 7

    .prologue
    .line 229
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->k:Z

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->q:Z

    .line 258
    iput-object p1, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/AccessToken;

    .line 259
    iput-object p2, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    .line 260
    iput-object p6, p0, Lcom/facebook/GraphRequest;->p:Ljava/lang/String;

    .line 262
    invoke-virtual {p0, p5}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$b;)V

    .line 263
    invoke-virtual {p0, p4}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/q;)V

    .line 265
    if-eqz p3, :cond_1

    .line 266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/facebook/k;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest;->p:Ljava/lang/String;

    .line 274
    :cond_0
    return-void

    .line 268
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 386
    new-instance v0, Lcom/facebook/GraphRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 339
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/q;->b:Lcom/facebook/q;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/q;Lcom/facebook/GraphRequest$b;)V

    .line 345
    invoke-virtual {v0, p2}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;)V

    .line 346
    return-object v0
.end method

.method public static a(Lcom/facebook/GraphRequest;)Lcom/facebook/p;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1105
    new-array v0, v3, [Lcom/facebook/GraphRequest;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/facebook/GraphRequest;->a([Lcom/facebook/GraphRequest;)Ljava/util/List;

    move-result-object v0

    .line 1107
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1108
    :cond_0
    new-instance v0, Lcom/facebook/h;

    const-string v1, "invalid state: expected a single response"

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/p;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1461
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphRequest;->f:Lcom/facebook/q;

    sget-object v1, Lcom/facebook/q;->b:Lcom/facebook/q;

    if-ne v0, v1, :cond_0

    .line 1491
    :goto_0
    return-object p1

    .line 1465
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1467
    iget-object v0, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1468
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1469
    iget-object v1, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1471
    if-nez v1, :cond_2

    .line 1472
    const-string v1, ""

    .line 1475
    :cond_2
    invoke-static {v1}, Lcom/facebook/GraphRequest;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1476
    invoke-static {v1}, Lcom/facebook/GraphRequest;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1488
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1478
    :cond_3
    iget-object v0, p0, Lcom/facebook/GraphRequest;->f:Lcom/facebook/q;

    sget-object v4, Lcom/facebook/q;->a:Lcom/facebook/q;

    if-ne v0, v4, :cond_1

    .line 1479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Unsupported parameter type for GET request: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1483
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 1480
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1491
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static a(Lcom/facebook/o;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1061
    invoke-static {p0}, Lcom/facebook/GraphRequest;->d(Lcom/facebook/o;)V

    .line 1065
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/o;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1067
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/o;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 1070
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    :goto_0
    const/4 v1, 0x0

    .line 1082
    :try_start_1
    invoke-static {v0}, Lcom/facebook/GraphRequest;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 1084
    invoke-static {p0, v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/o;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1091
    return-object v1

    .line 1074
    :cond_0
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/internal/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    new-instance v1, Lcom/facebook/h;

    const-string v2, "could not construct URL for request"

    invoke-direct {v1, v2, v0}, Lcom/facebook/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1085
    :catch_1
    move-exception v0

    .line 1086
    :goto_1
    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/net/URLConnection;)V

    .line 1088
    new-instance v1, Lcom/facebook/h;

    const-string v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/facebook/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1085
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1422
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1424
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/facebook/GraphRequest;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const-string v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1428
    return-object v0
.end method

.method public static a(Ljava/net/HttpURLConnection;Lcom/facebook/o;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/o;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1282
    invoke-static {p0, p1}, Lcom/facebook/p;->a(Ljava/net/HttpURLConnection;Lcom/facebook/o;)Ljava/util/List;

    move-result-object v0

    .line 1284
    invoke-static {p0}, Lcom/facebook/internal/u;->a(Ljava/net/URLConnection;)V

    .line 1286
    invoke-virtual {p1}, Lcom/facebook/o;->size()I

    move-result v1

    .line 1287
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1288
    new-instance v2, Lcom/facebook/h;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Received %d responses while expecting %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    .line 1292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1289
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1295
    :cond_0
    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/o;Ljava/util/List;)V

    .line 1298
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b;->e()V

    .line 1300
    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1146
    new-instance v0, Lcom/facebook/o;

    invoke-direct {v0, p0}, Lcom/facebook/o;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->b(Lcom/facebook/o;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Lcom/facebook/GraphRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/GraphRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1130
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/os/Bundle;Lcom/facebook/GraphRequest$f;Lcom/facebook/GraphRequest;)V
    .locals 4

    .prologue
    .line 1921
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1923
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1924
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1925
    invoke-static {v2}, Lcom/facebook/GraphRequest;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1926
    invoke-virtual {p1, v0, v2, p2}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    .line 1929
    :cond_1
    return-void
.end method

.method private static a(Lcom/facebook/GraphRequest$f;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequest$f;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1950
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1951
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1952
    invoke-direct {v0, v1, p2}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    .line 1955
    :cond_0
    const-string v0, "batch"

    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 1956
    return-void
.end method

.method private static a(Lcom/facebook/o;Lcom/facebook/internal/o;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 7

    .prologue
    .line 1761
    new-instance v1, Lcom/facebook/GraphRequest$f;

    invoke-direct {v1, p4, p1, p5}, Lcom/facebook/GraphRequest$f;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/o;Z)V

    .line 1763
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 1764
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/o;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 1766
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1767
    iget-object v0, v2, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1768
    iget-object v5, v2, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1769
    invoke-static {v5}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1770
    new-instance v6, Lcom/facebook/GraphRequest$a;

    invoke-direct {v6, v2, v5}, Lcom/facebook/GraphRequest$a;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1774
    :cond_1
    if-eqz p1, :cond_2

    .line 1775
    const-string v0, "  Parameters:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/internal/o;->c(Ljava/lang/String;)V

    .line 1777
    :cond_2
    iget-object v0, v2, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;Lcom/facebook/GraphRequest$f;Lcom/facebook/GraphRequest;)V

    .line 1779
    if-eqz p1, :cond_3

    .line 1780
    const-string v0, "  Attachments:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/internal/o;->c(Ljava/lang/String;)V

    .line 1782
    :cond_3
    invoke-static {v3, v1}, Lcom/facebook/GraphRequest;->a(Ljava/util/Map;Lcom/facebook/GraphRequest$f;)V

    .line 1784
    iget-object v0, v2, Lcom/facebook/GraphRequest;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 1785
    iget-object v0, v2, Lcom/facebook/GraphRequest;->h:Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$d;)V

    .line 1806
    :cond_4
    :goto_1
    return-void

    .line 1788
    :cond_5
    invoke-static {p0}, Lcom/facebook/GraphRequest;->g(Lcom/facebook/o;)Ljava/lang/String;

    move-result-object v0

    .line 1789
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1790
    new-instance v0, Lcom/facebook/h;

    const-string v1, "App ID was not specified at the request or Settings."

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1794
    :cond_6
    const-string v2, "batch_app_id"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1799
    invoke-static {v1, p0, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$f;Ljava/util/Collection;Ljava/util/Map;)V

    .line 1801
    if-eqz p1, :cond_7

    .line 1802
    const-string v2, "  Attachments:\n"

    invoke-virtual {p1, v2}, Lcom/facebook/internal/o;->c(Ljava/lang/String;)V

    .line 1804
    :cond_7
    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->a(Ljava/util/Map;Lcom/facebook/GraphRequest$f;)V

    goto :goto_1
.end method

.method static final a(Lcom/facebook/o;Ljava/net/HttpURLConnection;)V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 1699
    new-instance v12, Lcom/facebook/internal/o;

    sget-object v0, Lcom/facebook/t;->a:Lcom/facebook/t;

    const-string v2, "Request"

    invoke-direct {v12, v0, v2}, Lcom/facebook/internal/o;-><init>(Lcom/facebook/t;Ljava/lang/String;)V

    .line 1701
    invoke-virtual {p0}, Lcom/facebook/o;->size()I

    move-result v2

    .line 1702
    invoke-static {p0}, Lcom/facebook/GraphRequest;->f(Lcom/facebook/o;)Z

    move-result v5

    .line 1704
    if-ne v2, v1, :cond_0

    .line 1705
    invoke-virtual {p0, v6}, Lcom/facebook/o;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/GraphRequest;->f:Lcom/facebook/q;

    .line 1706
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/q;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1707
    invoke-static {p1, v5}, Lcom/facebook/GraphRequest;->a(Ljava/net/HttpURLConnection;Z)V

    .line 1709
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 1710
    const-string v7, "Request:\n"

    invoke-virtual {v12, v7}, Lcom/facebook/internal/o;->c(Ljava/lang/String;)V

    .line 1711
    const-string v7, "Id"

    invoke-virtual {p0}, Lcom/facebook/o;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1712
    const-string v7, "URL"

    invoke-virtual {v12, v7, v3}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1713
    const-string v7, "Method"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1714
    const-string v7, "User-Agent"

    const-string v8, "User-Agent"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1715
    const-string v7, "Content-Type"

    const-string v8, "Content-Type"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1717
    invoke-virtual {p0}, Lcom/facebook/o;->a()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1718
    invoke-virtual {p0}, Lcom/facebook/o;->a()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1722
    sget-object v7, Lcom/facebook/q;->b:Lcom/facebook/q;

    if-ne v0, v7, :cond_1

    move v0, v1

    .line 1723
    :goto_1
    if-nez v0, :cond_2

    .line 1724
    invoke-virtual {v12}, Lcom/facebook/internal/o;->a()V

    .line 1756
    :goto_2
    return-void

    .line 1705
    :cond_0
    sget-object v0, Lcom/facebook/q;->b:Lcom/facebook/q;

    goto :goto_0

    :cond_1
    move v0, v6

    .line 1722
    goto :goto_1

    .line 1728
    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1732
    :try_start_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    if-eqz v5, :cond_3

    .line 1734
    :try_start_1
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v0

    .line 1737
    :cond_3
    invoke-static {p0}, Lcom/facebook/GraphRequest;->e(Lcom/facebook/o;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1739
    new-instance v4, Lcom/facebook/x;

    invoke-virtual {p0}, Lcom/facebook/o;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/facebook/x;-><init>(Landroid/os/Handler;)V

    .line 1740
    const/4 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/o;Lcom/facebook/internal/o;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 1742
    invoke-virtual {v4}, Lcom/facebook/x;->a()I

    move-result v0

    .line 1743
    invoke-virtual {v4}, Lcom/facebook/x;->b()Ljava/util/Map;

    move-result-object v9

    .line 1745
    new-instance v6, Lcom/facebook/y;

    int-to-long v10, v0

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/y;-><init>(Ljava/io/OutputStream;Lcom/facebook/o;Ljava/util/Map;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v6

    :goto_3
    move-object v0, p0

    move-object v1, v12

    .line 1748
    :try_start_2
    invoke-static/range {v0 .. v5}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/o;Lcom/facebook/internal/o;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1750
    if-eqz v4, :cond_4

    .line 1751
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1755
    :cond_4
    invoke-virtual {v12}, Lcom/facebook/internal/o;->a()V

    goto :goto_2

    .line 1750
    :catchall_0
    move-exception v0

    move-object v7, v4

    :goto_4
    if-eqz v7, :cond_5

    .line 1751
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 1753
    :cond_5
    throw v0

    .line 1750
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v4

    goto :goto_4

    :cond_6
    move-object v4, v7

    goto :goto_3
.end method

.method static a(Lcom/facebook/o;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/o;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/facebook/o;->size()I

    move-result v1

    .line 1382
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1384
    invoke-virtual {p0, v0}, Lcom/facebook/o;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 1385
    iget-object v4, v3, Lcom/facebook/GraphRequest;->m:Lcom/facebook/GraphRequest$b;

    if-eqz v4, :cond_0

    .line 1386
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/facebook/GraphRequest;->m:Lcom/facebook/GraphRequest$b;

    .line 1387
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1386
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1391
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1392
    new-instance v0, Lcom/facebook/GraphRequest$3;

    invoke-direct {v0, v2, p0}, Lcom/facebook/GraphRequest$3;-><init>(Ljava/util/ArrayList;Lcom/facebook/o;)V

    .line 1405
    invoke-virtual {p0}, Lcom/facebook/o;->c()Landroid/os/Handler;

    move-result-object v1

    .line 1406
    if-nez v1, :cond_3

    .line 1408
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1414
    :cond_2
    :goto_1
    return-void

    .line 1411
    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$d;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1854
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1856
    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1857
    check-cast p1, Lorg/json/JSONObject;

    .line 1858
    if-eqz p3, :cond_0

    .line 1861
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1862
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1863
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1864
    const-string v3, "%s[%s]"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1867
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1865
    invoke-static {v3, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$d;Z)V

    goto :goto_0

    .line 1874
    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1875
    const-string v0, "id"

    .line 1877
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1875
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$d;Z)V

    .line 1914
    :cond_1
    :goto_1
    return-void

    .line 1880
    :cond_2
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1881
    const-string v0, "url"

    .line 1883
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1881
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$d;Z)V

    goto :goto_1

    .line 1886
    :cond_3
    const-string v0, "fbsdk:create_object"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1887
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$d;Z)V

    goto :goto_1

    .line 1890
    :cond_4
    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1891
    check-cast p1, Lorg/json/JSONArray;

    .line 1892
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v0, v1

    .line 1893
    :goto_2
    if-ge v0, v2, :cond_1

    .line 1894
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "%s[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1895
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$d;Z)V

    .line 1893
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1897
    :cond_5
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Ljava/lang/Number;

    .line 1898
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Ljava/lang/Boolean;

    .line 1899
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1900
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/GraphRequest$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1901
    :cond_7
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1902
    check-cast p1, Ljava/util/Date;

    .line 1909
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1912
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/GraphRequest$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static a(Ljava/net/HttpURLConnection;Z)V
    .locals 2

    .prologue
    .line 1637
    if-eqz p1, :cond_0

    .line 1638
    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :goto_0
    return-void

    .line 1641
    :cond_0
    const-string v0, "Content-Type"

    invoke-static {}, Lcom/facebook/GraphRequest;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Lcom/facebook/GraphRequest$f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$a;",
            ">;",
            "Lcom/facebook/GraphRequest$f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1935
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1937
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1938
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest$a;

    .line 1939
    invoke-virtual {v1}, Lcom/facebook/GraphRequest$a;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1940
    invoke-virtual {v1}, Lcom/facebook/GraphRequest$a;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/GraphRequest$a;->a()Lcom/facebook/GraphRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    .line 1943
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1556
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1558
    iget-object v0, p0, Lcom/facebook/GraphRequest;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1559
    const-string v0, "name"

    iget-object v2, p0, Lcom/facebook/GraphRequest;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1560
    const-string v0, "omit_response_on_success"

    iget-boolean v2, p0, Lcom/facebook/GraphRequest;->k:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1565
    const-string v0, "depends_on"

    iget-object v2, p0, Lcom/facebook/GraphRequest;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1568
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->k()Ljava/lang/String;

    move-result-object v2

    .line 1569
    const-string v0, "relative_url"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1570
    const-string v0, "method"

    iget-object v3, p0, Lcom/facebook/GraphRequest;->f:Lcom/facebook/q;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1571
    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_2

    .line 1572
    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->d()Ljava/lang/String;

    move-result-object v0

    .line 1573
    invoke-static {v0}, Lcom/facebook/internal/o;->a(Ljava/lang/String;)V

    .line 1577
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    iget-object v0, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1579
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1580
    iget-object v5, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1581
    invoke-static {v0}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1583
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%s%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "file"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1587
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1583
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1588
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    new-instance v6, Lcom/facebook/GraphRequest$a;

    invoke-direct {v6, p0, v0}, Lcom/facebook/GraphRequest$a;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1593
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1594
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1595
    const-string v3, "attached_files"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1598
    :cond_5
    iget-object v0, p0, Lcom/facebook/GraphRequest;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    .line 1600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    iget-object v3, p0, Lcom/facebook/GraphRequest;->h:Lorg/json/JSONObject;

    new-instance v4, Lcom/facebook/GraphRequest$4;

    invoke-direct {v4, p0, v0}, Lcom/facebook/GraphRequest$4;-><init>(Lcom/facebook/GraphRequest;Ljava/util/ArrayList;)V

    invoke-static {v3, v2, v4}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$d;)V

    .line 1611
    const-string v2, "&"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1612
    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1615
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1616
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$d;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1831
    .line 1832
    invoke-static {p1}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1833
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1834
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1835
    const/4 v4, 0x3

    if-le v0, v4, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    move v3, v0

    .line 1839
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1840
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1841
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1842
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1843
    if-eqz v3, :cond_2

    const-string v4, "image"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    .line 1844
    :goto_3
    invoke-static {v0, v6, p2, v4}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$d;Z)V

    goto :goto_2

    :cond_1
    move v0, v2

    .line 1835
    goto :goto_0

    :cond_2
    move v4, v2

    .line 1843
    goto :goto_3

    .line 1846
    :cond_3
    return-void

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1809
    sget-object v1, Lcom/facebook/GraphRequest;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1810
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1812
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1814
    :cond_0
    const-string v1, "me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1817
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/Collection;)Lcom/facebook/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Lcom/facebook/n;"
        }
    .end annotation

    .prologue
    .line 1220
    new-instance v0, Lcom/facebook/o;

    invoke-direct {v0, p0}, Lcom/facebook/o;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->c(Lcom/facebook/o;)Lcom/facebook/n;

    move-result-object v0

    return-object v0
.end method

.method public static varargs b([Lcom/facebook/GraphRequest;)Lcom/facebook/n;
    .locals 1

    .prologue
    .line 1201
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1203
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphRequest;->b(Ljava/util/Collection;)Lcom/facebook/n;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/facebook/o;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/o;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/p;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1165
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/v;->c(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1170
    :try_start_0
    invoke-static {p0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/o;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1180
    :try_start_1
    invoke-static {v1, p0}, Lcom/facebook/GraphRequest;->a(Ljava/net/HttpURLConnection;Lcom/facebook/o;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1184
    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/net/URLConnection;)V

    .line 1182
    :goto_0
    return-object v0

    .line 1171
    :catch_0
    move-exception v0

    .line 1173
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/o;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/facebook/h;

    invoke-direct {v4, v0}, Lcom/facebook/h;-><init>(Ljava/lang/Throwable;)V

    .line 1172
    invoke-static {v2, v3, v4}, Lcom/facebook/p;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/h;)Ljava/util/List;

    move-result-object v0

    .line 1176
    invoke-static {p0, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/o;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1184
    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/net/URLConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/net/URLConnection;)V

    .line 1185
    throw v0
.end method

.method static final b(Lcom/facebook/GraphRequest;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1658
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->d()Ljava/lang/String;

    move-result-object v0

    .line 1659
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1668
    :goto_0
    return v2

    .line 1663
    :cond_0
    const-string v3, "v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1664
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1666
    :cond_1
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1668
    array-length v3, v0

    if-lt v3, v4, :cond_2

    aget-object v3, v0, v1

    .line 1669
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v4, :cond_3

    :cond_2
    aget-object v3, v0, v1

    .line 1670
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v4, :cond_4

    aget-object v0, v0, v2

    .line 1671
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_4

    :cond_3
    move v0, v2

    :goto_1
    move v2, v0

    .line 1668
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1671
    goto :goto_1
.end method

.method static synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Lcom/facebook/GraphRequest;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Lcom/facebook/o;)Lcom/facebook/n;
    .locals 3

    .prologue
    .line 1238
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/v;->c(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1240
    new-instance v0, Lcom/facebook/n;

    invoke-direct {v0, p0}, Lcom/facebook/n;-><init>(Lcom/facebook/o;)V

    .line 1241
    invoke-static {}, Lcom/facebook/k;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/n;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1242
    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Lcom/facebook/GraphRequest;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final d(Lcom/facebook/o;)V
    .locals 8

    .prologue
    .line 1676
    invoke-virtual {p0}, Lcom/facebook/o;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1677
    sget-object v2, Lcom/facebook/q;->a:Lcom/facebook/q;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->c()Lcom/facebook/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1678
    invoke-static {v0}, Lcom/facebook/GraphRequest;->b(Lcom/facebook/GraphRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1679
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->e()Landroid/os/Bundle;

    move-result-object v2

    .line 1680
    const-string v3, "fields"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "fields"

    .line 1681
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1682
    :cond_1
    sget-object v2, Lcom/facebook/t;->f:Lcom/facebook/t;

    const/4 v3, 0x5

    const-string v4, "Request"

    const-string v5, "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1688
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 1682
    invoke-static {v2, v3, v4, v5, v6}, Lcom/facebook/internal/o;->a(Lcom/facebook/t;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1693
    :cond_2
    return-void
.end method

.method private static d(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2003
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Lcom/facebook/o;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1619
    invoke-virtual {p0}, Lcom/facebook/o;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/o$a;

    .line 1620
    instance-of v0, v0, Lcom/facebook/o$b;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1631
    :goto_0
    return v0

    .line 1625
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/o;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1626
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->g()Lcom/facebook/GraphRequest$b;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/GraphRequest$e;

    if-eqz v0, :cond_2

    move v0, v1

    .line 1627
    goto :goto_0

    .line 1631
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2011
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2016
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2017
    check-cast p0, Ljava/lang/String;

    .line 2023
    :goto_0
    return-object p0

    .line 2018
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 2019
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2020
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 2021
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2023
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2025
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f(Lcom/facebook/o;)Z
    .locals 5

    .prologue
    .line 1646
    invoke-virtual {p0}, Lcom/facebook/o;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1647
    iget-object v1, v0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1648
    iget-object v4, v0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1649
    invoke-static {v1}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1650
    const/4 v0, 0x0

    .line 1654
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static g(Lcom/facebook/o;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1983
    invoke-virtual {p0}, Lcom/facebook/o;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1984
    invoke-virtual {p0}, Lcom/facebook/o;->f()Ljava/lang/String;

    move-result-object v0

    .line 1999
    :goto_0
    return-object v0

    .line 1987
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/o;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1988
    iget-object v0, v0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/AccessToken;

    .line 1989
    if-eqz v0, :cond_1

    .line 1990
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->k()Ljava/lang/String;

    move-result-object v0

    .line 1991
    if-eqz v0, :cond_1

    goto :goto_0

    .line 1996
    :cond_2
    sget-object v0, Lcom/facebook/GraphRequest;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1997
    sget-object v0, Lcom/facebook/GraphRequest;->c:Ljava/lang/String;

    goto :goto_0

    .line 1999
    :cond_3
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_2

    .line 1434
    iget-object v0, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->d()Ljava/lang/String;

    move-result-object v0

    .line 1436
    invoke-static {v0}, Lcom/facebook/internal/o;->a(Ljava/lang/String;)V

    .line 1437
    iget-object v1, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    sget-object v0, Lcom/facebook/t;->h:Lcom/facebook/t;

    invoke-static {v0}, Lcom/facebook/k;->a(Lcom/facebook/t;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1454
    iget-object v0, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    const-string v1, "debug"

    const-string v2, "info"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_1
    :goto_1
    return-void

    .line 1439
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v0

    .line 1441
    invoke-static {}, Lcom/facebook/k;->k()Ljava/lang/String;

    move-result-object v1

    .line 1442
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1444
    iget-object v1, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1446
    :cond_3
    sget-object v0, Lcom/facebook/GraphRequest;->a:Ljava/lang/String;

    const-string v1, "Warning: Request without access token missing application ID or client token."

    invoke-static {v0, v1}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1455
    :cond_4
    sget-object v0, Lcom/facebook/t;->g:Lcom/facebook/t;

    invoke-static {v0}, Lcom/facebook/k;->a(Lcom/facebook/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1456
    iget-object v0, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    const-string v1, "debug"

    const-string v2, "warning"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1527
    sget-object v0, Lcom/facebook/GraphRequest;->d:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1528
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    .line 1531
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/GraphRequest;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static p()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1959
    const-string v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/GraphRequest;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static q()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1965
    sget-object v0, Lcom/facebook/GraphRequest;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1966
    const-string v0, "%s.%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "FBAndroidSDK"

    aput-object v2, v1, v5

    const-string v2, "4.42.0"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->r:Ljava/lang/String;

    .line 1969
    invoke-static {}, Lcom/facebook/internal/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 1970
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1971
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%s/%s"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/facebook/GraphRequest;->r:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->r:Ljava/lang/String;

    .line 1979
    :cond_0
    sget-object v0, Lcom/facebook/GraphRequest;->r:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/facebook/GraphRequest;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    .line 789
    return-void
.end method

.method public final a(Lcom/facebook/GraphRequest$b;)V
    .locals 1

    .prologue
    .line 920
    sget-object v0, Lcom/facebook/t;->h:Lcom/facebook/t;

    invoke-static {v0}, Lcom/facebook/k;->a(Lcom/facebook/t;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/t;->g:Lcom/facebook/t;

    .line 921
    invoke-static {v0}, Lcom/facebook/k;->a(Lcom/facebook/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    :cond_0
    new-instance v0, Lcom/facebook/GraphRequest$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/GraphRequest$2;-><init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$b;)V

    .line 959
    iput-object v0, p0, Lcom/facebook/GraphRequest;->m:Lcom/facebook/GraphRequest$b;

    .line 964
    :goto_0
    return-void

    .line 961
    :cond_1
    iput-object p1, p0, Lcom/facebook/GraphRequest;->m:Lcom/facebook/GraphRequest$b;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/q;)V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/facebook/GraphRequest;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/q;->a:Lcom/facebook/q;

    if-eq p1, v0, :cond_0

    .line 741
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/facebook/GraphRequest;->f:Lcom/facebook/q;

    .line 744
    return-void

    .line 743
    :cond_1
    sget-object p1, Lcom/facebook/q;->a:Lcom/facebook/q;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/facebook/GraphRequest;->o:Ljava/lang/Object;

    .line 975
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/facebook/GraphRequest;->h:Lorg/json/JSONObject;

    .line 705
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 770
    iput-boolean p1, p0, Lcom/facebook/GraphRequest;->q:Z

    .line 771
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/facebook/q;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/facebook/GraphRequest;->f:Lcom/facebook/q;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/facebook/GraphRequest;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    return-object v0
.end method

.method public final f()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public final g()Lcom/facebook/GraphRequest$b;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/facebook/GraphRequest;->m:Lcom/facebook/GraphRequest$b;

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/facebook/GraphRequest;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()Lcom/facebook/p;
    .locals 1

    .prologue
    .line 999
    invoke-static {p0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/p;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/facebook/n;
    .locals 2

    .prologue
    .line 1014
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/facebook/GraphRequest;->b([Lcom/facebook/GraphRequest;)Lcom/facebook/n;

    move-result-object v0

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1495
    iget-object v0, p0, Lcom/facebook/GraphRequest;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1496
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1499
    :cond_0
    const-string v0, "%s/%s"

    new-array v1, v3, [Ljava/lang/Object;

    .line 1500
    invoke-static {}, Lcom/facebook/internal/s;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->o()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->n()V

    .line 1502
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 1503
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1504
    const-string v1, "%s?%s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final l()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1508
    iget-object v0, p0, Lcom/facebook/GraphRequest;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/facebook/GraphRequest;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1523
    :goto_0
    return-object v0

    .line 1513
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->c()Lcom/facebook/q;

    move-result-object v0

    sget-object v1, Lcom/facebook/q;->b:Lcom/facebook/q;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    const-string v1, "/videos"

    .line 1515
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1516
    invoke-static {}, Lcom/facebook/internal/s;->c()Ljava/lang/String;

    move-result-object v0

    .line 1520
    :goto_1
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->o()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1522
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->n()V

    .line 1523
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1518
    :cond_1
    invoke-static {}, Lcom/facebook/internal/s;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Request: "

    .line 1362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accessToken: "

    .line 1363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 1364
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphPath: "

    .line 1365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    .line 1366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    .line 1367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->h:Lorg/json/JSONObject;

    .line 1368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpMethod: "

    .line 1369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->f:Lcom/facebook/q;

    .line 1370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters: "

    .line 1371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/GraphRequest;->l:Landroid/os/Bundle;

    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    .line 1373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1361
    return-object v0

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/AccessToken;

    goto :goto_0
.end method
