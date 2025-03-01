.class LGeneralFunction/r/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/r/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/r/a;


# direct methods
.method constructor <init>(LGeneralFunction/r/a;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 99
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-static {v0}, LGeneralFunction/r/a;->a(LGeneralFunction/r/a;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 100
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0, v2, v3}, LGeneralFunction/r/a;->a(LGeneralFunction/r/a;J)J

    .line 102
    :goto_0
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-static {v0}, LGeneralFunction/r/a;->b(LGeneralFunction/r/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio loop caught fullStopReceived "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-static {v2}, LGeneralFunction/r/a;->b(LGeneralFunction/r/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    .line 104
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    iget-object v1, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-static {v1}, LGeneralFunction/r/a;->c(LGeneralFunction/r/a;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-static {v0, v1, v6}, LGeneralFunction/r/a;->a(LGeneralFunction/r/a;Landroid/media/MediaCodec;Z)V

    .line 105
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LGeneralFunction/r/a;->b(Z)V

    .line 106
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    const-string v1, "Stopping AudioRecord"

    invoke-virtual {v0, v1, v7}, LGeneralFunction/r/a;->a(Ljava/lang/String;I)V

    .line 107
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    iget-object v1, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-static {v1}, LGeneralFunction/r/a;->c(LGeneralFunction/r/a;)Landroid/media/MediaCodec;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-static {v2}, LGeneralFunction/r/a;->b(LGeneralFunction/r/a;)Z

    move-result v2

    invoke-static {v0, v1, v2}, LGeneralFunction/r/a;->a(LGeneralFunction/r/a;Landroid/media/MediaCodec;Z)V

    .line 108
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-static {v0}, LGeneralFunction/r/a;->a(LGeneralFunction/r/a;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 109
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-static {v0}, LGeneralFunction/r/a;->d(LGeneralFunction/r/a;)V

    .line 117
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    iget-object v1, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-static {v1}, LGeneralFunction/r/a;->c(LGeneralFunction/r/a;)Landroid/media/MediaCodec;

    move-result-object v1

    iget-object v2, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-static {v2}, LGeneralFunction/r/a;->b(LGeneralFunction/r/a;)Z

    move-result v2

    invoke-static {v0, v1, v2}, LGeneralFunction/r/a;->a(LGeneralFunction/r/a;Landroid/media/MediaCodec;Z)V

    .line 114
    iget-object v0, p0, LGeneralFunction/r/a$1;->a:LGeneralFunction/r/a;

    invoke-virtual {v0, v6}, LGeneralFunction/r/a;->b(Z)V

    goto :goto_0
.end method
