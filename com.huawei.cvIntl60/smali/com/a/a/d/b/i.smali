.class public Lcom/a/a/d/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/b/b/h$a;
.implements Lcom/a/a/d/b/k;
.implements Lcom/a/a/d/b/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/b/i$b;,
        Lcom/a/a/d/b/i$a;,
        Lcom/a/a/d/b/i$e;,
        Lcom/a/a/d/b/i$f;,
        Lcom/a/a/d/b/i$c;,
        Lcom/a/a/d/b/i$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/d/h;",
            "Lcom/a/a/d/b/j",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/d/b/m;

.field private final c:Lcom/a/a/d/b/b/h;

.field private final d:Lcom/a/a/d/b/i$b;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/d/h;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/a/a/d/b/n",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/a/a/d/b/v;

.field private final g:Lcom/a/a/d/b/i$c;

.field private final h:Lcom/a/a/d/b/i$a;

.field private i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/a/a/d/b/n",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/b/a$a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;)V
    .locals 12

    .prologue
    .line 70
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v11}, Lcom/a/a/d/b/i;-><init>(Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/b/a$a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Ljava/util/Map;Lcom/a/a/d/b/m;Ljava/util/Map;Lcom/a/a/d/b/i$b;Lcom/a/a/d/b/i$a;Lcom/a/a/d/b/v;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/a/a/d/b/b/h;Lcom/a/a/d/b/b/a$a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Ljava/util/Map;Lcom/a/a/d/b/m;Ljava/util/Map;Lcom/a/a/d/b/i$b;Lcom/a/a/d/b/i$a;Lcom/a/a/d/b/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/b/h;",
            "Lcom/a/a/d/b/b/a$a;",
            "Lcom/a/a/d/b/c/a;",
            "Lcom/a/a/d/b/c/a;",
            "Lcom/a/a/d/b/c/a;",
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/d/h;",
            "Lcom/a/a/d/b/j",
            "<*>;>;",
            "Lcom/a/a/d/b/m;",
            "Ljava/util/Map",
            "<",
            "Lcom/a/a/d/h;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/a/a/d/b/n",
            "<*>;>;>;",
            "Lcom/a/a/d/b/i$b;",
            "Lcom/a/a/d/b/i$a;",
            "Lcom/a/a/d/b/v;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/a/a/d/b/i;->c:Lcom/a/a/d/b/b/h;

    .line 87
    new-instance v0, Lcom/a/a/d/b/i$c;

    invoke-direct {v0, p2}, Lcom/a/a/d/b/i$c;-><init>(Lcom/a/a/d/b/b/a$a;)V

    iput-object v0, p0, Lcom/a/a/d/b/i;->g:Lcom/a/a/d/b/i$c;

    .line 89
    if-nez p8, :cond_0

    .line 90
    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    .line 92
    :cond_0
    iput-object p8, p0, Lcom/a/a/d/b/i;->e:Ljava/util/Map;

    .line 94
    if-nez p7, :cond_1

    .line 95
    new-instance p7, Lcom/a/a/d/b/m;

    invoke-direct {p7}, Lcom/a/a/d/b/m;-><init>()V

    .line 97
    :cond_1
    iput-object p7, p0, Lcom/a/a/d/b/i;->b:Lcom/a/a/d/b/m;

    .line 99
    if-nez p6, :cond_2

    .line 100
    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    .line 102
    :cond_2
    iput-object p6, p0, Lcom/a/a/d/b/i;->a:Ljava/util/Map;

    .line 104
    if-nez p9, :cond_3

    .line 105
    new-instance p9, Lcom/a/a/d/b/i$b;

    invoke-direct {p9, p3, p4, p5, p0}, Lcom/a/a/d/b/i$b;-><init>(Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/c/a;Lcom/a/a/d/b/k;)V

    .line 108
    :cond_3
    iput-object p9, p0, Lcom/a/a/d/b/i;->d:Lcom/a/a/d/b/i$b;

    .line 110
    if-nez p10, :cond_4

    .line 111
    new-instance p10, Lcom/a/a/d/b/i$a;

    iget-object v0, p0, Lcom/a/a/d/b/i;->g:Lcom/a/a/d/b/i$c;

    invoke-direct {p10, v0}, Lcom/a/a/d/b/i$a;-><init>(Lcom/a/a/d/b/f$d;)V

    .line 113
    :cond_4
    iput-object p10, p0, Lcom/a/a/d/b/i;->h:Lcom/a/a/d/b/i$a;

    .line 115
    if-nez p11, :cond_5

    .line 116
    new-instance p11, Lcom/a/a/d/b/v;

    invoke-direct {p11}, Lcom/a/a/d/b/v;-><init>()V

    .line 118
    :cond_5
    iput-object p11, p0, Lcom/a/a/d/b/i;->f:Lcom/a/a/d/b/v;

    .line 120
    invoke-interface {p1, p0}, Lcom/a/a/d/b/b/h;->a(Lcom/a/a/d/b/b/h$a;)V

    .line 121
    return-void
.end method

.method private a(Lcom/a/a/d/h;)Lcom/a/a/d/b/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            ")",
            "Lcom/a/a/d/b/n",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/a/a/d/b/i;->c:Lcom/a/a/d/b/b/h;

    invoke-interface {v0, p1}, Lcom/a/a/d/b/b/h;->a(Lcom/a/a/d/h;)Lcom/a/a/d/b/s;

    move-result-object v0

    .line 263
    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    .line 265
    :cond_0
    instance-of v1, v0, Lcom/a/a/d/b/n;

    if-eqz v1, :cond_1

    .line 267
    check-cast v0, Lcom/a/a/d/b/n;

    goto :goto_0

    .line 269
    :cond_1
    new-instance v1, Lcom/a/a/d/b/n;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/a/a/d/b/n;-><init>(Lcom/a/a/d/b/s;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/a/a/d/h;Z)Lcom/a/a/d/b/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            "Z)",
            "Lcom/a/a/d/b/n",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 227
    if-nez p2, :cond_0

    .line 242
    :goto_0
    return-object v1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/i;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 233
    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/n;

    .line 235
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lcom/a/a/d/b/n;->f()V

    :goto_1
    move-object v1, v0

    .line 242
    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/a/a/d/b/i;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a()Ljava/lang/ref/ReferenceQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/a/a/d/b/n",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/a/a/d/b/i;->i:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/b/i;->i:Ljava/lang/ref/ReferenceQueue;

    .line 332
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 333
    new-instance v1, Lcom/a/a/d/b/i$e;

    iget-object v2, p0, Lcom/a/a/d/b/i;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/a/a/d/b/i;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lcom/a/a/d/b/i$e;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/i;->i:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private static a(Ljava/lang/String;JLcom/a/a/d/h;)V
    .locals 5

    .prologue
    .line 223
    const-string v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method private b(Lcom/a/a/d/h;Z)Lcom/a/a/d/b/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            "Z)",
            "Lcom/a/a/d/b/n",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 246
    if-nez p2, :cond_1

    .line 247
    const/4 v0, 0x0

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 250
    :cond_1
    invoke-direct {p0, p1}, Lcom/a/a/d/b/i;->a(Lcom/a/a/d/h;)Lcom/a/a/d/b/n;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/a/a/d/b/n;->f()V

    .line 253
    iget-object v1, p0, Lcom/a/a/d/b/i;->e:Ljava/util/Map;

    new-instance v2, Lcom/a/a/d/b/i$f;

    invoke-direct {p0}, Lcom/a/a/d/b/i;->a()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/a/a/d/b/i$f;-><init>(Lcom/a/a/d/h;Lcom/a/a/d/b/n;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/a/e;Ljava/lang/Object;Lcom/a/a/d/h;IILjava/lang/Class;Ljava/lang/Class;Lcom/a/a/g;Lcom/a/a/d/b/h;Ljava/util/Map;ZZLcom/a/a/d/j;ZZZLcom/a/a/h/e;)Lcom/a/a/d/b/i$d;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/e;",
            "Ljava/lang/Object;",
            "Lcom/a/a/d/h;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/a/a/g;",
            "Lcom/a/a/d/b/h;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/d/m",
            "<*>;>;ZZ",
            "Lcom/a/a/d/j;",
            "ZZZ",
            "Lcom/a/a/h/e;",
            ")",
            "Lcom/a/a/d/b/i$d;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 161
    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v20

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/d/b/i;->b:Lcom/a/a/d/b/m;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p10

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p13

    invoke-virtual/range {v2 .. v10}, Lcom/a/a/d/b/m;->a(Ljava/lang/Object;Lcom/a/a/d/h;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/a/a/d/j;)Lcom/a/a/d/b/l;

    move-result-object v5

    .line 166
    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v5, v1}, Lcom/a/a/d/b/i;->b(Lcom/a/a/d/h;Z)Lcom/a/a/d/b/n;

    move-result-object v2

    .line 167
    if-eqz v2, :cond_1

    .line 168
    sget-object v3, Lcom/a/a/d/a;->e:Lcom/a/a/d/a;

    move-object/from16 v0, p17

    invoke-interface {v0, v2, v3}, Lcom/a/a/h/e;->a(Lcom/a/a/d/b/s;Lcom/a/a/d/a;)V

    .line 169
    const-string v2, "Engine"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "Loaded resource from cache"

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1, v5}, Lcom/a/a/d/b/i;->a(Ljava/lang/String;JLcom/a/a/d/h;)V

    .line 172
    :cond_0
    const/4 v2, 0x0

    .line 219
    :goto_0
    return-object v2

    .line 175
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v5, v1}, Lcom/a/a/d/b/i;->a(Lcom/a/a/d/h;Z)Lcom/a/a/d/b/n;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_3

    .line 177
    sget-object v3, Lcom/a/a/d/a;->e:Lcom/a/a/d/a;

    move-object/from16 v0, p17

    invoke-interface {v0, v2, v3}, Lcom/a/a/h/e;->a(Lcom/a/a/d/b/s;Lcom/a/a/d/a;)V

    .line 178
    const-string v2, "Engine"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    const-string v2, "Loaded resource from active resources"

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1, v5}, Lcom/a/a/d/b/i;->a(Ljava/lang/String;JLcom/a/a/d/h;)V

    .line 181
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 184
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/d/b/i;->a:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/d/b/j;

    .line 185
    if-eqz v2, :cond_5

    .line 186
    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Lcom/a/a/d/b/j;->a(Lcom/a/a/h/e;)V

    .line 187
    const-string v3, "Engine"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    const-string v3, "Added to existing load"

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1, v5}, Lcom/a/a/d/b/i;->a(Ljava/lang/String;JLcom/a/a/d/h;)V

    .line 190
    :cond_4
    new-instance v3, Lcom/a/a/d/b/i$d;

    move-object/from16 v0, p17

    invoke-direct {v3, v0, v2}, Lcom/a/a/d/b/i$d;-><init>(Lcom/a/a/h/e;Lcom/a/a/d/b/j;)V

    move-object v2, v3

    goto :goto_0

    .line 193
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/d/b/i;->d:Lcom/a/a/d/b/i$b;

    move/from16 v0, p14

    move/from16 v1, p15

    invoke-virtual {v2, v5, v0, v1}, Lcom/a/a/d/b/i$b;->a(Lcom/a/a/d/h;ZZ)Lcom/a/a/d/b/j;

    move-result-object v18

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/d/b/i;->h:Lcom/a/a/d/b/i$a;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p16

    move-object/from16 v17, p13

    invoke-virtual/range {v2 .. v18}, Lcom/a/a/d/b/i$a;->a(Lcom/a/a/e;Ljava/lang/Object;Lcom/a/a/d/b/l;Lcom/a/a/d/h;IILjava/lang/Class;Ljava/lang/Class;Lcom/a/a/g;Lcom/a/a/d/b/h;Ljava/util/Map;ZZZLcom/a/a/d/j;Lcom/a/a/d/b/f$a;)Lcom/a/a/d/b/f;

    move-result-object v2

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/d/b/i;->a:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-object/from16 v0, v18

    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Lcom/a/a/d/b/j;->a(Lcom/a/a/h/e;)V

    .line 214
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/a/a/d/b/j;->b(Lcom/a/a/d/b/f;)V

    .line 216
    const-string v2, "Engine"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 217
    const-string v2, "Started new load"

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1, v5}, Lcom/a/a/d/b/i;->a(Ljava/lang/String;JLcom/a/a/d/h;)V

    .line 219
    :cond_6
    new-instance v2, Lcom/a/a/d/b/i$d;

    move-object/from16 v0, p17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/a/a/d/b/i$d;-><init>(Lcom/a/a/h/e;Lcom/a/a/d/b/j;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/a/a/d/b/j;Lcom/a/a/d/h;)V
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 302
    iget-object v0, p0, Lcom/a/a/d/b/i;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/j;

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/a/a/d/b/i;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_0
    return-void
.end method

.method public a(Lcom/a/a/d/b/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 276
    instance-of v0, p1, Lcom/a/a/d/b/n;

    if-eqz v0, :cond_0

    .line 277
    check-cast p1, Lcom/a/a/d/b/n;

    invoke-virtual {p1}, Lcom/a/a/d/b/n;->g()V

    .line 281
    return-void

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/a/d/h;Lcom/a/a/d/b/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            "Lcom/a/a/d/b/n",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 288
    if-eqz p2, :cond_0

    .line 289
    invoke-virtual {p2, p1, p0}, Lcom/a/a/d/b/n;->a(Lcom/a/a/d/h;Lcom/a/a/d/b/n$a;)V

    .line 291
    invoke-virtual {p2}, Lcom/a/a/d/b/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/a/a/d/b/i;->e:Ljava/util/Map;

    new-instance v1, Lcom/a/a/d/b/i$f;

    invoke-direct {p0}, Lcom/a/a/d/b/i;->a()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/a/a/d/b/i$f;-><init>(Lcom/a/a/d/h;Lcom/a/a/d/b/n;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/i;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public b(Lcom/a/a/d/b/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 311
    iget-object v0, p0, Lcom/a/a/d/b/i;->f:Lcom/a/a/d/b/v;

    invoke-virtual {v0, p1}, Lcom/a/a/d/b/v;->a(Lcom/a/a/d/b/s;)V

    .line 312
    return-void
.end method

.method public b(Lcom/a/a/d/h;Lcom/a/a/d/b/n;)V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 317
    iget-object v0, p0, Lcom/a/a/d/b/i;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {p2}, Lcom/a/a/d/b/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/a/a/d/b/i;->c:Lcom/a/a/d/b/b/h;

    invoke-interface {v0, p1, p2}, Lcom/a/a/d/b/b/h;->b(Lcom/a/a/d/h;Lcom/a/a/d/b/s;)Lcom/a/a/d/b/s;

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/i;->f:Lcom/a/a/d/b/v;

    invoke-virtual {v0, p2}, Lcom/a/a/d/b/v;->a(Lcom/a/a/d/b/s;)V

    goto :goto_0
.end method
