.class public LGeneralFunction/o/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 19
    const-string v0, "SystemDump"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    const-string v0, "dumpTask S"

    invoke-direct {p0, v0, v4}, LGeneralFunction/o/a;->a(Ljava/lang/String;I)V

    .line 30
    const/4 v1, 0x0

    .line 33
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ps -t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_2

    .line 36
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 38
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, LGeneralFunction/o/a;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    .line 44
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v3

    .line 46
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 49
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 54
    :cond_1
    :goto_3
    const-string v0, "dumpTask E"

    invoke-direct {p0, v0, v4}, LGeneralFunction/o/a;->a(Ljava/lang/String;I)V

    .line 55
    return-void

    .line 50
    :catch_1
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 43
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method
