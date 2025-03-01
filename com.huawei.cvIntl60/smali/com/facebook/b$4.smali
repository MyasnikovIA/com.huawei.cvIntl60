.class Lcom/facebook/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/b;->b(Lcom/facebook/AccessToken$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/AccessToken;

.field final synthetic b:Lcom/facebook/AccessToken$a;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lcom/facebook/b$a;

.field final synthetic e:Ljava/util/Set;

.field final synthetic f:Ljava/util/Set;

.field final synthetic g:Lcom/facebook/b;


# direct methods
.method constructor <init>(Lcom/facebook/b;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$a;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/b$a;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/facebook/b$4;->g:Lcom/facebook/b;

    iput-object p2, p0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    iput-object p3, p0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    iput-object p4, p0, Lcom/facebook/b$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iput-object p6, p0, Lcom/facebook/b$4;->e:Ljava/util/Set;

    iput-object p7, p0, Lcom/facebook/b$4;->f:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/o;)V
    .locals 18

    .prologue
    .line 321
    const/4 v12, 0x0

    .line 323
    :try_start_0
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/b;->b()Lcom/facebook/AccessToken;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/b;->b()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->l()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 325
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->l()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 326
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    if-eqz v2, :cond_1

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    new-instance v3, Lcom/facebook/h;

    const-string v4, "No current access token to refresh"

    invoke-direct {v3, v4}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->g:Lcom/facebook/b;

    invoke-static {v2}, Lcom/facebook/b;->a(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    if-eqz v2, :cond_2

    if-eqz v12, :cond_2

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    invoke-interface {v2, v12}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/AccessToken;)V

    .line 366
    :cond_2
    :goto_0
    return-void

    .line 332
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget-object v2, v2, Lcom/facebook/b$a;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget v2, v2, Lcom/facebook/b$a;->b:I

    if-nez v2, :cond_5

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    if-eqz v2, :cond_4

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    new-instance v3, Lcom/facebook/h;

    const-string v4, "Failed to refresh access token"

    invoke-direct {v3, v4}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->g:Lcom/facebook/b;

    invoke-static {v2}, Lcom/facebook/b;->a(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    if-eqz v2, :cond_2

    if-eqz v12, :cond_2

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    invoke-interface {v2, v12}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/AccessToken;)V

    goto :goto_0

    .line 341
    :cond_5
    :try_start_2
    new-instance v2, Lcom/facebook/AccessToken;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget-object v3, v3, Lcom/facebook/b$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget-object v3, v3, Lcom/facebook/b$a;->a:Ljava/lang/String;

    .line 343
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 344
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->k()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 345
    invoke-virtual {v5}, Lcom/facebook/AccessToken;->l()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/b$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 346
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/b$4;->e:Ljava/util/Set;

    .line 347
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/b$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 348
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/b$4;->f:Ljava/util/Set;

    .line 349
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 350
    invoke-virtual {v8}, Lcom/facebook/AccessToken;->i()Lcom/facebook/c;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget v9, v9, Lcom/facebook/b$a;->b:I

    if-eqz v9, :cond_9

    new-instance v9, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget v10, v10, Lcom/facebook/b$a;->b:I

    int-to-long v10, v10

    const-wide/16 v14, 0x3e8

    mul-long/2addr v10, v14

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 353
    :goto_4
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget-object v11, v11, Lcom/facebook/b$a;->c:Ljava/lang/Long;

    if-eqz v11, :cond_a

    new-instance v11, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget-object v13, v13, Lcom/facebook/b$a;->c:Ljava/lang/Long;

    .line 356
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-direct {v11, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 357
    :goto_5
    invoke-direct/range {v2 .. v11}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    :try_start_3
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/b$4;->g:Lcom/facebook/b;

    invoke-static {v3}, Lcom/facebook/b;->a(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    invoke-interface {v3, v2}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/AccessToken;)V

    goto/16 :goto_0

    .line 341
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 343
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->d()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 346
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 347
    invoke-virtual {v6}, Lcom/facebook/AccessToken;->g()Ljava/util/Set;

    move-result-object v6

    goto/16 :goto_2

    .line 348
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 349
    invoke-virtual {v7}, Lcom/facebook/AccessToken;->h()Ljava/util/Set;

    move-result-object v7

    goto/16 :goto_3

    .line 350
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 353
    invoke-virtual {v9}, Lcom/facebook/AccessToken;->e()Ljava/util/Date;

    move-result-object v9

    goto :goto_4

    .line 356
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 357
    invoke-virtual {v11}, Lcom/facebook/AccessToken;->f()Ljava/util/Date;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    goto :goto_5

    .line 361
    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v4, v12

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->g:Lcom/facebook/b;

    invoke-static {v2}, Lcom/facebook/b;->a(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    if-eqz v2, :cond_b

    if-eqz v4, :cond_b

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$a;

    invoke-interface {v2, v4}, Lcom/facebook/AccessToken$a;->a(Lcom/facebook/AccessToken;)V

    .line 365
    :cond_b
    throw v3

    .line 361
    :catchall_1
    move-exception v3

    move-object v4, v2

    goto :goto_6
.end method
