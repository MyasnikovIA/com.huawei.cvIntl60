.class Landroid/support/design/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/n$b;,
        Landroid/support/design/widget/n$a;
    }
.end annotation


# static fields
.field private static a:Landroid/support/design/widget/n;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/Handler;

.field private d:Landroid/support/design/widget/n$b;

.field private e:Landroid/support/design/widget/n$b;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/os/Handler;

    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/n$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/n$1;-><init>(Landroid/support/design/widget/n;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static a()Landroid/support/design/widget/n;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/n;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/support/design/widget/n;

    invoke-direct {v0}, Landroid/support/design/widget/n;-><init>()V

    sput-object v0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/n;

    .line 38
    :cond_0
    sget-object v0, Landroid/support/design/widget/n;->a:Landroid/support/design/widget/n;

    return-object v0
.end method

.method private a(Landroid/support/design/widget/n$b;I)Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p1, Landroid/support/design/widget/n$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/n$a;

    .line 203
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 206
    invoke-interface {v0, p2}, Landroid/support/design/widget/n$a;->a(I)V

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    iput-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    .line 189
    iput-object v1, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    .line 191
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    iget-object v0, v0, Landroid/support/design/widget/n$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/n$a;

    .line 192
    if-eqz v0, :cond_1

    .line 193
    invoke-interface {v0}, Landroid/support/design/widget/n$a;->a()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iput-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    goto :goto_0
.end method

.method private b(Landroid/support/design/widget/n$b;)V
    .locals 6

    .prologue
    .line 221
    iget v0, p1, Landroid/support/design/widget/n$b;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 226
    :cond_0
    const/16 v0, 0xabe

    .line 227
    iget v1, p1, Landroid/support/design/widget/n$b;->b:I

    if-lez v1, :cond_2

    .line 228
    iget v0, p1, Landroid/support/design/widget/n$b;->b:I

    .line 232
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 233
    iget-object v1, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 229
    :cond_2
    iget v1, p1, Landroid/support/design/widget/n$b;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 230
    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method private f(Landroid/support/design/widget/n$a;)Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/n$b;->a(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Landroid/support/design/widget/n$a;)Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/n$b;->a(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/design/widget/n$a;)V
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    .line 122
    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Landroid/support/design/widget/n;->b()V

    .line 126
    :cond_0
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/support/design/widget/n$a;I)V
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$b;I)Z

    .line 110
    :cond_0
    :goto_0
    monitor-exit v1

    .line 111
    return-void

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->g(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$b;I)Z

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Landroid/support/design/widget/n$b;)V
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/n;->e:Landroid/support/design/widget/n$b;

    if-ne v0, p1, :cond_1

    .line 239
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/n;->a(Landroid/support/design/widget/n$b;I)Z

    .line 241
    :cond_1
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/support/design/widget/n$a;)V
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-direct {p0, v0}, Landroid/support/design/widget/n;->b(Landroid/support/design/widget/n$b;)V

    .line 138
    :cond_0
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Landroid/support/design/widget/n$a;)V
    .locals 3

    .prologue
    .line 142
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    iget-boolean v0, v0, Landroid/support/design/widget/n$b;->c:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/design/widget/n$b;->c:Z

    .line 145
    iget-object v0, p0, Landroid/support/design/widget/n;->c:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    :cond_0
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Landroid/support/design/widget/n$a;)V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    iget-boolean v0, v0, Landroid/support/design/widget/n$b;->c:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/design/widget/n$b;->c:Z

    .line 154
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/support/design/widget/n$b;

    invoke-direct {p0, v0}, Landroid/support/design/widget/n;->b(Landroid/support/design/widget/n$b;)V

    .line 156
    :cond_0
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Landroid/support/design/widget/n$a;)Z
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Landroid/support/design/widget/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->f(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->g(Landroid/support/design/widget/n$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
