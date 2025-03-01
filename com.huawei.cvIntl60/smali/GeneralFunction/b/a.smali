.class public LGeneralFunction/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Ljava/lang/String;

.field private static g:D

.field private static h:J

.field private static m:J

.field private static n:I


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "Debug"

    sput-object v0, LGeneralFunction/b/a;->f:Ljava/lang/String;

    .line 34
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    sput-wide v0, LGeneralFunction/b/a;->g:D

    .line 35
    const-wide/16 v0, 0x64

    sput-wide v0, LGeneralFunction/b/a;->h:J

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, LGeneralFunction/b/a;->m:J

    .line 43
    const/16 v0, 0x41

    sput v0, LGeneralFunction/b/a;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LGeneralFunction/b/a;->a:J

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LGeneralFunction/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AutoDump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/b/a;->b:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LGeneralFunction/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AutoDump/Log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/b/a;->c:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LGeneralFunction/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AutoDump/Log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LGeneralFunction/b/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/b/a;->d:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LGeneralFunction/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AutoDump/Log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LGeneralFunction/b/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dbg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/b/a;->e:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/b/a;->i:Landroid/content/Context;

    .line 37
    const-string v0, ""

    iput-object v0, p0, LGeneralFunction/b/a;->j:Ljava/lang/String;

    .line 38
    iput-wide v4, p0, LGeneralFunction/b/a;->k:J

    .line 39
    iput-wide v4, p0, LGeneralFunction/b/a;->l:J

    .line 46
    iput-object p1, p0, LGeneralFunction/b/a;->i:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;DJ)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LGeneralFunction/b/a;->a:J

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LGeneralFunction/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AutoDump/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/b/a;->b:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LGeneralFunction/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AutoDump/Log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/b/a;->c:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LGeneralFunction/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AutoDump/Log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LGeneralFunction/b/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/b/a;->d:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LGeneralFunction/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AutoDump/Log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LGeneralFunction/b/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dbg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/b/a;->e:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/b/a;->i:Landroid/content/Context;

    .line 37
    const-string v0, ""

    iput-object v0, p0, LGeneralFunction/b/a;->j:Ljava/lang/String;

    .line 38
    iput-wide v4, p0, LGeneralFunction/b/a;->k:J

    .line 39
    iput-wide v4, p0, LGeneralFunction/b/a;->l:J

    .line 51
    iput-object p1, p0, LGeneralFunction/b/a;->i:Landroid/content/Context;

    .line 52
    sput-object p2, LGeneralFunction/b/a;->f:Ljava/lang/String;

    .line 53
    sput-wide p3, LGeneralFunction/b/a;->g:D

    .line 54
    sput-wide p5, LGeneralFunction/b/a;->h:J

    .line 56
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LGeneralFunction/b/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 63
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LGeneralFunction/b/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 69
    :cond_1
    invoke-direct {p0}, LGeneralFunction/b/a;->e()V

    .line 70
    return-void
.end method

.method private a(Ljava/io/File;)J
    .locals 4

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    if-eqz v2, :cond_0

    .line 111
    array-length v0, v2

    int-to-long v0, v0

    .line 114
    :cond_0
    return-wide v0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 118
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 120
    new-instance v0, LGeneralFunction/b/a$1;

    invoke-direct {v0, p0}, LGeneralFunction/b/a$1;-><init>(LGeneralFunction/b/a;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 135
    const/4 v0, 0x0

    :goto_0
    int-to-long v2, v0

    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    .line 136
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 137
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public static c()D
    .locals 2

    .prologue
    .line 156
    sget-wide v0, LGeneralFunction/b/a;->g:D

    return-wide v0
.end method

.method public static d()J
    .locals 2

    .prologue
    .line 160
    sget-wide v0, LGeneralFunction/b/a;->h:J

    return-wide v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 144
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LGeneralFunction/b/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, v0}, LGeneralFunction/b/a;->a(Ljava/io/File;)J

    move-result-wide v0

    .line 146
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sget-wide v2, LGeneralFunction/b/a;->h:J

    sub-long/2addr v0, v2

    .line 147
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 148
    iget-object v2, p0, LGeneralFunction/b/a;->c:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, LGeneralFunction/b/a;->a(Ljava/lang/String;J)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .prologue
    .line 75
    :try_start_0
    sget v0, LGeneralFunction/b/a;->n:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LGeneralFunction/b/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v0}, LGeneralFunction/b/a;->a(Ljava/io/File;)J

    move-result-wide v2

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, LGeneralFunction/b/a;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, LGeneralFunction/b/a;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method
