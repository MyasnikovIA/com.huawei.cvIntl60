.class public Lcom/facebook/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/nsd/NsdManager$RegistrationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/facebook/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/b/a/a;->a:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/b/a/a;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 77
    :try_start_0
    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/facebook/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p0}, Lcom/facebook/b/a/a;->d(Ljava/lang/String;)Z

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    new-instance v5, Ljava/util/EnumMap;

    const-class v0, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v5, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 105
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :try_start_0
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v3, 0xc8

    const/16 v4, 0xc8

    move-object v1, p0

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    .line 110
    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 111
    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 112
    mul-int v0, v7, v3

    new-array v1, v0, [I

    move v4, v8

    .line 114
    :goto_0
    if-ge v4, v7, :cond_2

    .line 115
    mul-int v9, v4, v3

    move v2, v8

    .line 116
    :goto_1
    if-ge v2, v3, :cond_1

    .line 117
    add-int v10, v9, v2

    .line 118
    invoke-virtual {v5, v2, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    :goto_2
    aput v0, v1, v10

    .line 116
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 118
    :cond_0
    const/4 v0, -0x1

    goto :goto_2

    .line 114
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 122
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    :try_start_1
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_3
    return-object v0

    .line 125
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 98
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/l;->a(Ljava/lang/String;)Lcom/facebook/internal/k;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/facebook/internal/k;->e()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/facebook/internal/t;->b:Lcom/facebook/internal/t;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    invoke-static {p0}, Lcom/facebook/b/a/a;->e(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 138
    sget-object v0, Lcom/facebook/b/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return v6

    .line 143
    :cond_0
    invoke-static {}, Lcom/facebook/k;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v1, "%s_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "fbsdk"

    aput-object v3, v2, v7

    const-string v3, "%s-%s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "android"

    aput-object v5, v4, v7

    aput-object v0, v4, v6

    .line 151
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    aput-object p0, v2, v8

    .line 146
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 162
    new-instance v2, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v2}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 163
    const-string v0, "_fb._tcp."

    invoke-virtual {v2, v0}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 165
    const/16 v0, 0x50

    invoke-virtual {v2, v0}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 168
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    const-string v3, "servicediscovery"

    .line 169
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    .line 171
    new-instance v3, Lcom/facebook/b/a/a$1;

    invoke-direct {v3, v1, p0}, Lcom/facebook/b/a/a$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v1, Lcom/facebook/b/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v0, v2, v6, v3}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lcom/facebook/b/a/a;->b:Ljava/util/HashMap;

    .line 207
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 208
    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "servicediscovery"

    .line 211
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager;

    .line 214
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    sget-object v0, Lcom/facebook/b/a/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    sget-object v1, Lcom/facebook/b/a/a;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
