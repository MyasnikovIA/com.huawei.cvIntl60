.class final Lcom/facebook/a/b/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/b/a;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/facebook/a/b/a$3;->a:J

    iput-object p3, p0, Lcom/facebook/a/b/a$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcom/facebook/a/b/i;

    iget-wide v2, p0, Lcom/facebook/a/b/a$3;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/facebook/a/b/i;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/a/b/a;->a(Lcom/facebook/a/b/i;)Lcom/facebook/a/b/i;

    .line 183
    iget-object v0, p0, Lcom/facebook/a/b/a$3;->b:Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/facebook/a/b/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v0, v4, v1}, Lcom/facebook/a/b/j;->a(Ljava/lang/String;Lcom/facebook/a/b/k;Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v0

    iget-wide v2, p0, Lcom/facebook/a/b/a$3;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/a/b/i;->a(Ljava/lang/Long;)V

    .line 208
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/b/i;->j()V

    .line 209
    return-void

    .line 187
    :cond_1
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/b/i;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-wide v0, p0, Lcom/facebook/a/b/a$3;->a:J

    .line 189
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/a/b/i;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 190
    invoke-static {}, Lcom/facebook/a/b/a;->j()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 193
    iget-object v0, p0, Lcom/facebook/a/b/a$3;->b:Ljava/lang/String;

    .line 195
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v1

    .line 196
    invoke-static {}, Lcom/facebook/a/b/a;->i()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v0, v1, v2}, Lcom/facebook/a/b/j;->a(Ljava/lang/String;Lcom/facebook/a/b/i;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/facebook/a/b/a$3;->b:Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/facebook/a/b/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0, v4, v1}, Lcom/facebook/a/b/j;->a(Ljava/lang/String;Lcom/facebook/a/b/k;Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/facebook/a/b/i;

    iget-wide v2, p0, Lcom/facebook/a/b/a$3;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/facebook/a/b/i;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/a/b/a;->a(Lcom/facebook/a/b/i;)Lcom/facebook/a/b/i;

    goto :goto_0

    .line 202
    :cond_2
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 203
    invoke-static {}, Lcom/facebook/a/b/a;->h()Lcom/facebook/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/b/i;->e()V

    goto :goto_0
.end method
