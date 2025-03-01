.class La/a/a/a$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a;->a(Landroid/os/HandlerThread;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/a/a/a;


# direct methods
.method constructor <init>(La/a/a/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    const/4 v11, 0x4

    const/4 v13, 0x2

    const/4 v12, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 539
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 540
    new-instance v5, La/c/a;

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {v5, v0}, La/c/a;-><init>(I)V

    .line 541
    const/16 v0, 0x10

    new-array v6, v0, [B

    .line 543
    new-instance v7, La/c/a;

    invoke-direct {v7, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 545
    const-string v0, "result"

    invoke-virtual {v5, v0, v12}, La/c/a;->a(Ljava/lang/String;I)V

    .line 546
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->c(La/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2258
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_3

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCoreMsg] Connect before send cmd. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 554
    iput v12, p1, Landroid/os/Message;->what:I

    .line 588
    :cond_1
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] unknown msg "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 2256
    :cond_2
    :goto_2
    :sswitch_0
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v1}, La/a/a/a;->a(La/a/a/a;I)I

    .line 2257
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->a(La/a/a/a;)La/a/a/a$a;

    move-result-object v0

    invoke-interface {v0, v5}, La/a/a/a$a;->a(La/c/a;)V

    goto :goto_0

    .line 556
    :cond_3
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 557
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x480b

    if-eq v0, v3, :cond_4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x4812

    if-ne v0, v3, :cond_5

    .line 558
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already close communication, ignore msg "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 559
    const-string v0, "result"

    const/4 v3, 0x5

    invoke-virtual {v5, v0, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 560
    iput v12, p1, Landroid/os/Message;->what:I

    goto :goto_1

    .line 562
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x480a

    if-ne v0, v3, :cond_6

    .line 564
    const-string v0, "Set priority to -20"

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 565
    const/16 v0, -0x14

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 566
    const-string v0, "[UsbCoreMsg] Send open communication with reset effect to default"

    invoke-static {v0, v2}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 567
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    iput v12, p1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 571
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x480c

    if-eq v0, v3, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x480d

    if-eq v0, v3, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x4817

    if-eq v0, v3, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x4820

    if-eq v0, v3, :cond_1

    .line 575
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x4830

    if-ne v0, v3, :cond_7

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCoreMsg] Do open communication first: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 577
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->d(La/a/a/a;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    iput v12, p1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 582
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCoreMsg] Should do open communication before send cmd "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 583
    const-string v0, "result"

    const/4 v3, 0x5

    invoke-virtual {v5, v0, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 584
    iput v12, p1, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 591
    :sswitch_1
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 596
    :sswitch_2
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    if-ge v0, v11, :cond_8

    .line 597
    const-string v0, "[UsbCoreMsg] communication not open, no need to close"

    const/4 v2, 0x3

    invoke-static {v0, v2}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 598
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 601
    :cond_8
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 602
    aput-byte v1, v6, v2

    .line 603
    aput-byte v13, v6, v13

    .line 604
    const/16 v0, 0x8

    aput-byte v2, v6, v0

    .line 605
    const/16 v0, 0x9

    aput-byte v1, v6, v0

    .line 606
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/16 v2, 0x12c

    invoke-static {v0, v2}, La/a/a/a;->d(La/a/a/a;I)[B

    move-result-object v0

    const/16 v2, 0xc

    invoke-static {v0, v1, v6, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 609
    if-le v0, v12, :cond_2

    .line 612
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    .line 613
    if-eqz v0, :cond_9

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCoreMsg] close communication fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 617
    :cond_9
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 618
    const-string v0, "Close communication, deinit keep alive"

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 619
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/b/a/b;->d()V

    .line 620
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v1}, La/a/a/a;->e(La/a/a/a;I)I

    .line 621
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    if-lt v0, v11, :cond_2

    .line 622
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/4 v2, 0x3

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;I)V

    goto/16 :goto_2

    .line 628
    :sswitch_3
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] No need to send APP in gallery notify. CoreStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v2}, La/a/a/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 630
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 633
    :cond_a
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 634
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/b/a/b;->f()V

    goto/16 :goto_2

    .line 639
    :sswitch_4
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 640
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/b/a/b;->g()V

    goto/16 :goto_2

    .line 645
    :sswitch_5
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 646
    aput-byte v2, v6, v2

    .line 647
    const/16 v0, -0x7e

    aput-byte v0, v6, v13

    .line 648
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 649
    if-le v0, v12, :cond_2

    .line 652
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 653
    if-gez v0, :cond_b

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] camera reset fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 657
    :cond_b
    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 659
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 662
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    if-eqz v0, :cond_c

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 667
    :cond_c
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 672
    :sswitch_6
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_d

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] live view already preparing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v2}, La/a/a/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 674
    const-string v0, "result"

    invoke-virtual {v5, v0, v13}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 677
    :cond_d
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_e

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] live view already streaming: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v2}, La/a/a/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 679
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 683
    :cond_e
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 684
    aput-byte v2, v6, v2

    .line 685
    aput-byte v2, v6, v13

    .line 686
    const-string v0, "resolution"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 687
    const/16 v2, 0x8

    aput-byte v1, v6, v2

    .line 688
    const/16 v2, 0x9

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    .line 689
    const/16 v0, 0xa

    aput-byte v1, v6, v0

    .line 691
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 692
    if-le v0, v12, :cond_2

    .line 695
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 696
    if-gez v0, :cond_11

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] start live view fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 712
    :cond_f
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->e(La/a/a/a;)LGeneralFunction/c/a;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 713
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->e(La/a/a/a;)LGeneralFunction/c/a;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/c/a;->b()V

    .line 714
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;LGeneralFunction/c/a;)LGeneralFunction/c/a;

    .line 716
    :cond_10
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    new-instance v2, LGeneralFunction/c/a;

    const/4 v3, 0x3

    const/high16 v4, 0x100000

    invoke-direct {v2, v3, v4}, LGeneralFunction/c/a;-><init>(II)V

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;LGeneralFunction/c/a;)LGeneralFunction/c/a;

    .line 717
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 718
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    if-ne v0, v11, :cond_2

    .line 719
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/4 v2, 0x5

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;I)V

    goto/16 :goto_2

    .line 701
    :cond_11
    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 703
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 706
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    if-eqz v0, :cond_f

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 725
    :sswitch_7
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_12

    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_12

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] no need to stop live view. Status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v2}, La/a/a/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 730
    :cond_12
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 731
    aput-byte v2, v6, v2

    .line 732
    aput-byte v13, v6, v13

    .line 734
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 735
    if-le v0, v12, :cond_2

    .line 738
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 739
    if-gez v0, :cond_13

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] stop live view fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 743
    :cond_13
    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 745
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 748
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    if-eqz v0, :cond_14

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 754
    :cond_14
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->e(La/a/a/a;)LGeneralFunction/c/a;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 755
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->e(La/a/a/a;)LGeneralFunction/c/a;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/c/a;->b()V

    .line 756
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;LGeneralFunction/c/a;)LGeneralFunction/c/a;

    .line 758
    :cond_15
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 759
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_16

    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 760
    :cond_16
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v11}, La/a/a/a;->b(La/a/a/a;I)V

    goto/16 :goto_2

    .line 766
    :sswitch_8
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 767
    aput-byte v2, v6, v2

    .line 768
    const/4 v0, 0x3

    aput-byte v0, v6, v13

    .line 769
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 770
    if-le v0, v12, :cond_2

    .line 773
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 774
    if-gez v0, :cond_17

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] start recording fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 778
    :cond_17
    const/4 v2, 0x3

    if-ne v0, v2, :cond_18

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 780
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 783
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    if-eqz v0, :cond_18

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 789
    :cond_18
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_19

    .line 790
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/16 v2, 0x8

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;I)V

    .line 792
    :cond_19
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 797
    :sswitch_9
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 798
    aput-byte v2, v6, v2

    .line 799
    aput-byte v11, v6, v13

    .line 800
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 801
    if-le v0, v12, :cond_2

    .line 804
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 805
    if-gez v0, :cond_1a

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] stop recording fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 809
    :cond_1a
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1b

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 811
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 814
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    if-eqz v0, :cond_1b

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 819
    :cond_1b
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 824
    :sswitch_a
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 825
    aput-byte v2, v6, v2

    .line 826
    const/4 v0, 0x5

    aput-byte v0, v6, v13

    .line 828
    const-string v0, "orientation"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 829
    const/16 v2, 0x8

    iget-object v3, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v3, v0}, La/a/a/a;->f(La/a/a/a;I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    .line 831
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 832
    if-le v0, v12, :cond_2

    .line 835
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 836
    if-gez v0, :cond_1c

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] take picture fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 840
    :cond_1c
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1d

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 842
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 845
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    if-eqz v0, :cond_1d

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 851
    :cond_1d
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1e

    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1e

    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    if-ne v0, v11, :cond_1f

    .line 852
    :cond_1e
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/4 v2, 0x7

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;I)V

    .line 854
    :cond_1f
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v1}, La/a/a/a;->b(La/a/a/a;Z)Z

    .line 855
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v1}, La/a/a/a;->c(La/a/a/a;Z)Z

    .line 856
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 861
    :sswitch_b
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 862
    aput-byte v2, v6, v2

    .line 863
    const/16 v0, -0x7d

    aput-byte v0, v6, v13

    .line 864
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 865
    if-le v0, v12, :cond_2

    .line 868
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 869
    if-gez v0, :cond_20

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] enter FW upgrade mode fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 873
    :cond_20
    const/4 v2, 0x3

    if-ne v0, v2, :cond_21

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send msg again: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 875
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v6}, La/b/a/b;->a([B)I

    move-result v2

    if-eq v2, v12, :cond_2

    .line 878
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    if-eqz v2, :cond_21

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 883
    :cond_21
    const-string v2, "result"

    invoke-virtual {v5, v2, v0}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 888
    :sswitch_c
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 889
    aput-byte v2, v6, v2

    .line 890
    const/16 v0, -0x7c

    aput-byte v0, v6, v13

    .line 891
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const/16 v2, 0x1388

    invoke-virtual {v0, v6, v2}, La/b/a/b;->a([BI)I

    move-result v0

    .line 892
    if-le v0, v12, :cond_2

    .line 895
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 896
    if-gez v0, :cond_22

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] exam FW bin fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 900
    :cond_22
    const/4 v2, 0x3

    if-ne v0, v2, :cond_23

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send msg again: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 902
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v6}, La/b/a/b;->a([B)I

    move-result v2

    if-eq v2, v12, :cond_2

    .line 905
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    if-eqz v2, :cond_23

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 910
    :cond_23
    const-string v2, "result"

    invoke-virtual {v5, v2, v0}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 915
    :sswitch_d
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 916
    aput-byte v2, v6, v2

    .line 917
    const/16 v0, -0x7f

    aput-byte v0, v6, v13

    .line 918
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 919
    if-le v0, v12, :cond_2

    .line 922
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 923
    if-gez v0, :cond_24

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] update camera FW fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 927
    :cond_24
    const/4 v2, 0x3

    if-ne v0, v2, :cond_25

    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send msg again: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 929
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v6}, La/b/a/b;->a([B)I

    move-result v2

    if-eq v2, v12, :cond_2

    .line 932
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    if-eqz v2, :cond_25

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 937
    :cond_25
    const-string v2, "result"

    invoke-virtual {v5, v2, v0}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 942
    :sswitch_e
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 943
    aput-byte v2, v6, v2

    .line 944
    const/16 v0, -0x7b

    aput-byte v0, v6, v13

    .line 945
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 946
    if-le v0, v12, :cond_2

    .line 949
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 950
    if-gez v0, :cond_26

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] clear camera picture buffer fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 954
    :cond_26
    const/4 v2, 0x3

    if-ne v0, v2, :cond_27

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send msg again: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 956
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v6}, La/b/a/b;->a([B)I

    move-result v2

    if-eq v2, v12, :cond_2

    .line 959
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    if-eqz v2, :cond_27

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 964
    :cond_27
    const-string v2, "result"

    invoke-virtual {v5, v2, v0}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 969
    :sswitch_f
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 970
    aput-byte v2, v6, v2

    .line 971
    const/16 v0, -0x10

    aput-byte v0, v6, v13

    .line 972
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 973
    if-le v0, v12, :cond_2

    .line 976
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 977
    if-gez v0, :cond_28

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] camera power off fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 981
    :cond_28
    const/4 v2, 0x3

    if-ne v0, v2, :cond_29

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send msg again: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 983
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v6}, La/b/a/b;->a([B)I

    move-result v2

    if-eq v2, v12, :cond_2

    .line 986
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    if-eqz v2, :cond_29

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 991
    :cond_29
    const-string v2, "result"

    invoke-virtual {v5, v2, v0}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 996
    :sswitch_10
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2a

    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2a

    .line 997
    const-string v0, "[UsbCoreMsg] start live view first"

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1000
    :cond_2a
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->e(La/a/a/a;)LGeneralFunction/c/a;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 1001
    const-string v0, "[UsbCoreMsg] Null UsbCoreLvBufController"

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1004
    :cond_2b
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1005
    const/4 v0, 0x5

    aput-byte v0, v6, v2

    .line 1006
    aput-byte v2, v6, v13

    .line 1007
    const/16 v0, 0x8

    aput-byte v1, v6, v0

    .line 1011
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->e(La/a/a/a;)LGeneralFunction/c/a;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/c/a;->a()LGeneralFunction/c/d;

    move-result-object v4

    .line 1012
    if-nez v4, :cond_2c

    .line 1013
    const-string v0, "[UsbCoreMsg] Could not get buffer!"

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1017
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, LGeneralFunction/c/d;->b:J

    move v0, v1

    move v3, v1

    .line 1018
    :goto_3
    if-nez v3, :cond_2d

    .line 1021
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v7

    invoke-virtual {v7, v6}, La/b/a/b;->a([B)I

    move-result v7

    .line 1024
    if-gt v7, v12, :cond_2e

    .line 1025
    invoke-virtual {v4}, LGeneralFunction/c/d;->d()V

    .line 1062
    :cond_2d
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, LGeneralFunction/c/d;->c:J

    .line 1064
    if-ne v3, v2, :cond_2

    .line 1065
    new-instance v2, La/a/a/d;

    invoke-direct {v2, v4}, La/a/a/d;-><init>(LGeneralFunction/c/d;)V

    .line 1066
    const-string v3, "V"

    iput-object v3, v2, La/a/a/d;->b:Ljava/lang/String;

    .line 1067
    iget-object v3, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v4

    invoke-virtual {v4, v11}, La/b/a/b;->a(I)B

    move-result v4

    invoke-static {v3, v2, v4}, La/a/a/a;->a(La/a/a/a;La/a/a/d;B)V

    .line 1068
    iget-object v3, v2, La/a/a/d;->a:LGeneralFunction/c/d;

    iput v0, v3, LGeneralFunction/c/d;->a:I

    .line 1070
    const-string v0, "thermal_status"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, La/b/a/b;->a(I)B

    move-result v3

    invoke-virtual {v5, v0, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1071
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1072
    const-string v0, "LiveViewFrame"

    new-instance v3, La/c/a$a;

    invoke-direct {v3, v2}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v3}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    goto/16 :goto_2

    .line 1028
    :cond_2e
    iget-object v8, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v9

    invoke-virtual {v9, v1}, La/b/a/b;->a(I)B

    move-result v9

    invoke-static {v8, v9}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v8

    .line 1029
    if-gez v8, :cond_2f

    .line 1030
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!! Get Frame Error !!! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v7

    invoke-virtual {v7, v1}, La/b/a/b;->a(I)B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1031
    invoke-virtual {v4}, LGeneralFunction/c/d;->d()V

    goto :goto_4

    .line 1034
    :cond_2f
    const/4 v9, 0x3

    if-ne v8, v9, :cond_30

    .line 1035
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need to send msg again, use busy to retry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1036
    const-string v6, "result"

    invoke-virtual {v5, v6, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1037
    invoke-virtual {v4}, LGeneralFunction/c/d;->d()V

    goto/16 :goto_4

    .line 1040
    :cond_30
    if-ne v8, v2, :cond_31

    .line 1041
    const-string v6, "result"

    invoke-virtual {v5, v6, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1042
    invoke-virtual {v4}, LGeneralFunction/c/d;->d()V

    goto/16 :goto_4

    .line 1046
    :cond_31
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v8

    const/16 v9, 0x1c

    invoke-virtual {v8, v9, v11}, La/b/a/b;->b(II)I

    move-result v8

    .line 1047
    if-gt v8, v7, :cond_32

    if-gez v8, :cond_33

    .line 1048
    :cond_32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UsbCoreMsg] Invalid data len: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " result: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1049
    invoke-virtual {v4}, LGeneralFunction/c/d;->d()V

    goto/16 :goto_4

    .line 1052
    :cond_33
    add-int v7, v0, v8

    const/high16 v9, 0x100000

    if-le v7, v9, :cond_34

    .line 1053
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[UsbCoreMsg] Frame size over buffer! frameLen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tempLen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1054
    invoke-virtual {v4}, LGeneralFunction/c/d;->d()V

    goto/16 :goto_4

    .line 1058
    :cond_34
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    const/16 v7, 0x20

    invoke-virtual {v3, v7, v8}, La/b/a/b;->a(II)[B

    move-result-object v3

    invoke-virtual {v4}, LGeneralFunction/c/d;->a()[B

    move-result-object v7

    invoke-static {v3, v1, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1059
    add-int/2addr v0, v8

    .line 1060
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v2}, La/b/a/b;->a(I)B

    move-result v3

    goto/16 :goto_3

    .line 1078
    :sswitch_11
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1079
    const/4 v0, 0x5

    aput-byte v0, v6, v2

    .line 1080
    aput-byte v13, v6, v13

    .line 1083
    const/high16 v0, 0x50000

    new-array v8, v0, [B

    move v3, v1

    move v4, v1

    .line 1087
    :cond_35
    if-nez v4, :cond_96

    .line 1089
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    iget-object v9, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v9}, La/a/a/a;->f(La/a/a/a;)I

    move-result v9

    invoke-static {v0, v9}, La/a/a/a;->d(La/a/a/a;I)[B

    move-result-object v0

    const/16 v9, 0x8

    invoke-static {v0, v1, v6, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1090
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1091
    if-ne v0, v12, :cond_37

    .line 1093
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v1}, La/a/a/a;->e(La/a/a/a;I)I

    move v0, v2

    .line 1140
    :goto_5
    if-nez v0, :cond_2

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[USBCoreMsg] GetPic transferType: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", IsMiddleData: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "IsMiddleData"

    invoke-virtual {v7, v9}, La/c/a;->b(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1144
    const-string v0, "IsMiddleData"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3e

    .line 1145
    const-string v0, "CurrentTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v0, v10, v11}, La/c/a;->a(Ljava/lang/String;J)V

    .line 1150
    :goto_6
    if-ne v4, v2, :cond_36

    .line 1151
    const-string v0, "IsDataEnd"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1152
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v1}, La/a/a/a;->e(La/a/a/a;I)I

    .line 1154
    const-string v0, "[CaptureDBG] Send get pic done to camera"

    const/4 v2, 0x3

    invoke-static {v0, v2}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1155
    const/16 v0, -0x7e

    aput-byte v0, v6, v13

    .line 1156
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1157
    if-gt v0, v12, :cond_36

    .line 1158
    const-string v0, "WARNING! Send get picture done to camera FAIL!!"

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1161
    :cond_36
    new-instance v0, La/a/a/d;

    new-instance v2, LGeneralFunction/c/d;

    invoke-direct {v2, v8}, LGeneralFunction/c/d;-><init>([B)V

    invoke-direct {v0, v2}, La/a/a/d;-><init>(LGeneralFunction/c/d;)V

    .line 1162
    const-string v2, "P"

    iput-object v2, v0, La/a/a/d;->b:Ljava/lang/String;

    .line 1163
    iget-object v2, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    iput v3, v2, LGeneralFunction/c/d;->a:I

    .line 1165
    const-string v2, "result"

    invoke-virtual {v5, v2, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1166
    const-string v2, "PictureData"

    new-instance v3, La/c/a$a;

    invoke-direct {v3, v0}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v3}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    goto/16 :goto_2

    .line 1096
    :cond_37
    const/4 v9, -0x3

    if-ne v0, v9, :cond_38

    .line 1097
    const-string v0, "[UsbCoreMsg] Get picture SCSI timeout! Retry..."

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1098
    const-string v0, "IsDataEnd"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    move v0, v1

    .line 1099
    goto/16 :goto_5

    .line 1101
    :cond_38
    iget-object v9, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v10

    invoke-virtual {v10, v1}, La/b/a/b;->a(I)B

    move-result v10

    invoke-static {v9, v10}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v9

    .line 1102
    if-gez v9, :cond_39

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UsbCoreMsg] get picture fail: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v9

    invoke-virtual {v9, v1}, La/b/a/b;->a(I)B

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1105
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v1}, La/a/a/a;->e(La/a/a/a;I)I

    move v0, v2

    .line 1106
    goto/16 :goto_5

    .line 1108
    :cond_39
    const/4 v10, 0x3

    if-ne v9, v10, :cond_3a

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Need to send msg again, use busy to retry: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1110
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    move v0, v2

    .line 1112
    goto/16 :goto_5

    .line 1114
    :cond_3a
    if-ne v9, v2, :cond_3b

    .line 1115
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    move v0, v2

    .line 1117
    goto/16 :goto_5

    .line 1120
    :cond_3b
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v9

    const/16 v10, 0x10

    invoke-virtual {v9, v10, v11}, La/b/a/b;->b(II)I

    move-result v9

    .line 1121
    if-gt v9, v0, :cond_3c

    if-gez v9, :cond_3d

    .line 1122
    :cond_3c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[UsbCoreMsg] Invalid data len: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1124
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v1}, La/a/a/a;->e(La/a/a/a;I)I

    move v0, v2

    .line 1125
    goto/16 :goto_5

    .line 1128
    :cond_3d
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v9}, La/b/a/b;->a(II)[B

    move-result-object v0

    invoke-static {v0, v1, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1129
    add-int/2addr v3, v9

    .line 1130
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    iget-object v4, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v4}, La/a/a/a;->f(La/a/a/a;)I

    move-result v4

    add-int/2addr v4, v9

    invoke-static {v0, v4}, La/a/a/a;->e(La/a/a/a;I)I

    .line 1131
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, La/b/a/b;->a(I)B

    move-result v4

    .line 1132
    const-string v0, "thermal_status"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, La/b/a/b;->a(I)B

    move-result v9

    invoke-virtual {v5, v0, v9}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1134
    if-nez v4, :cond_35

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, La/b/a/b;->b()I

    move-result v0

    add-int/2addr v0, v3

    const/high16 v9, 0x50000

    if-le v0, v9, :cond_35

    .line 1135
    const-string v0, "[USBCoreMsg] Pic not finished, keep download"

    invoke-static {v0, v13}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1136
    const-string v0, "IsDataEnd"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    move v0, v1

    .line 1137
    goto/16 :goto_5

    .line 1148
    :cond_3e
    const-string v0, "CurrentTime"

    const-string v9, "CurrentTime"

    invoke-virtual {v7, v9}, La/c/a;->c(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v5, v0, v10, v11}, La/c/a;->a(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 1171
    :sswitch_12
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1172
    const/4 v0, 0x5

    aput-byte v0, v6, v2

    .line 1173
    const/4 v0, 0x3

    aput-byte v0, v6, v13

    .line 1175
    const v0, 0x24400

    new-array v0, v0, [B

    .line 1177
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v6}, La/b/a/b;->a([B)I

    move-result v3

    .line 1178
    if-le v3, v12, :cond_2

    .line 1181
    iget-object v4, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v6

    invoke-virtual {v6, v1}, La/b/a/b;->a(I)B

    move-result v6

    invoke-static {v4, v6}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v4

    .line 1182
    if-gez v4, :cond_3f

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] get thumbnail fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1186
    :cond_3f
    const/4 v6, 0x3

    if-ne v4, v6, :cond_40

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need to send msg again, use busy to retry: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1188
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1191
    :cond_40
    if-ne v4, v2, :cond_41

    .line 1192
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1196
    :cond_41
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v11}, La/b/a/b;->b(II)I

    move-result v2

    .line 1197
    if-gt v2, v3, :cond_42

    if-gez v2, :cond_43

    .line 1198
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UsbCoreMsg] Invalid data len: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1201
    :cond_43
    const v3, 0x24400

    if-le v2, v3, :cond_44

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCoreMsg] thumbnail size over buffer: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1205
    :cond_44
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v2}, La/b/a/b;->a(II)[B

    move-result-object v3

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1207
    new-instance v3, La/a/a/d;

    new-instance v4, LGeneralFunction/c/d;

    invoke-direct {v4, v0}, LGeneralFunction/c/d;-><init>([B)V

    invoke-direct {v3, v4}, La/a/a/d;-><init>(LGeneralFunction/c/d;)V

    .line 1208
    const-string v0, "T"

    iput-object v0, v3, La/a/a/d;->b:Ljava/lang/String;

    .line 1209
    iget-object v0, v3, La/a/a/d;->a:LGeneralFunction/c/d;

    iput v2, v0, LGeneralFunction/c/d;->a:I

    .line 1211
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1212
    const-string v0, "ThumbnailData"

    new-instance v2, La/c/a$a;

    invoke-direct {v2, v3}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    goto/16 :goto_2

    .line 1217
    :sswitch_13
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1218
    const/4 v0, 0x3

    aput-byte v0, v6, v2

    .line 1219
    aput-byte v2, v6, v13

    .line 1220
    const-string v0, "app_version"

    invoke-virtual {v7, v0}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v2, 0x8

    const-string v3, "app_version"

    invoke-virtual {v7, v3}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1221
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1222
    if-le v0, v12, :cond_2

    .line 1226
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 1227
    if-gez v0, :cond_45

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] get camerae info fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1231
    :cond_45
    const/4 v2, 0x3

    if-ne v0, v2, :cond_46

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1233
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1236
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    if-eqz v0, :cond_46

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_46
    move v0, v1

    .line 1243
    :goto_7
    const/16 v2, 0x20

    if-ge v0, v2, :cond_47

    .line 1244
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    add-int/lit8 v3, v0, 0x61

    invoke-virtual {v2, v3}, La/b/a/b;->a(I)B

    move-result v2

    if-nez v2, :cond_48

    .line 1248
    :cond_47
    if-eqz v0, :cond_2

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    const/16 v3, 0x61

    invoke-virtual {v2, v3}, La/b/a/b;->a(I)B

    move-result v2

    const/16 v3, 0x76

    if-ne v2, v3, :cond_2

    .line 1249
    new-instance v2, Ljava/lang/String;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    const/16 v4, 0x61

    invoke-virtual {v3, v4, v0}, La/b/a/b;->a(II)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 1250
    const-string v0, "fw_version"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1243
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1257
    :sswitch_14
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1258
    const/4 v0, 0x3

    aput-byte v0, v6, v2

    .line 1259
    aput-byte v13, v6, v13

    .line 1260
    const-string v0, "v2.0000"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v3, 0x8

    const-string v4, "v2.0000"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1261
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1262
    if-le v0, v12, :cond_2

    .line 1266
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v1}, La/b/a/b;->a(I)B

    move-result v3

    invoke-static {v0, v3}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 1267
    if-gez v0, :cond_49

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] get scsi version fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1271
    :cond_49
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4a

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send msg again: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1273
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1276
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    if-eqz v0, :cond_4a

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_4a
    move v0, v1

    .line 1283
    :goto_8
    const/16 v3, 0x20

    if-ge v0, v3, :cond_4b

    .line 1284
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, La/b/a/b;->a(I)B

    move-result v3

    if-nez v3, :cond_4c

    .line 1288
    :cond_4b
    if-eqz v0, :cond_2

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v2}, La/b/a/b;->a(I)B

    move-result v3

    const/16 v4, 0x76

    if-ne v3, v4, :cond_2

    .line 1289
    new-instance v3, Ljava/lang/String;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, La/b/a/b;->a(II)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 1290
    const-string v0, "scsi_version"

    invoke-virtual {v5, v0, v3}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1283
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1297
    :sswitch_15
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1298
    const/4 v0, 0x3

    aput-byte v0, v6, v2

    .line 1299
    const/16 v0, 0x30

    aput-byte v0, v6, v13

    .line 1300
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1301
    if-le v0, v12, :cond_2

    .line 1305
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v1}, La/b/a/b;->a(I)B

    move-result v3

    invoke-static {v0, v3}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 1306
    if-gez v0, :cond_4d

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] get camerae status fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1310
    :cond_4d
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4e

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send msg again: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1312
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1315
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    if-eqz v0, :cond_4e

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1321
    :cond_4e
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1322
    const-string v0, "execution_status"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v2}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1323
    const-string v0, "thermal_status"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v11}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1328
    :sswitch_16
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1329
    const/4 v0, 0x3

    aput-byte v0, v6, v2

    .line 1330
    const/16 v0, 0x34

    aput-byte v0, v6, v13

    .line 1331
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1332
    if-le v0, v12, :cond_2

    .line 1336
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 1337
    if-gez v0, :cond_4f

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] get thermal status fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1341
    :cond_4f
    const/4 v2, 0x3

    if-ne v0, v2, :cond_50

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1343
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1346
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    if-eqz v0, :cond_50

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1352
    :cond_50
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1357
    :sswitch_17
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1358
    const/4 v0, 0x3

    aput-byte v0, v6, v2

    .line 1359
    const/16 v0, 0x35

    aput-byte v0, v6, v13

    .line 1360
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1361
    if-le v0, v12, :cond_2

    .line 1365
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;B)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1367
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1371
    :cond_51
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1372
    const-string v0, "remained_pic_num"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1377
    :sswitch_18
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1378
    aput-byte v11, v6, v2

    .line 1379
    const/4 v0, 0x3

    aput-byte v0, v6, v13

    .line 1380
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1381
    if-le v0, v12, :cond_2

    .line 1385
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;B)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1387
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1391
    :cond_52
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1392
    const-string v0, "photo_resolution"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1397
    :sswitch_19
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1398
    aput-byte v11, v6, v2

    .line 1399
    aput-byte v11, v6, v13

    .line 1400
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1401
    if-le v0, v12, :cond_2

    .line 1405
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;B)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1407
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1411
    :cond_53
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1412
    const-string v0, "video_resolution"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1417
    :sswitch_1a
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1418
    aput-byte v11, v6, v2

    .line 1419
    const/4 v0, 0x7

    aput-byte v0, v6, v13

    .line 1420
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1421
    if-le v0, v12, :cond_2

    .line 1425
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;B)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1427
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1431
    :cond_54
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1432
    const-string v0, "evb"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1437
    :sswitch_1b
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1438
    aput-byte v11, v6, v2

    .line 1439
    const/16 v0, 0x8

    aput-byte v0, v6, v13

    .line 1440
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1441
    if-le v0, v12, :cond_2

    .line 1445
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;B)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1447
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1451
    :cond_55
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1452
    const-string v0, "white_balance"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1457
    :sswitch_1c
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1458
    aput-byte v11, v6, v2

    .line 1459
    const/16 v0, 0x9

    aput-byte v0, v6, v13

    .line 1460
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1461
    if-le v0, v12, :cond_2

    .line 1465
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;B)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1467
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1471
    :cond_56
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1472
    const-string v0, "filter"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1477
    :sswitch_1d
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1478
    aput-byte v11, v6, v2

    .line 1479
    aput-byte v2, v6, v13

    .line 1480
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1481
    if-le v0, v12, :cond_2

    .line 1484
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 1485
    if-gez v0, :cond_57

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] get datetime fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1489
    :cond_57
    const/4 v2, 0x3

    if-ne v0, v2, :cond_58

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1491
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1494
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    if-eqz v0, :cond_58

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1500
    :cond_58
    new-instance v0, La/a/a/b;

    invoke-direct {v0}, La/a/a/b;-><init>()V

    .line 1501
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v13, v13}, La/b/a/b;->b(II)I

    move-result v2

    iput v2, v0, La/a/a/b;->a:I

    .line 1502
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v11}, La/b/a/b;->a(I)B

    move-result v2

    iput-byte v2, v0, La/a/a/b;->b:B

    .line 1503
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, La/b/a/b;->a(I)B

    move-result v2

    iput-byte v2, v0, La/a/a/b;->c:B

    .line 1504
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, La/b/a/b;->a(I)B

    move-result v2

    iput-byte v2, v0, La/a/a/b;->d:B

    .line 1505
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, La/b/a/b;->a(I)B

    move-result v2

    iput-byte v2, v0, La/a/a/b;->e:B

    .line 1506
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, La/b/a/b;->a(I)B

    move-result v2

    iput-byte v2, v0, La/a/a/b;->f:B

    .line 1507
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v13}, La/b/a/b;->b(II)I

    move-result v2

    iput v2, v0, La/a/a/b;->h:I

    .line 1509
    const-string v2, "result"

    invoke-virtual {v5, v2, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1510
    const-string v2, "DateTime"

    new-instance v3, La/c/a$a;

    invoke-direct {v3, v0}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v3}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    goto/16 :goto_2

    .line 1515
    :sswitch_1e
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1516
    aput-byte v11, v6, v2

    .line 1517
    const/16 v0, 0x10

    aput-byte v0, v6, v13

    .line 1518
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1519
    if-le v0, v12, :cond_2

    .line 1523
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;B)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1525
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1529
    :cond_59
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1530
    const-string v0, "shutter_time"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1535
    :sswitch_1f
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1536
    aput-byte v11, v6, v2

    .line 1537
    const/16 v0, 0x11

    aput-byte v0, v6, v13

    .line 1538
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1539
    if-le v0, v12, :cond_2

    .line 1543
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;B)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1545
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1549
    :cond_5a
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1550
    const-string v0, "logo_type"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1555
    :sswitch_20
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1556
    aput-byte v11, v6, v2

    .line 1557
    const/16 v0, 0xc

    aput-byte v0, v6, v13

    .line 1558
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1559
    if-le v0, v12, :cond_2

    .line 1563
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;B)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1565
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    if-eq v0, v12, :cond_2

    .line 1569
    :cond_5b
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1570
    const-string v0, "bitrate"

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1575
    :sswitch_21
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1576
    aput-byte v11, v6, v2

    .line 1577
    const/16 v0, 0x60

    aput-byte v0, v6, v13

    .line 1578
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1579
    if-le v0, v12, :cond_2

    .line 1582
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 1583
    if-gez v0, :cond_5c

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] get all setting fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1587
    :cond_5c
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5d

    .line 1588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send msg again: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1589
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v6}, La/b/a/b;->a([B)I

    move-result v2

    if-eq v2, v12, :cond_2

    .line 1592
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    if-eqz v2, :cond_5d

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Still fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1598
    :cond_5d
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v13}, La/b/a/b;->a(I)B

    move-result v2

    .line 1599
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, La/b/a/b;->a(I)B

    move-result v3

    .line 1600
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v4

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, La/b/a/b;->a(I)B

    move-result v4

    .line 1601
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, La/b/a/b;->a(I)B

    move-result v6

    .line 1602
    new-instance v7, La/a/a/b;

    invoke-direct {v7}, La/a/a/b;-><init>()V

    .line 1603
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9, v13}, La/b/a/b;->b(II)I

    move-result v8

    iput v8, v7, La/a/a/b;->a:I

    .line 1604
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, La/b/a/b;->a(I)B

    move-result v8

    iput-byte v8, v7, La/a/a/b;->b:B

    .line 1605
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v8

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, La/b/a/b;->a(I)B

    move-result v8

    iput-byte v8, v7, La/a/a/b;->c:B

    .line 1606
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v8

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, La/b/a/b;->a(I)B

    move-result v8

    iput-byte v8, v7, La/a/a/b;->d:B

    .line 1607
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v8

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, La/b/a/b;->a(I)B

    move-result v8

    iput-byte v8, v7, La/a/a/b;->e:B

    .line 1608
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, La/b/a/b;->a(I)B

    move-result v8

    iput-byte v8, v7, La/a/a/b;->f:B

    .line 1609
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v8

    const/16 v9, 0x12

    invoke-virtual {v8, v9, v13}, La/b/a/b;->b(II)I

    move-result v8

    iput v8, v7, La/a/a/b;->h:I

    .line 1610
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, La/b/a/b;->a(I)B

    move-result v8

    .line 1611
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v9

    const/16 v10, 0x23

    invoke-virtual {v9, v10}, La/b/a/b;->a(I)B

    move-result v9

    .line 1612
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v10

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, La/b/a/b;->a(I)B

    move-result v10

    .line 1614
    const-string v11, "result"

    invoke-virtual {v5, v11, v0}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1615
    const-string v0, "DateTime"

    new-instance v11, La/c/a$a;

    invoke-direct {v11, v7}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v11}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    .line 1616
    const-string v0, "photo_resolution"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1617
    const-string v0, "video_resolution"

    invoke-virtual {v5, v0, v3}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1618
    const-string v0, "evb"

    invoke-virtual {v5, v0, v4}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1619
    const-string v0, "white_balance"

    invoke-virtual {v5, v0, v6}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1620
    const-string v0, "filter"

    invoke-virtual {v5, v0, v8}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1621
    const-string v0, "bitrate"

    invoke-virtual {v5, v0, v9}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1622
    const-string v0, "logo_type"

    invoke-virtual {v5, v0, v10}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1627
    :sswitch_22
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 1628
    aput-byte v11, v6, v2

    .line 1629
    const/4 v0, 0x3

    aput-byte v0, v6, v13

    .line 1630
    aput-byte v2, v6, v11

    .line 1631
    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5e

    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v11, :cond_5e

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid photo resolution: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1635
    :cond_5e
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v6, v2}, La/b/a/b;->a([BB)I

    move-result v0

    .line 1636
    if-le v0, v12, :cond_2

    .line 1639
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1644
    :sswitch_23
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 1645
    aput-byte v11, v6, v2

    .line 1646
    aput-byte v11, v6, v13

    .line 1647
    aput-byte v2, v6, v11

    .line 1648
    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5f

    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_5f

    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_5f

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid video resolution: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1652
    :cond_5f
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v6, v2}, La/b/a/b;->a([BB)I

    move-result v0

    .line 1653
    if-le v0, v12, :cond_2

    .line 1656
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1661
    :sswitch_24
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 1662
    aput-byte v11, v6, v2

    .line 1663
    const/4 v0, 0x7

    aput-byte v0, v6, v13

    .line 1664
    aput-byte v2, v6, v11

    .line 1665
    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_60

    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_61

    .line 1666
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid EVB setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1669
    :cond_61
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v6, v2}, La/b/a/b;->a([BB)I

    move-result v0

    .line 1670
    if-le v0, v12, :cond_2

    .line 1673
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1678
    :sswitch_25
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 1679
    aput-byte v11, v6, v2

    .line 1680
    const/16 v0, 0x8

    aput-byte v0, v6, v13

    .line 1681
    aput-byte v2, v6, v11

    .line 1682
    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_62

    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-le v0, v11, :cond_63

    .line 1683
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid white balance setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1686
    :cond_63
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v6, v2}, La/b/a/b;->a([BB)I

    move-result v0

    .line 1687
    if-le v0, v12, :cond_2

    .line 1690
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1695
    :sswitch_26
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 1696
    aput-byte v11, v6, v2

    .line 1697
    const/16 v0, 0x9

    aput-byte v0, v6, v13

    .line 1698
    aput-byte v2, v6, v11

    .line 1699
    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_64

    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_65

    .line 1700
    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid filter setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1703
    :cond_65
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v6, v2}, La/b/a/b;->a([BB)I

    move-result v0

    .line 1704
    if-le v0, v12, :cond_2

    .line 1707
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1712
    :sswitch_27
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 1713
    aput-byte v11, v6, v2

    .line 1714
    aput-byte v2, v6, v13

    .line 1716
    const/16 v0, 0x18

    aput-byte v0, v6, v11

    .line 1718
    const/16 v0, 0x18

    new-array v2, v0, [B

    .line 1719
    const-string v0, "DateTime"

    invoke-virtual {v7, v0}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/b;

    check-cast v0, La/a/a/b;

    .line 1720
    iget-object v3, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v3, v0}, La/a/a/a;->a(La/a/a/a;La/a/a/b;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1724
    iget v3, v0, La/a/a/b;->a:I

    int-to-byte v3, v3

    aput-byte v3, v2, v13

    .line 1725
    const/4 v3, 0x3

    iget v4, v0, La/a/a/b;->a:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1726
    iget-byte v3, v0, La/a/a/b;->b:B

    aput-byte v3, v2, v11

    .line 1727
    const/4 v3, 0x5

    iget-byte v4, v0, La/a/a/b;->c:B

    aput-byte v4, v2, v3

    .line 1728
    const/4 v3, 0x6

    iget-byte v4, v0, La/a/a/b;->d:B

    aput-byte v4, v2, v3

    .line 1729
    const/4 v3, 0x7

    iget-byte v4, v0, La/a/a/b;->e:B

    aput-byte v4, v2, v3

    .line 1730
    const/16 v3, 0x8

    iget-byte v4, v0, La/a/a/b;->f:B

    aput-byte v4, v2, v3

    .line 1731
    const/16 v3, 0xa

    iget v4, v0, La/a/a/b;->h:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1732
    const/16 v3, 0xb

    iget v0, v0, La/a/a/b;->h:I

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 1735
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const/16 v3, 0x18

    invoke-virtual {v0, v6, v2, v3}, La/b/a/b;->a([B[BI)I

    move-result v0

    .line 1736
    if-le v0, v12, :cond_2

    .line 1739
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1744
    :sswitch_28
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 1745
    aput-byte v11, v6, v2

    .line 1746
    const/16 v0, 0x10

    aput-byte v0, v6, v13

    goto/16 :goto_2

    .line 1752
    :sswitch_29
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 1753
    aput-byte v11, v6, v2

    .line 1754
    const/16 v0, 0x11

    aput-byte v0, v6, v13

    .line 1755
    aput-byte v2, v6, v11

    .line 1756
    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_66

    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_67

    .line 1757
    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid logo type setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1760
    :cond_67
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v6, v2}, La/b/a/b;->a([BB)I

    move-result v0

    .line 1761
    if-le v0, v12, :cond_2

    .line 1764
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1769
    :sswitch_2a
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 1770
    aput-byte v11, v6, v2

    .line 1771
    const/16 v0, 0xc

    aput-byte v0, v6, v13

    .line 1772
    aput-byte v2, v6, v11

    .line 1773
    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_68

    const-string v0, "setting"

    invoke-virtual {v7, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xff

    if-lt v0, v2, :cond_69

    .line 1774
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] Invalid bitrate setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1777
    :cond_69
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const-string v2, "setting"

    invoke-virtual {v7, v2}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v6, v2}, La/b/a/b;->a([BB)I

    move-result v0

    .line 1778
    if-le v0, v12, :cond_2

    .line 1781
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1786
    :sswitch_2b
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 1787
    aput-byte v11, v6, v2

    .line 1788
    const/16 v0, 0x60

    aput-byte v0, v6, v13

    .line 1790
    const/16 v0, 0x30

    aput-byte v0, v6, v11

    .line 1792
    const/16 v0, 0x30

    new-array v2, v0, [B

    .line 1793
    const-string v0, "DateTime"

    invoke-virtual {v7, v0}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/b;

    check-cast v0, La/a/a/b;

    .line 1794
    iget-object v3, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v3, v0}, La/a/a/a;->a(La/a/a/a;La/a/a/b;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1798
    const-string v3, "photo_resolution"

    invoke-virtual {v7, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v13

    .line 1799
    const/4 v3, 0x3

    const-string v4, "video_resolution"

    invoke-virtual {v7, v4}, La/c/a;->b(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1800
    const/4 v3, 0x6

    const-string v4, "evb"

    invoke-virtual {v7, v4}, La/c/a;->b(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1801
    const/4 v3, 0x7

    const-string v4, "white_balance"

    invoke-virtual {v7, v4}, La/c/a;->b(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1802
    const/16 v3, 0xa

    iget v4, v0, La/a/a/b;->a:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1803
    const/16 v3, 0xb

    iget v4, v0, La/a/a/b;->a:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1804
    const/16 v3, 0xc

    iget-byte v4, v0, La/a/a/b;->b:B

    aput-byte v4, v2, v3

    .line 1805
    const/16 v3, 0xd

    iget-byte v4, v0, La/a/a/b;->c:B

    aput-byte v4, v2, v3

    .line 1806
    const/16 v3, 0xe

    iget-byte v4, v0, La/a/a/b;->d:B

    aput-byte v4, v2, v3

    .line 1807
    const/16 v3, 0xf

    iget-byte v4, v0, La/a/a/b;->e:B

    aput-byte v4, v2, v3

    .line 1808
    const/16 v3, 0x10

    iget-byte v4, v0, La/a/a/b;->f:B

    aput-byte v4, v2, v3

    .line 1809
    const/16 v3, 0x12

    iget v4, v0, La/a/a/b;->h:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1810
    const/16 v3, 0x13

    iget v0, v0, La/a/a/b;->h:I

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 1811
    const/16 v0, 0x20

    const-string v3, "filter"

    invoke-virtual {v7, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1812
    const/16 v0, 0x23

    const-string v3, "bitrate"

    invoke-virtual {v7, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1813
    const/16 v0, 0x27

    const-string v3, "logo_type"

    invoke-virtual {v7, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1815
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const/16 v3, 0x30

    invoke-virtual {v0, v6, v2, v3}, La/b/a/b;->a([B[BI)I

    move-result v0

    .line 1816
    if-le v0, v12, :cond_2

    .line 1819
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1824
    :sswitch_2c
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 1825
    const/4 v0, 0x6

    aput-byte v0, v6, v2

    .line 1826
    const/16 v0, -0x80

    aput-byte v0, v6, v13

    .line 1828
    const v0, 0xfc51

    new-array v2, v0, [B

    .line 1829
    const-string v0, "FWImage"

    invoke-virtual {v7, v0}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/c;

    check-cast v0, La/a/a/c;

    .line 1831
    iget v3, v0, La/a/a/c;->c:I

    const v4, 0xfc00

    if-le v3, v4, :cond_6a

    .line 1832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCoreMsg] Invalid transfer size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, La/a/a/c;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1835
    :cond_6a
    iget-object v3, p0, La/a/a/a$2;->a:La/a/a/a;

    iget v4, v0, La/a/a/c;->c:I

    invoke-static {v3, v4}, La/a/a/a;->d(La/a/a/a;I)[B

    move-result-object v3

    invoke-static {v3, v1, v6, v11, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1837
    iget-object v3, v0, La/a/a/c;->a:[B

    array-length v3, v3

    const/16 v4, 0x40

    if-le v3, v4, :cond_6b

    .line 1838
    iget-object v3, v0, La/a/a/c;->a:[B

    const/16 v4, 0x40

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1843
    :goto_9
    iget-object v3, p0, La/a/a/a$2;->a:La/a/a/a;

    iget v4, v0, La/a/a/c;->b:I

    invoke-static {v3, v4}, La/a/a/a;->d(La/a/a/a;I)[B

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v1, v2, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1844
    iget-object v3, p0, La/a/a/a$2;->a:La/a/a/a;

    iget v4, v0, La/a/a/c;->c:I

    invoke-static {v3, v4}, La/a/a/a;->d(La/a/a/a;I)[B

    move-result-object v3

    const/16 v4, 0x44

    invoke-static {v3, v1, v2, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1845
    iget-object v3, p0, La/a/a/a$2;->a:La/a/a/a;

    iget v4, v0, La/a/a/c;->d:I

    invoke-static {v3, v4}, La/a/a/a;->d(La/a/a/a;I)[B

    move-result-object v3

    const/16 v4, 0x48

    invoke-static {v3, v1, v2, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1846
    iget-object v3, p0, La/a/a/a$2;->a:La/a/a/a;

    iget v4, v0, La/a/a/c;->e:I

    invoke-static {v3, v4}, La/a/a/a;->d(La/a/a/a;I)[B

    move-result-object v3

    const/16 v4, 0x4c

    invoke-static {v3, v1, v2, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1847
    iget-object v3, v0, La/a/a/c;->f:[B

    const/16 v4, 0x50

    iget v7, v0, La/a/a/c;->c:I

    invoke-static {v3, v1, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1849
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    iget v0, v0, La/a/a/c;->c:I

    add-int/lit8 v0, v0, 0x50

    invoke-virtual {v3, v6, v2, v0}, La/b/a/b;->a([B[BI)I

    move-result v0

    .line 1850
    if-le v0, v12, :cond_2

    .line 1853
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1841
    :cond_6b
    iget-object v3, v0, La/a/a/c;->a:[B

    iget-object v4, v0, La/a/a/c;->a:[B

    array-length v4, v4

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 1858
    :sswitch_2d
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1859
    aput-byte v13, v6, v2

    .line 1860
    const/16 v0, -0x7e

    aput-byte v0, v6, v13

    .line 1861
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1862
    if-le v0, v12, :cond_2

    .line 1865
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v1}, La/b/a/b;->a(I)B

    move-result v3

    invoke-static {v0, v3}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 1866
    if-gez v0, :cond_6c

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] check camera reset status fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1870
    :cond_6c
    const/4 v3, 0x3

    if-eq v0, v3, :cond_6d

    if-ne v0, v2, :cond_6e

    .line 1871
    :cond_6d
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1874
    :cond_6e
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1879
    :sswitch_2e
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1880
    aput-byte v13, v6, v2

    .line 1881
    aput-byte v2, v6, v13

    .line 1882
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1883
    if-le v0, v12, :cond_2

    .line 1887
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v1}, La/b/a/b;->a(I)B

    move-result v3

    invoke-static {v0, v3}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 1888
    if-gez v0, :cond_6f

    .line 1889
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check live view status result fail, set core status from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v2}, La/a/a/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to open communication."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1891
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v11}, La/a/a/a;->b(La/a/a/a;I)V

    goto/16 :goto_2

    .line 1895
    :cond_6f
    const/4 v3, 0x3

    if-eq v0, v3, :cond_70

    if-ne v0, v2, :cond_71

    .line 1896
    :cond_70
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1900
    :cond_71
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1901
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 1902
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/4 v2, 0x6

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;I)V

    goto/16 :goto_2

    .line 1908
    :sswitch_2f
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1909
    aput-byte v13, v6, v2

    .line 1910
    aput-byte v13, v6, v13

    .line 1911
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1912
    if-le v0, v12, :cond_2

    .line 1916
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v1}, La/b/a/b;->a(I)B

    move-result v3

    invoke-static {v0, v3}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 1917
    if-gez v0, :cond_72

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] check stop live view status fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1921
    :cond_72
    const/4 v3, 0x3

    if-eq v0, v3, :cond_73

    if-ne v0, v2, :cond_74

    .line 1922
    :cond_73
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1926
    :cond_74
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1931
    :sswitch_30
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1932
    aput-byte v13, v6, v2

    .line 1933
    const/4 v0, 0x3

    aput-byte v0, v6, v13

    .line 1934
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1935
    if-le v0, v12, :cond_2

    .line 1939
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v1}, La/b/a/b;->a(I)B

    move-result v3

    invoke-static {v0, v3}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 1940
    if-gez v0, :cond_75

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] check start recording status fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1942
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 1943
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/4 v2, 0x6

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;I)V

    goto/16 :goto_2

    .line 1947
    :cond_75
    const/4 v3, 0x3

    if-eq v0, v3, :cond_76

    if-ne v0, v2, :cond_77

    .line 1948
    :cond_76
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1952
    :cond_77
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1957
    :sswitch_31
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1958
    aput-byte v13, v6, v2

    .line 1959
    aput-byte v11, v6, v13

    .line 1960
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1961
    if-le v0, v12, :cond_2

    .line 1965
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v1}, La/b/a/b;->a(I)B

    move-result v3

    invoke-static {v0, v3}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 1966
    if-gez v0, :cond_78

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] check stop recording status fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 1968
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 1969
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/4 v2, 0x6

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;I)V

    goto/16 :goto_2

    .line 1973
    :cond_78
    const/4 v3, 0x3

    if-eq v0, v3, :cond_79

    if-ne v0, v2, :cond_7a

    .line 1974
    :cond_79
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1977
    :cond_7a
    if-nez v0, :cond_2

    .line 1978
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 1979
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 1980
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/4 v2, 0x6

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;I)V

    goto/16 :goto_2

    .line 1987
    :sswitch_32
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 1988
    aput-byte v13, v6, v2

    .line 1989
    const/4 v0, 0x5

    aput-byte v0, v6, v13

    .line 1990
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 1991
    if-le v0, v12, :cond_2

    .line 1995
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    .line 1996
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v13}, La/b/a/b;->a(I)B

    move-result v3

    .line 1997
    iget-object v4, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v4, v0}, La/a/a/a;->b(La/a/a/a;B)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1998
    const-string v0, "play_shutter_sound"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;Z)V

    .line 1999
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2002
    :cond_7b
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    .line 2004
    iget-object v4, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v4}, La/a/a/a;->g(La/a/a/a;)Z

    move-result v4

    if-nez v4, :cond_7f

    if-nez v3, :cond_7f

    .line 2005
    iget-object v4, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v4, v2}, La/a/a/a;->b(La/a/a/a;Z)Z

    .line 2006
    const-string v4, "play_shutter_sound"

    invoke-virtual {v5, v4, v2}, La/c/a;->a(Ljava/lang/String;Z)V

    .line 2012
    :goto_a
    if-nez v0, :cond_82

    .line 2013
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->h(La/a/a/a;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 2014
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0, v2}, La/a/a/a;->c(La/a/a/a;Z)Z

    .line 2015
    new-instance v4, La/a/a/e;

    invoke-direct {v4}, La/a/a/e;-><init>()V

    .line 2016
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, La/b/a/b;->a(I)B

    move-result v2

    .line 2017
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, La/b/a/b;->a(I)B

    move-result v6

    move v0, v1

    .line 2019
    :goto_b
    const/16 v7, 0x40

    if-ge v0, v7, :cond_7c

    .line 2020
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v7

    add-int/lit8 v8, v0, 0x8

    invoke-virtual {v7, v8}, La/b/a/b;->a(I)B

    move-result v7

    if-nez v7, :cond_80

    .line 2024
    :cond_7c
    if-eqz v0, :cond_7d

    .line 2025
    new-instance v7, Ljava/lang/String;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9, v0}, La/b/a/b;->a(II)[B

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v7, v4, La/a/a/e;->b:Ljava/lang/String;

    .line 2027
    :cond_7d
    iput v2, v4, La/a/a/e;->a:I

    .line 2029
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    .line 2030
    const-string v0, "stored_pic_num"

    invoke-virtual {v5, v0, v6}, La/c/a;->a(Ljava/lang/String;I)V

    .line 2031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CaptureDBG] stored_pic_num = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 2032
    const-string v0, "PictureStatus"

    new-instance v2, La/c/a$a;

    invoke-direct {v2, v4}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    .line 2034
    if-eqz v3, :cond_7e

    .line 2035
    const-string v0, "Exposure not ready at thumbnail ready"

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 2037
    :cond_7e
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->g(La/a/a/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2038
    const-string v0, "NO SHUTTER SOUND!"

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2009
    :cond_7f
    const-string v4, "play_shutter_sound"

    invoke-virtual {v5, v4, v1}, La/c/a;->a(Ljava/lang/String;Z)V

    goto/16 :goto_a

    .line 2019
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2042
    :cond_81
    const-string v0, "play_shutter_sound"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;Z)V

    .line 2043
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2046
    :cond_82
    const/4 v3, 0x3

    if-ne v0, v3, :cond_84

    .line 2047
    const-string v0, "play_shutter_sound"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;Z)V

    .line 2048
    const-string v0, "result"

    invoke-virtual {v5, v0, v11}, La/c/a;->a(Ljava/lang/String;I)V

    .line 2049
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_83

    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    if-ne v0, v11, :cond_2

    .line 2050
    :cond_83
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/4 v2, 0x6

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;I)V

    goto/16 :goto_2

    .line 2053
    :cond_84
    if-ne v0, v2, :cond_85

    .line 2054
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2057
    :cond_85
    const-string v0, "[UsbCoreMsg] Error: check capture status get fail"

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 2058
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_86

    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    if-ne v0, v11, :cond_2

    .line 2059
    :cond_86
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    const/4 v2, 0x6

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;I)V

    goto/16 :goto_2

    .line 2066
    :sswitch_33
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 2067
    aput-byte v13, v6, v2

    .line 2068
    const/16 v0, -0x7d

    aput-byte v0, v6, v13

    .line 2069
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 2070
    if-le v0, v12, :cond_2

    .line 2074
    iget-object v0, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v1}, La/b/a/b;->a(I)B

    move-result v3

    invoke-static {v0, v3}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v0

    .line 2075
    if-gez v0, :cond_87

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UsbCoreMsg] check enter FW upgrade mode status fail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, La/b/a/b;->a(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2079
    :cond_87
    const/4 v3, 0x3

    if-eq v0, v3, :cond_88

    if-ne v0, v2, :cond_89

    .line 2080
    :cond_88
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2084
    :cond_89
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2089
    :sswitch_34
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 2090
    aput-byte v13, v6, v2

    .line 2091
    const/16 v0, -0x7c

    aput-byte v0, v6, v13

    .line 2092
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 2093
    if-le v0, v12, :cond_2

    .line 2097
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    .line 2098
    iget-object v3, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v3, v0}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v3

    .line 2099
    if-gez v3, :cond_8a

    .line 2100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCoreMsg] check exam FW status fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 2101
    const-string v2, "result"

    invoke-virtual {v5, v2, v0}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2104
    :cond_8a
    const/4 v0, 0x3

    if-eq v3, v0, :cond_8b

    if-ne v3, v2, :cond_8c

    .line 2105
    :cond_8b
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2108
    :cond_8c
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2113
    :sswitch_35
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 2114
    aput-byte v13, v6, v2

    .line 2115
    const/16 v0, -0x7f

    aput-byte v0, v6, v13

    .line 2116
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v6}, La/b/a/b;->a([B)I

    move-result v0

    .line 2117
    if-le v0, v12, :cond_2

    .line 2121
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, La/b/a/b;->a(I)B

    move-result v0

    .line 2122
    iget-object v3, p0, La/a/a/a$2;->a:La/a/a/a;

    invoke-static {v3, v0}, La/a/a/a;->a(La/a/a/a;B)I

    move-result v3

    .line 2123
    if-gez v3, :cond_8d

    .line 2124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCoreMsg] check update FW status fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 2125
    const-string v2, "result"

    invoke-virtual {v5, v2, v0}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2128
    :cond_8d
    const/4 v0, 0x3

    if-eq v3, v0, :cond_8e

    if-ne v3, v2, :cond_8f

    .line 2129
    :cond_8e
    const-string v0, "result"

    invoke-virtual {v5, v0, v2}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2133
    :cond_8f
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2138
    :sswitch_36
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 2139
    aput-byte v11, v6, v2

    .line 2140
    const/16 v0, -0x80

    aput-byte v0, v6, v13

    .line 2141
    const/16 v0, 0x48

    aput-byte v0, v6, v11

    .line 2143
    const/16 v0, 0x48

    new-array v0, v0, [B

    .line 2144
    const-string v2, "file_name"

    invoke-virtual {v7, v2}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_90

    .line 2150
    :cond_90
    iget-object v2, p0, La/a/a/a$2;->a:La/a/a/a;

    const-string v3, "data_size"

    invoke-virtual {v7, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, La/a/a/a;->d(La/a/a/a;I)[B

    move-result-object v2

    invoke-static {v2, v1, v0, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2151
    iget-object v2, p0, La/a/a/a$2;->a:La/a/a/a;

    const-string v3, "check_sum"

    invoke-virtual {v7, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, La/a/a/a;->d(La/a/a/a;I)[B

    move-result-object v2

    invoke-static {v2, v1, v0, v11, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2152
    const-string v2, "file_name"

    invoke-virtual {v7, v2}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_91

    .line 2153
    const-string v2, "file_name"

    invoke-virtual {v7, v2}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0x40

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2159
    :goto_c
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    const/16 v3, 0x48

    invoke-virtual {v2, v6, v0, v3}, La/b/a/b;->a([B[BI)I

    move-result v0

    .line 2160
    if-le v0, v12, :cond_2

    .line 2163
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2156
    :cond_91
    const-string v2, "file_name"

    invoke-virtual {v7, v2}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x8

    const-string v4, "file_name"

    invoke-virtual {v7, v4}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 2168
    :sswitch_37
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 2169
    aput-byte v11, v6, v2

    .line 2170
    const/16 v0, -0x7e

    aput-byte v0, v6, v13

    .line 2171
    const/16 v0, 0x40

    aput-byte v0, v6, v11

    .line 2173
    const-string v0, "sha256"

    invoke-virtual {v7, v0}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 2174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_92

    .line 2175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsbCore] Invalid sha256 value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2179
    :cond_92
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v3, 0x40

    invoke-virtual {v2, v6, v0, v3}, La/b/a/b;->a([B[BI)I

    move-result v0

    .line 2180
    if-le v0, v12, :cond_2

    .line 2183
    const-string v0, "result"

    invoke-virtual {v5, v0, v1}, La/c/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2196
    :sswitch_38
    const/16 v0, 0x7a

    aput-byte v0, v6, v1

    .line 2197
    const/16 v0, -0x10

    aput-byte v0, v6, v2

    .line 2198
    const/16 v0, 0x10

    aput-byte v0, v6, v13

    .line 2201
    const/16 v2, 0x3e8

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Throughput read test Start, test time: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 2204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v0, v1

    .line 2205
    :goto_d
    if-ge v0, v2, :cond_93

    .line 2206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2207
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v6}, La/b/a/b;->a([B)I

    .line 2208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2205
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2211
    :cond_93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throughput read test End, cost time: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2217
    :sswitch_39
    const/16 v0, 0x7b

    aput-byte v0, v6, v1

    .line 2218
    const/16 v0, -0x10

    aput-byte v0, v6, v2

    .line 2219
    const/16 v0, 0x10

    aput-byte v0, v6, v13

    .line 2220
    aput-byte v1, v6, v11

    .line 2221
    const/4 v0, 0x5

    aput-byte v1, v6, v0

    .line 2222
    const/4 v0, 0x6

    aput-byte v2, v6, v0

    .line 2223
    const/4 v0, 0x7

    aput-byte v1, v6, v0

    .line 2225
    const/high16 v0, 0x10000

    new-array v2, v0, [B

    .line 2227
    const/16 v3, 0x3e8

    .line 2229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throughput write test Start, test time: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 2230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v0, v1

    .line 2231
    :goto_e
    if-ge v0, v3, :cond_94

    .line 2232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2233
    invoke-static {}, La/a/a/a;->f()La/b/a/b;

    move-result-object v4

    const/high16 v7, 0x10000

    invoke-virtual {v4, v6, v2, v7}, La/b/a/b;->a([B[BI)I

    move-result v4

    .line 2234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2236
    if-eqz v4, :cond_95

    .line 2237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test fail! Fail at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 2241
    :cond_94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throughput write test End, cost time: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2231
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_96
    move v0, v1

    goto/16 :goto_5

    .line 588
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x480a -> :sswitch_1
        0x480b -> :sswitch_2
        0x480c -> :sswitch_3
        0x480d -> :sswitch_4
        0x4810 -> :sswitch_5
        0x4811 -> :sswitch_6
        0x4812 -> :sswitch_7
        0x4813 -> :sswitch_8
        0x4814 -> :sswitch_9
        0x4815 -> :sswitch_a
        0x4817 -> :sswitch_f
        0x4818 -> :sswitch_b
        0x4819 -> :sswitch_c
        0x481a -> :sswitch_d
        0x481b -> :sswitch_e
        0x4820 -> :sswitch_10
        0x4821 -> :sswitch_11
        0x4822 -> :sswitch_12
        0x4830 -> :sswitch_13
        0x4831 -> :sswitch_15
        0x4832 -> :sswitch_16
        0x4833 -> :sswitch_17
        0x4834 -> :sswitch_14
        0x4840 -> :sswitch_18
        0x4841 -> :sswitch_19
        0x4842 -> :sswitch_1a
        0x4843 -> :sswitch_1b
        0x4844 -> :sswitch_1c
        0x4845 -> :sswitch_1d
        0x4847 -> :sswitch_21
        0x4848 -> :sswitch_1e
        0x4849 -> :sswitch_1f
        0x484a -> :sswitch_20
        0x4850 -> :sswitch_22
        0x4851 -> :sswitch_23
        0x4852 -> :sswitch_24
        0x4853 -> :sswitch_25
        0x4854 -> :sswitch_26
        0x4855 -> :sswitch_27
        0x4856 -> :sswitch_36
        0x4857 -> :sswitch_2b
        0x4858 -> :sswitch_28
        0x4859 -> :sswitch_29
        0x485a -> :sswitch_2a
        0x485b -> :sswitch_37
        0x4860 -> :sswitch_2c
        0x4870 -> :sswitch_2d
        0x4871 -> :sswitch_2e
        0x4872 -> :sswitch_2f
        0x4873 -> :sswitch_30
        0x4874 -> :sswitch_31
        0x4875 -> :sswitch_32
        0x4877 -> :sswitch_33
        0x4878 -> :sswitch_34
        0x4879 -> :sswitch_35
        0x48f0 -> :sswitch_0
        0x48f1 -> :sswitch_0
        0x48f2 -> :sswitch_38
        0x48f3 -> :sswitch_39
    .end sparse-switch
.end method
