.class public final Lcom/a/a/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/a;

.field private final b:Lcom/a/a/a/a$c;

.field private final c:[Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/a/a/a/a;Lcom/a/a/a/a$c;)V
    .locals 1

    .prologue
    .line 712
    iput-object p1, p0, Lcom/a/a/a/a$b;->a:Lcom/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p2, p0, Lcom/a/a/a/a$b;->b:Lcom/a/a/a/a$c;

    .line 714
    invoke-static {p2}, Lcom/a/a/a/a$c;->d(Lcom/a/a/a/a$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/a/a/a/a$b;->c:[Z

    .line 715
    return-void

    .line 714
    :cond_0
    invoke-static {p1}, Lcom/a/a/a/a;->e(Lcom/a/a/a/a;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/a/a/a/a;Lcom/a/a/a/a$c;Lcom/a/a/a/a$1;)V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/a$b;-><init>(Lcom/a/a/a/a;Lcom/a/a/a/a$c;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/a$b;)Lcom/a/a/a/a$c;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/a/a/a/a$b;->b:Lcom/a/a/a/a$c;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/a/a$b;)[Z
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/a/a/a/a$b;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 3

    .prologue
    .line 747
    iget-object v1, p0, Lcom/a/a/a/a$b;->a:Lcom/a/a/a/a;

    monitor-enter v1

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/a$b;->b:Lcom/a/a/a/a$c;

    invoke-static {v0}, Lcom/a/a/a/a$c;->a(Lcom/a/a/a/a$c;)Lcom/a/a/a/a$b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 749
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 751
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/a/a/a/a$b;->b:Lcom/a/a/a/a$c;

    invoke-static {v0}, Lcom/a/a/a/a$c;->d(Lcom/a/a/a/a$c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/a/a/a/a$b;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a$b;->b:Lcom/a/a/a/a$c;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a$c;->b(I)Ljava/io/File;

    move-result-object v0

    .line 755
    iget-object v2, p0, Lcom/a/a/a/a$b;->a:Lcom/a/a/a/a;

    invoke-static {v2}, Lcom/a/a/a/a;->f(Lcom/a/a/a/a;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 756
    iget-object v2, p0, Lcom/a/a/a/a$b;->a:Lcom/a/a/a/a;

    invoke-static {v2}, Lcom/a/a/a/a;->f(Lcom/a/a/a/a;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 758
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 783
    iget-object v0, p0, Lcom/a/a/a/a$b;->a:Lcom/a/a/a/a;

    invoke-static {v0, p0, v1}, Lcom/a/a/a/a;->a(Lcom/a/a/a/a;Lcom/a/a/a/a$b;Z)V

    .line 784
    iput-boolean v1, p0, Lcom/a/a/a/a$b;->d:Z

    .line 785
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/a/a/a/a$b;->a:Lcom/a/a/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/a/a/a/a;->a(Lcom/a/a/a/a;Lcom/a/a/a/a$b;Z)V

    .line 793
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/a/a/a/a$b;->d:Z

    if-nez v0, :cond_0

    .line 798
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/a/a$b;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v0

    goto :goto_0
.end method
