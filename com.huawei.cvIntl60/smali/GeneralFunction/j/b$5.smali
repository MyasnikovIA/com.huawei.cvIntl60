.class LGeneralFunction/j/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LThirdParty/Rtmp/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/j/b;


# direct methods
.method constructor <init>(LGeneralFunction/j/b;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/16 v6, 0x2aa9

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 652
    packed-switch p1, :pswitch_data_0

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 656
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_LIVE_STREAMING_RTMP_STREAMER_INIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 657
    if-nez p2, :cond_1

    .line 659
    iget-object v0, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a5d

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 663
    :cond_1
    iget-object v0, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2aaa

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 670
    :pswitch_1
    if-gez p2, :cond_0

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_LIVE_STREAMING_RTMP_STREAMER_WRITE_AUDIO_FRAME ***ERROR*** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 678
    :pswitch_2
    if-gez p2, :cond_4

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_LIVE_STREAMING_RTMP_STREAMER_WRITE_VIDEO_FRAME ***ERROR*** "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 681
    const/16 v0, -0x3e7

    if-ne p2, v0, :cond_2

    .line 683
    iget-object v0, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 686
    :cond_2
    iget-object v0, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->d(LGeneralFunction/j/b;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    .line 688
    iget-object v0, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;J)J

    .line 691
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-static {v2}, LGeneralFunction/j/b;->d(LGeneralFunction/j/b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 693
    iget-object v0, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 698
    :cond_4
    iget-object v0, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-static {v0, v8, v9}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;J)J

    goto/16 :goto_0

    .line 705
    :pswitch_3
    if-nez p2, :cond_0

    .line 707
    iget-object v0, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->e(LGeneralFunction/j/b;)LGeneralFunction/j/a;

    move-result-object v0

    iget v0, v0, LGeneralFunction/j/a;->k:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 711
    iget-object v0, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->e(LGeneralFunction/j/b;)LGeneralFunction/j/a;

    move-result-object v0

    iget v0, v0, LGeneralFunction/j/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 713
    iget-object v0, p0, LGeneralFunction/j/b$5;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a5c

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 717
    :cond_5
    const-string v0, "ERROR FILE_STREAMING_TO_THE_END StreamingSns!!!"

    invoke-static {v0, v2}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 652
    :pswitch_data_0
    .packed-switch 0x2000
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
