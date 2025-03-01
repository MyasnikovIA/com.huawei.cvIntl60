.class public Lui_Controller/ui_Liveview/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lui_Controller/ui_Liveview/UI_LiveViewController;


# direct methods
.method public constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 43
    iput-object p1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 44
    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Liveview/a;)Lui_Controller/ui_Liveview/UI_LiveViewController;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    return-object v0
.end method

.method private a(LGeneralFunction/c/d;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 791
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->c:I

    const/16 v1, 0x12b

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->c:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_3

    .line 794
    :cond_0
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    iput-wide v0, p1, LGeneralFunction/c/d;->f:J

    .line 795
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v4, p1, LGeneralFunction/c/d;->f:J

    iput-wide v4, v0, Lui_Controller/b/k;->Q:J

    .line 796
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v0, v0, Lui_Controller/b/k;->L:Z

    if-eqz v0, :cond_2

    move v1, v2

    .line 798
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 799
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/c/d;

    .line 800
    iget-object v3, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v3, v3, Lui_Controller/b/k;->M:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 802
    iget-wide v4, v0, LGeneralFunction/c/d;->f:J

    iget-object v3, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, v3, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v6, v3, Lui_Controller/b/k;->N:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 803
    iget-wide v4, v0, LGeneralFunction/c/d;->f:J

    invoke-virtual {p0, v0, v4, v5}, Lui_Controller/ui_Liveview/a;->a(LGeneralFunction/c/d;J)V

    .line 798
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 807
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v2, v0, Lui_Controller/b/k;->P:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lui_Controller/b/k;->P:J

    .line 809
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 39
    const-string v0, "UI_LiveViewBroadcast"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Liveview/a;LGeneralFunction/c/d;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lui_Controller/ui_Liveview/a;->a(LGeneralFunction/c/d;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Liveview/a;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 610
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v1, v0, Lui_Controller/b/k;->K:Z

    .line 611
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-boolean v1, v0, Lui_Controller/b/k;->L:Z

    .line 612
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 613
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-wide v2, v0, Lui_Controller/b/k;->N:J

    .line 614
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-wide v2, v0, Lui_Controller/b/k;->P:J

    .line 615
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-wide v2, v0, Lui_Controller/b/k;->O:J

    .line 616
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-wide v2, v0, Lui_Controller/b/k;->Q:J

    .line 617
    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x3

    .line 621
    const-string v0, "CreateYoutubeType"

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    .line 622
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(I)V

    .line 624
    const/16 v1, 0x2a07

    if-ne p1, v1, :cond_3

    .line 626
    const-string v1, "MSG_UI_LIVE_STREAMING_YOUTUBE_CREATE_360_EVENT"

    invoke-direct {p0, v1, v2}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    .line 627
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 630
    const-string v1, "liveStreamTitle"

    invoke-virtual {v0, v1, p2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :goto_0
    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 637
    const-string v1, "liveStreamDescription"

    invoke-virtual {v0, v1, p3}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_0
    const-string v1, "streamFormat"

    const-string v2, "720p"

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_1
    :goto_1
    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;J)V

    .line 655
    return-void

    .line 633
    :cond_2
    const-string v2, "liveStreamTitle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "360 Live Stream - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_3
    const/16 v1, 0x2a06

    if-ne p1, v1, :cond_1

    .line 644
    const-string v1, "MSG_UI_LIVE_STREAMING_YOUTUBE_CREATE_EVENT"

    invoke-direct {p0, v1, v2}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    .line 645
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    .line 646
    const-string v2, "liveStreamTitle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Live Stream - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v1, "streamFormat"

    const-string v2, "720p"

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(LGeneralFunction/c/d;J)V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->h()LGeneralFunction/j/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LGeneralFunction/j/b;->a(LGeneralFunction/c/d;J)V

    .line 814
    return-void
.end method

.method protected a(La/a/a/d;)V
    .locals 10

    .prologue
    .line 701
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v3, v0, Lui_Controller/b/k;->c:I

    .line 702
    iget-object v0, p1, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v0}, LGeneralFunction/c/d;->a()[B

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/e;->b([B)Z

    move-result v4

    .line 704
    const/16 v0, 0x12b

    if-eq v3, v0, :cond_0

    const/16 v0, 0x12c

    if-ne v3, v0, :cond_3

    .line 706
    :cond_0
    const/4 v2, 0x0

    .line 707
    const-wide/16 v0, 0x0

    .line 708
    iget-object v5, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v5, v5, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v5, v5, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v5, v5, Lui_Controller/b/k;->L:Z

    if-eqz v5, :cond_4

    .line 710
    const/4 v2, 0x1

    .line 711
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v0, v0, Lui_Controller/b/k;->N:J

    iget-object v5, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v5, v5, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v5, v5, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v6, v5, Lui_Controller/b/k;->O:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x1e

    div-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 712
    iget-object v5, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v5, v5, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v5, v5, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v6, v5, Lui_Controller/b/k;->O:J

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Live DBG]RECEIVE video frame number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v6, v6, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v6, v6, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v6, v6, Lui_Controller/b/k;->O:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    .line 715
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Live DBG] Video pts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    .line 716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Live DBG] Audio pts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v6, v6, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v6, v6, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v6, v6, Lui_Controller/b/k;->Q:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    .line 735
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 737
    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v2, v2, Lui_Controller/b/k;->K:Z

    if-eqz v2, :cond_5

    .line 739
    const/16 v2, 0x12b

    if-ne v3, v2, :cond_2

    .line 741
    if-eqz v4, :cond_2

    .line 743
    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lui_Controller/b/k;->K:Z

    .line 758
    :cond_2
    :goto_1
    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-boolean v2, v2, Lui_Controller/b/k;->K:Z

    if-eqz v2, :cond_6

    .line 761
    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    iget-object v4, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v4, v4, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v4, v4, Lui_Controller/b/k;->O:J

    const-wide/16 v6, 0xf

    rem-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 764
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 765
    new-instance v4, LGeneralFunction/c/d;

    invoke-direct {v4, v3}, LGeneralFunction/c/d;-><init>([B)V

    .line 766
    invoke-virtual {v4}, LGeneralFunction/c/d;->a()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 767
    invoke-virtual {p0, v4, v0, v1}, Lui_Controller/ui_Liveview/a;->b(LGeneralFunction/c/d;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 784
    :goto_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v2, v0, Lui_Controller/b/k;->O:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lui_Controller/b/k;->O:J

    .line 787
    :cond_3
    return-void

    .line 721
    :cond_4
    if-eqz v4, :cond_1

    .line 723
    const-string v0, "[Live DBG] Send first I frame"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    .line 724
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lui_Controller/b/k;->L:Z

    .line 725
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v1, p1, La/a/a/d;->a:LGeneralFunction/c/d;

    iget-wide v6, v1, LGeneralFunction/c/d;->b:J

    const-wide/16 v8, 0xa6

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lui_Controller/b/k;->N:J

    .line 726
    const/4 v2, 0x1

    .line 727
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v0, v0, Lui_Controller/b/k;->N:J

    iget-object v5, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v5, v5, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v5, v5, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v6, v5, Lui_Controller/b/k;->O:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x1e

    div-long/2addr v6, v8

    add-long/2addr v0, v6

    goto/16 :goto_0

    .line 749
    :cond_5
    const/16 v2, 0x12c

    if-ne v3, v2, :cond_2

    .line 751
    if-eqz v4, :cond_2

    .line 753
    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lui_Controller/b/k;->K:Z

    goto/16 :goto_1

    .line 769
    :catch_0
    move-exception v0

    .line 771
    const-string v0, "***FAKE FRAME IO ERROR***"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 776
    :catch_1
    move-exception v0

    .line 777
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 782
    :cond_6
    iget-object v2, p1, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {p0, v2, v0, v1}, Lui_Controller/ui_Liveview/a;->b(LGeneralFunction/c/d;J)V

    goto :goto_3
.end method

.method public a(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/16 v6, 0x2f07

    const/16 v4, 0x160

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 69
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    new-instance v2, La/c/a;

    const/16 v3, 0x4817

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v2}, La/c/d;->a(La/c/a;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v2, ""

    invoke-virtual {v0, v8, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    .line 76
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J()V

    .line 77
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x228e

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    .line 78
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2251

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_0

    .line 82
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 84
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00d1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 85
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    .line 83
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    const/16 v1, 0x40c

    iput v1, v0, Lui_Controller/b/h;->a:I

    goto :goto_0

    .line 92
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->c:I

    const/16 v1, 0x12b

    if-ne v0, v1, :cond_2

    .line 94
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2251

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 98
    :cond_2
    const-string v0, "error case of btnYoutubeStop "

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 105
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->c:I

    const/16 v2, 0x12b

    if-ne v0, v2, :cond_0

    .line 107
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v2, v2, Lui_Controller/b/k;->h:I

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZI)V

    goto/16 :goto_0

    .line 111
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 112
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2227

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 115
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->al()V

    .line 117
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4812

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 119
    new-instance v0, La/c/a;

    const/16 v1, 0x2a0b

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 120
    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    .line 121
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x12a

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 122
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->a()V

    .line 124
    const/16 v0, 0x2a07

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v1, v1, Lui_Controller/b/k;->aR:Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v2, v2, Lui_Controller/b/k;->aS:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lui_Controller/ui_Liveview/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->b()V

    goto/16 :goto_0

    .line 134
    :sswitch_6
    new-instance v0, La/c/a;

    const/16 v2, 0x2a08

    invoke-direct {v0, v2}, La/c/a;-><init>(I)V

    .line 136
    const-string v2, "StreamingType"

    invoke-virtual {v0, v2, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 137
    const-string v1, "Width"

    const/16 v2, 0x5a0

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 138
    const-string v1, "Height"

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 139
    const-string v1, "AudioSampleRate"

    const v2, 0xac44

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 140
    const-string v1, "SpsPpsBuffer"

    sget-object v2, Lui_Controller/b/n;->c:[B

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;[B)V

    .line 141
    const-string v1, "SpsPpsSize"

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 142
    const-string v1, "VideoFps"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 143
    const-string v1, "VideoBitrate"

    const/high16 v2, 0x300000

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 144
    const-string v1, "VideoGOP"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 146
    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    goto/16 :goto_0

    .line 150
    :sswitch_7
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 151
    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const-string v2, "streamingLink"

    invoke-virtual {v0, v2}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lui_Controller/b/k;->aH:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[YOUTUBE TEST] Link: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, v1, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v1, v1, Lui_Controller/b/k;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 156
    :sswitch_8
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Z)V

    goto/16 :goto_0

    .line 161
    :sswitch_9
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x12b

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 162
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2221

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto/16 :goto_0

    .line 167
    :sswitch_a
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v2, ""

    invoke-virtual {v0, v8, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 168
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->z()V

    .line 169
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Z)V

    goto/16 :goto_0

    .line 175
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v2, 0x120

    iput v2, v0, Lui_Controller/b/k;->c:I

    .line 176
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v2, ""

    invoke-virtual {v0, v8, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->c()V

    .line 178
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 179
    const-string v2, "youtubeApiResult"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    .line 181
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 182
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0058

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 183
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    .line 181
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x110

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    goto/16 :goto_0

    .line 186
    :cond_3
    const-string v2, "youtubeApiResult"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_4

    .line 188
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 189
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0061

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 190
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    .line 188
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 193
    :cond_4
    const-string v2, "youtubeApiResult"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x5

    if-ne v2, v3, :cond_5

    .line 195
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0161

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 196
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0160

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 197
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move v7, v6

    move v9, v1

    .line 195
    invoke-static/range {v0 .. v9}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V

    goto :goto_1

    .line 200
    :cond_5
    const-string v2, "youtubeApiResult"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x6

    if-ne v0, v2, :cond_6

    .line 202
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 203
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0066

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 204
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    .line 202
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 209
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 210
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a005b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 211
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    .line 209
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 220
    :sswitch_c
    const-string v0, "MSG_KEY_BACK youtube"

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    .line 221
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Z)V

    .line 233
    :cond_7
    :goto_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 225
    :cond_8
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->F()Z

    move-result v0

    if-nez v0, :cond_7

    .line 226
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 227
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 228
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0056

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 229
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0090

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0095

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x2

    new-array v6, v2, [I

    fill-array-data v6, :array_0

    move v2, v8

    move v7, v1

    .line 226
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    goto :goto_2

    .line 236
    :sswitch_d
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x131

    iput v1, v0, Lui_Controller/b/k;->d:I

    .line 237
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 238
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2251

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 241
    :sswitch_e
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x132

    iput v1, v0, Lui_Controller/b/k;->d:I

    .line 242
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 243
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2251

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 247
    :sswitch_f
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 248
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2259

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 251
    :sswitch_10
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 252
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2251

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 256
    :sswitch_11
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 257
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2a04

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 261
    :sswitch_12
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 262
    const-string v1, "havePermission"

    invoke-virtual {v0, v1}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v8, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :sswitch_13
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v4, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 270
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x222b

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 275
    :sswitch_14
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x110

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    goto/16 :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x220f -> :sswitch_11
        0x2225 -> :sswitch_2
        0x224b -> :sswitch_d
        0x224c -> :sswitch_e
        0x2251 -> :sswitch_10
        0x2254 -> :sswitch_5
        0x2258 -> :sswitch_8
        0x2259 -> :sswitch_f
        0x225d -> :sswitch_0
        0x2279 -> :sswitch_3
        0x228e -> :sswitch_1
        0x2a18 -> :sswitch_14
        0x2a55 -> :sswitch_6
        0x2a56 -> :sswitch_6
        0x2a57 -> :sswitch_6
        0x2a58 -> :sswitch_a
        0x2a5a -> :sswitch_12
        0x2a5d -> :sswitch_9
        0x2a5e -> :sswitch_7
        0x2aa5 -> :sswitch_b
        0x2aa6 -> :sswitch_b
        0x2aa9 -> :sswitch_4
        0x2aaa -> :sswitch_13
        0x8000 -> :sswitch_c
    .end sparse-switch

    .line 229
    :array_0
    .array-data 4
        0x0
        0x2251
    .end array-data
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 52
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 54
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    const/4 v0, 0x1

    .line 60
    :cond_0
    return v0

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    new-instance v1, LGeneralFunction/r/a;

    new-instance v2, Lui_Controller/ui_Liveview/a$1;

    invoke-direct {v2, p0}, Lui_Controller/ui_Liveview/a$1;-><init>(Lui_Controller/ui_Liveview/a;)V

    invoke-direct {v1, v2}, LGeneralFunction/r/a;-><init>(LGeneralFunction/r/a$a;)V

    iput-object v1, v0, Lui_Controller/b/k;->an:LGeneralFunction/r/a;

    .line 689
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->an:LGeneralFunction/r/a;

    invoke-virtual {v0}, LGeneralFunction/r/a;->a()V

    .line 690
    return-void
.end method

.method protected b(LGeneralFunction/c/d;J)V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->h()LGeneralFunction/j/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LGeneralFunction/j/b;->b(LGeneralFunction/c/d;J)V

    .line 819
    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 11

    .prologue
    const/16 v10, 0x4812

    const/16 v2, 0x120

    const/16 v9, 0x110

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 286
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->c:I

    .line 288
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 289
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a005f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 290
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    move v7, v1

    .line 288
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 293
    new-instance v0, La/c/a;

    const/16 v2, 0x2a09

    invoke-direct {v0, v2}, La/c/a;-><init>(I)V

    .line 294
    const-string v2, "StreamingType"

    invoke-virtual {v0, v2, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 295
    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    .line 296
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZZ)V

    .line 297
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Z)V

    .line 298
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v9, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 299
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L()V

    .line 301
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->a()V

    .line 302
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->c()V

    .line 303
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, v10}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto :goto_0

    .line 307
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ak()V

    .line 308
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->c:I

    .line 309
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 311
    new-instance v0, La/c/a;

    const/16 v2, 0x2a09

    invoke-direct {v0, v2}, La/c/a;-><init>(I)V

    .line 312
    const-string v2, "StreamingType"

    invoke-virtual {v0, v2, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 313
    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    .line 314
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZZ)V

    .line 316
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->a()V

    .line 317
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->c()V

    .line 318
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, v10}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 321
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v9, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 322
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 327
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v8, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 328
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Z)V

    .line 329
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->a()V

    .line 330
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v9, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 331
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L()V

    goto/16 :goto_0

    .line 335
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2251

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    .line 336
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Z)V

    .line 337
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->a()V

    .line 338
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L()V

    .line 339
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v8, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 340
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(Z)V

    .line 341
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(Z)V

    goto/16 :goto_0

    .line 345
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->c:I

    .line 347
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 348
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a005b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 349
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    .line 347
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v8, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 352
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Z)V

    .line 353
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v9, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 354
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->c()V

    .line 355
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L()V

    .line 356
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, v10}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 283
    :sswitch_data_0
    .sparse-switch
        0x2227 -> :sswitch_0
        0x222b -> :sswitch_5
        0x2251 -> :sswitch_1
        0x2259 -> :sswitch_4
        0x2a54 -> :sswitch_2
        0x2a59 -> :sswitch_3
        0x2aa7 -> :sswitch_3
    .end sparse-switch
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->an:LGeneralFunction/r/a;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->an:LGeneralFunction/r/a;

    invoke-virtual {v0}, LGeneralFunction/r/a;->b()V

    .line 697
    :cond_0
    return-void
.end method

.method public c(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/16 v6, 0x225c

    const/16 v3, 0x1b0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 363
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 367
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    new-instance v3, La/c/a;

    const/16 v4, 0x4817

    invoke-direct {v3, v4}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v3}, La/c/d;->a(La/c/a;)V

    .line 372
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 373
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZZ)V

    .line 374
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->J()V

    .line 375
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x228e

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    .line 376
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_0

    .line 381
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 382
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 383
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00d1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 384
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    .line 382
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 386
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    const/16 v1, 0x40c

    iput v1, v0, Lui_Controller/b/h;->a:I

    goto :goto_0

    .line 391
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 392
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2227

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 397
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->c:I

    const/16 v1, 0x12b

    if-ne v0, v1, :cond_2

    .line 399
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 403
    :cond_2
    const-string v0, "error case of btnfacebookStop "

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 409
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->c:I

    const/16 v2, 0x12b

    if-ne v0, v2, :cond_0

    .line 411
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v2, v2, Lui_Controller/b/k;->h:I

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZI)V

    goto/16 :goto_0

    .line 416
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->al()V

    .line 417
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 418
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x12a

    iput v1, v0, Lui_Controller/b/k;->c:I

    .line 419
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    const/16 v2, 0x4812

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    .line 420
    new-instance v0, La/c/a;

    const/16 v1, 0x2a02

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 421
    const-string v1, "liveStreamDescription"

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v2, v2, Lui_Controller/b/k;->aQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    .line 423
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->a()V

    .line 424
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->b()V

    goto/16 :goto_0

    .line 430
    :sswitch_6
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 431
    new-instance v2, La/c/a;

    const/16 v3, 0x2a0c

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    .line 433
    const-string v3, "StreamingType"

    invoke-virtual {v2, v3, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 434
    const-string v1, "Width"

    const/16 v3, 0x5a0

    invoke-virtual {v2, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 435
    const-string v1, "Height"

    const/16 v3, 0x2d0

    invoke-virtual {v2, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 436
    const-string v1, "AudioSampleRate"

    const v3, 0xac44

    invoke-virtual {v2, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 437
    const-string v1, "SpsPpsBuffer"

    sget-object v3, Lui_Controller/b/n;->c:[B

    invoke-virtual {v2, v1, v3}, La/c/a;->a(Ljava/lang/String;[B)V

    .line 438
    const-string v1, "SpsPpsSize"

    const/16 v3, 0x1b

    invoke-virtual {v2, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 439
    const-string v1, "VideoFps"

    const/16 v3, 0x1e

    invoke-virtual {v2, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 440
    const-string v1, "VideoBitrate"

    const/high16 v3, 0x300000

    invoke-virtual {v2, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 441
    const-string v1, "VideoGOP"

    const/16 v3, 0xf

    invoke-virtual {v2, v1, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 442
    const-string v1, "rtmpURL"

    const-string v3, "rtmpURL"

    invoke-virtual {v0, v3}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    goto/16 :goto_0

    .line 448
    :sswitch_7
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v3, 0x12b

    iput v3, v0, Lui_Controller/b/k;->c:I

    .line 449
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v3, 0x2221

    invoke-virtual {v0, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    .line 450
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 451
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->z()V

    .line 452
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Z)V

    goto/16 :goto_0

    .line 457
    :sswitch_8
    const-string v0, "MSG_KEY_BACK facebook"

    const/4 v3, 0x4

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Liveview/a;->a(Ljava/lang/String;I)V

    .line 458
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->F()Z

    move-result v0

    if-nez v0, :cond_3

    .line 459
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v3, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 460
    invoke-virtual {v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 461
    invoke-virtual {v4}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 462
    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0090

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v6}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0095

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move v7, v1

    .line 459
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ)V

    .line 465
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v2, 0xfffffff

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 468
    :sswitch_9
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x131

    iput v1, v0, Lui_Controller/b/k;->d:I

    .line 469
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 470
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 473
    :sswitch_a
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v1, 0x132

    iput v1, v0, Lui_Controller/b/k;->d:I

    .line 474
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 475
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 479
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 480
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2259

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 484
    :sswitch_c
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v3, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 485
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v6, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 488
    :sswitch_d
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x110

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    goto/16 :goto_0

    .line 493
    :sswitch_e
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x110

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    goto/16 :goto_0

    .line 498
    :sswitch_f
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x160

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 499
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x222b

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(IJ)V

    goto/16 :goto_0

    .line 504
    :sswitch_10
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const/16 v3, 0x120

    iput v3, v0, Lui_Controller/b/k;->c:I

    .line 505
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->c()V

    .line 507
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 508
    const-string v2, "httpStatusCode"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_4

    .line 510
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 511
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0061

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 512
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    .line 510
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 529
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x110

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    goto/16 :goto_0

    .line 515
    :cond_4
    const-string v2, "httpStatusCode"

    invoke-virtual {v0, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x190

    if-lt v0, v2, :cond_5

    .line 517
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 518
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0058

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 519
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    .line 517
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 524
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 525
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a005b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 526
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    .line 524
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        0x2225 -> :sswitch_3
        0x224b -> :sswitch_9
        0x224c -> :sswitch_a
        0x2259 -> :sswitch_b
        0x225a -> :sswitch_5
        0x225c -> :sswitch_c
        0x225d -> :sswitch_0
        0x2279 -> :sswitch_4
        0x228e -> :sswitch_1
        0x2a18 -> :sswitch_e
        0x2a51 -> :sswitch_d
        0x2a52 -> :sswitch_6
        0x2a5d -> :sswitch_7
        0x2aa1 -> :sswitch_10
        0x2aa9 -> :sswitch_2
        0x2aaa -> :sswitch_f
        0x8000 -> :sswitch_8
    .end sparse-switch

    .line 462
    :array_0
    .array-data 4
        0x0
        0x225c
    .end array-data
.end method

.method public d(Landroid/os/Message;)V
    .locals 11

    .prologue
    const/16 v10, 0x4812

    const/16 v2, 0x120

    const/16 v9, 0x110

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 537
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 606
    :goto_0
    return-void

    .line 539
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ak()V

    .line 540
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->c:I

    .line 541
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 542
    new-instance v0, La/c/a;

    const/16 v2, 0x2a15

    invoke-direct {v0, v2}, La/c/a;-><init>(I)V

    .line 543
    const-string v2, "StreamingType"

    invoke-virtual {v0, v2, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 544
    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    .line 545
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZZ)V

    .line 546
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->a()V

    .line 547
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->c()V

    .line 548
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, v10}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto :goto_0

    .line 552
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x225c

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    .line 553
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Z)V

    .line 554
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->a()V

    .line 555
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L()V

    .line 556
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v8, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 557
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->f(Z)V

    .line 558
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->g(Z)V

    goto :goto_0

    .line 562
    :sswitch_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v8, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 563
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Z)V

    .line 564
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v9}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    goto/16 :goto_0

    .line 570
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->c:I

    .line 572
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 573
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a005f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 574
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    move v7, v1

    .line 572
    invoke-static/range {v0 .. v7}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 577
    new-instance v0, La/c/a;

    const/16 v2, 0x2a15

    invoke-direct {v0, v2}, La/c/a;-><init>(I)V

    .line 578
    const-string v2, "StreamingType"

    invoke-virtual {v0, v2, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 579
    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    .line 580
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(ZZ)V

    .line 581
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Z)V

    .line 582
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v9, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 583
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L()V

    .line 585
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->a()V

    .line 586
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->c()V

    .line 587
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, v10}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 592
    :sswitch_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput v2, v0, Lui_Controller/b/k;->c:I

    .line 594
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 595
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a005b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    .line 596
    invoke-virtual {v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0091

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f07

    move v2, v1

    .line 594
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 598
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, ""

    invoke-virtual {v0, v8, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->b(ZLjava/lang/String;)V

    .line 599
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->d(Z)V

    .line 600
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v9, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;)V

    .line 601
    invoke-virtual {p0}, Lui_Controller/ui_Liveview/a;->c()V

    .line 602
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->L()V

    .line 603
    iget-object v0, p0, Lui_Controller/ui_Liveview/a;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, La/c/a;

    invoke-direct {v1, v10}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto/16 :goto_0

    .line 537
    :sswitch_data_0
    .sparse-switch
        0x2227 -> :sswitch_3
        0x222b -> :sswitch_4
        0x2259 -> :sswitch_1
        0x225c -> :sswitch_0
        0x2a5c -> :sswitch_2
    .end sparse-switch
.end method
