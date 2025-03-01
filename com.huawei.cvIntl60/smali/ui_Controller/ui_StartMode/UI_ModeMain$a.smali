.class Lui_Controller/ui_StartMode/UI_ModeMain$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_StartMode/UI_ModeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_StartMode/UI_ModeMain;

.field private b:I


# direct methods
.method constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;I)V
    .locals 1

    .prologue
    .line 623
    iput-object p1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 622
    const/16 v0, 0x3e8

    iput v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->b:I

    .line 624
    iput p2, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->b:I

    .line 625
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 628
    .line 679
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->g(Lui_Controller/ui_StartMode/UI_ModeMain;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 681
    new-instance v11, Ljava/io/FileReader;

    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->g(Lui_Controller/ui_StartMode/UI_ModeMain;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 682
    :try_start_1
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 684
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 685
    if-nez v0, :cond_2

    .line 687
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, LGeneralFunction/b/a;

    iget-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {v1, v2}, LGeneralFunction/b/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;LGeneralFunction/b/a;)LGeneralFunction/b/a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v8

    move-object v1, v10

    move-object v3, v11

    .line 729
    :goto_0
    if-eqz v1, :cond_0

    .line 732
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 738
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 741
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 747
    :cond_1
    :goto_2
    if-eqz v0, :cond_8

    .line 748
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->h(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/b/a;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iget v2, v2, Lui_Controller/b/h;->f:I

    invoke-static {v0, v1, v2}, Lui_Controller/ui_StartMode/d;->a(Landroid/content/Context;LGeneralFunction/b/a;I)V

    .line 756
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->h(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/b/a;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/b/a;->b()V

    .line 761
    :goto_3
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->h(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/b/a;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, LGeneralFunction/b/a;->a(ZZ)V

    .line 762
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->h(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/b/a;

    move-result-object v0

    invoke-virtual {v0}, LGeneralFunction/b/a;->a()V

    .line 764
    :try_start_5
    iget v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 765
    :catch_0
    move-exception v0

    .line 766
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 689
    :cond_2
    :try_start_6
    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v9

    move-object v1, v10

    move-object v3, v11

    .line 690
    goto :goto_0

    .line 691
    :cond_3
    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 695
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 696
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 698
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    .line 700
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, LGeneralFunction/b/a;

    iget-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {v1, v2}, LGeneralFunction/b/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;LGeneralFunction/b/a;)LGeneralFunction/b/a;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_4
    move v0, v8

    move-object v1, v10

    move-object v3, v11

    .line 718
    goto :goto_0

    .line 705
    :cond_5
    :try_start_7
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-wide v4

    .line 711
    :goto_5
    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-wide v6

    .line 716
    :goto_6
    :try_start_9
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, LGeneralFunction/b/a;

    iget-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct/range {v1 .. v7}, LGeneralFunction/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;DJ)V

    invoke-static {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;LGeneralFunction/b/a;)LGeneralFunction/b/a;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 726
    :catch_1
    move-exception v0

    .line 727
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v8

    move-object v1, v10

    move-object v3, v11

    goto/16 :goto_0

    .line 706
    :catch_2
    move-exception v0

    .line 707
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 708
    invoke-static {}, LGeneralFunction/b/a;->c()D

    move-result-wide v4

    goto :goto_5

    .line 712
    :catch_3
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 714
    invoke-static {}, LGeneralFunction/b/a;->d()J

    move-result-wide v6

    goto :goto_6

    .line 719
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, LGeneralFunction/b/a;

    iget-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {v1, v2}, LGeneralFunction/b/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;LGeneralFunction/b/a;)LGeneralFunction/b/a;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    move v0, v8

    move-object v1, v10

    move-object v3, v11

    goto/16 :goto_0

    .line 724
    :cond_7
    :try_start_b
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    new-instance v1, LGeneralFunction/b/a;

    iget-object v3, p0, Lui_Controller/ui_StartMode/UI_ModeMain$a;->a:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-direct {v1, v3}, LGeneralFunction/b/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/ui_StartMode/UI_ModeMain;LGeneralFunction/b/a;)LGeneralFunction/b/a;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    move v0, v8

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_0

    .line 734
    :catch_4
    move-exception v1

    .line 735
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 743
    :catch_5
    move-exception v1

    .line 744
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 752
    :cond_8
    return-void

    .line 726
    :catch_6
    move-exception v0

    move-object v10, v2

    move-object v11, v2

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v10, v2

    goto :goto_7
.end method
