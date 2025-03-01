.class Lcom/facebook/GraphRequest$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Lcom/facebook/internal/o;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/o;Z)V
    .locals 1

    .prologue
    .line 2038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/GraphRequest$f;->c:Z

    .line 2036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest$f;->d:Z

    .line 2039
    iput-object p1, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    .line 2040
    iput-object p2, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    .line 2041
    iput-boolean p3, p0, Lcom/facebook/GraphRequest$f;->d:Z

    .line 2042
    return-void
.end method

.method private b()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 2077
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 2202
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$f;->d:Z

    if-nez v0, :cond_0

    .line 2203
    const-string v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/GraphRequest;->m()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2207
    :goto_0
    return-void

    .line 2205
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    const-string v1, "&"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 2120
    const-string v0, "image/png"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2123
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2124
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$f;->a()V

    .line 2125
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    if-eqz v0, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2128
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2144
    if-nez p3, :cond_0

    .line 2145
    const-string p3, "content/unknown"

    .line 2147
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/x;

    if-eqz v0, :cond_2

    .line 2152
    invoke-static {p2}, Lcom/facebook/internal/u;->d(Landroid/net/Uri;)J

    move-result-wide v2

    .line 2154
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/x;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/x;->a(J)V

    move v0, v1

    .line 2163
    :goto_0
    const-string v2, ""

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/GraphRequest$f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2164
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$f;->a()V

    .line 2165
    iget-object v2, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    if-eqz v2, :cond_1

    .line 2166
    iget-object v2, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "<Data: %d>"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 2168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2166
    invoke-virtual {v2, v3, v0}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2170
    :cond_1
    return-void

    .line 2157
    :cond_2
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    .line 2158
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2159
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 2160
    iget-object v2, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    invoke-static {v0, v2}, Lcom/facebook/internal/u;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2177
    if-nez p3, :cond_0

    .line 2178
    const-string p3, "content/unknown"

    .line 2180
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/x;

    if-eqz v0, :cond_2

    .line 2186
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/x;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/x;->a(J)V

    move v0, v1

    .line 2192
    :goto_0
    const-string v2, ""

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/GraphRequest$f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2193
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$f;->a()V

    .line 2194
    iget-object v2, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    if-eqz v2, :cond_1

    .line 2195
    iget-object v2, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "<Data: %d>"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 2197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2195
    invoke-virtual {v2, v3, v0}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2199
    :cond_1
    return-void

    .line 2188
    :cond_2
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2190
    iget-object v2, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    invoke-static {v0, v2}, Lcom/facebook/internal/u;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2045
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/z;

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/z;

    invoke-interface {v0, p3}, Lcom/facebook/z;->a(Lcom/facebook/GraphRequest;)V

    .line 2049
    :cond_0
    invoke-static {p2}, Lcom/facebook/GraphRequest;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2050
    invoke-static {p2}, Lcom/facebook/GraphRequest;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    :goto_0
    return-void

    .line 2051
    :cond_1
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2052
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2053
    :cond_2
    instance-of v0, p2, [B

    if-eqz v0, :cond_3

    .line 2054
    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;[B)V

    goto :goto_0

    .line 2055
    :cond_3
    instance-of v0, p2, Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 2056
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2057
    :cond_4
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_5

    .line 2058
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2059
    :cond_5
    instance-of v0, p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v0, :cond_8

    .line 2060
    check-cast p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 2062
    invoke-virtual {p2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->b()Landroid/os/Parcelable;

    move-result-object v0

    .line 2063
    invoke-virtual {p2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->a()Ljava/lang/String;

    move-result-object v1

    .line 2064
    instance-of v2, v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_6

    .line 2065
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2066
    :cond_6
    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_7

    .line 2067
    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2069
    :cond_7
    invoke-direct {p0}, Lcom/facebook/GraphRequest$f;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2072
    :cond_8
    invoke-direct {p0}, Lcom/facebook/GraphRequest$f;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2111
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2113
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$f;->a()V

    .line 2114
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    if-eqz v0, :cond_0

    .line 2115
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2117
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2214
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$f;->d:Z

    if-nez v0, :cond_2

    .line 2215
    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2216
    if-eqz p2, :cond_0

    .line 2217
    const-string v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2219
    :cond_0
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2220
    if-eqz p3, :cond_1

    .line 2221
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2223
    :cond_1
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2227
    :goto_0
    return-void

    .line 2225
    :cond_2
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    const-string v1, "%s="

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2085
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/z;

    if-nez v0, :cond_1

    .line 2086
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    :cond_0
    :goto_0
    return-void

    .line 2090
    :cond_1
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/z;

    .line 2091
    invoke-virtual {p0, p1, v1, v1}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const-string v1, "["

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2094
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 2095
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2096
    invoke-interface {v0, v1}, Lcom/facebook/z;->a(Lcom/facebook/GraphRequest;)V

    .line 2097
    if-lez v2, :cond_2

    .line 2098
    const-string v1, ",%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {p0, v1, v6}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2102
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 2103
    goto :goto_1

    .line 2100
    :cond_2
    const-string v1, "%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {p0, v1, v6}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2104
    :cond_3
    const-string v0, "]"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2105
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    if-eqz v0, :cond_0

    .line 2106
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2131
    const-string v0, "content/unknown"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2133
    const-string v0, ""

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2134
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$f;->a()V

    .line 2135
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->b:Lcom/facebook/internal/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "<Data: %d>"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p2

    .line 2138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2136
    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2140
    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 2230
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$f;->d:Z

    if-nez v0, :cond_1

    .line 2231
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$f;->c:Z

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2234
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    invoke-static {}, Lcom/facebook/GraphRequest;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2235
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/GraphRequest$f;->c:Z

    .line 2238
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2244
    :goto_0
    return-void

    .line 2240
    :cond_1
    iget-object v0, p0, Lcom/facebook/GraphRequest$f;->a:Ljava/io/OutputStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2242
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 2241
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2242
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2240
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2247
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2248
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$f;->d:Z

    if-nez v0, :cond_0

    .line 2249
    const-string v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2251
    :cond_0
    return-void
.end method
