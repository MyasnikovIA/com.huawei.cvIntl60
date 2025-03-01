.class Lcom/a/a/d/b/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/b/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/b/b/a$a;

.field private volatile b:Lcom/a/a/d/b/b/a;


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/b/a$a;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lcom/a/a/d/b/i$c;->a:Lcom/a/a/d/b/b/a$a;

    .line 345
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/d/b/b/a;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/a/a/d/b/i$c;->b:Lcom/a/a/d/b/b/a;

    if-nez v0, :cond_2

    .line 350
    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/b/i$c;->b:Lcom/a/a/d/b/b/a;

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/a/a/d/b/i$c;->a:Lcom/a/a/d/b/b/a$a;

    invoke-interface {v0}, Lcom/a/a/d/b/b/a$a;->a()Lcom/a/a/d/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/b/i$c;->b:Lcom/a/a/d/b/b/a;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/i$c;->b:Lcom/a/a/d/b/b/a;

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lcom/a/a/d/b/b/b;

    invoke-direct {v0}, Lcom/a/a/d/b/b/b;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/b/i$c;->b:Lcom/a/a/d/b/b/a;

    .line 357
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/a/a/d/b/i$c;->b:Lcom/a/a/d/b/b/a;

    return-object v0

    .line 357
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
