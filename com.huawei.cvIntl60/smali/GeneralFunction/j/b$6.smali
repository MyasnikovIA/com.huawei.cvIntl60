.class LGeneralFunction/j/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LThirdParty/b/b$a;


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
    .line 735
    iput-object p1, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 12

    .prologue
    const/16 v1, 0x2aa6

    const-wide/16 v10, 0x0

    .line 739
    packed-switch p1, :pswitch_data_0

    .line 844
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 743
    :pswitch_1
    if-nez p2, :cond_0

    .line 745
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a5b

    invoke-virtual {v0, v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 755
    :pswitch_2
    if-nez p2, :cond_1

    .line 757
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a55

    invoke-virtual {v0, v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 761
    :cond_1
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2aa3

    invoke-virtual {v0, v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 767
    :pswitch_3
    if-nez p2, :cond_2

    .line 769
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a56

    invoke-virtual {v0, v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 773
    :cond_2
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2aa4

    invoke-virtual {v0, v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 779
    :pswitch_4
    if-nez p2, :cond_4

    .line 781
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    invoke-virtual {v0}, LThirdParty/Rtmp/a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 783
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    const/16 v1, 0x5a0

    const/16 v2, 0x2d0

    const v3, 0xac44

    sget-object v4, Lui_Controller/b/n;->c:[B

    const/16 v5, 0x1b

    const/16 v6, 0x1e

    const/high16 v7, 0x300000

    const/16 v8, 0xf

    invoke-virtual/range {v0 .. v8}, LThirdParty/Rtmp/a;->a(III[BIIII)V

    .line 793
    invoke-static {}, LThirdParty/Rtmp/a;->a()LThirdParty/Rtmp/a;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, LThirdParty/Rtmp/a;->a(I)V

    .line 795
    :cond_3
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a57

    invoke-virtual {v0, v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto :goto_0

    .line 799
    :cond_4
    new-instance v0, La/c/a;

    const/16 v1, 0x2aa5

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 800
    const-string v1, "youtubeApiResult"

    invoke-virtual {v0, v1, p2}, La/c/a;->a(Ljava/lang/String;I)V

    .line 801
    iget-object v1, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v1}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v1

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    goto/16 :goto_0

    .line 807
    :pswitch_5
    if-nez p2, :cond_5

    .line 809
    invoke-static {}, LThirdParty/b/b;->a()LThirdParty/b/b;

    move-result-object v0

    const/16 v1, 0x1009

    invoke-virtual {v0, v1}, LThirdParty/b/b;->a(I)V

    goto/16 :goto_0

    .line 813
    :cond_5
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    invoke-virtual {v0, v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 819
    :pswitch_6
    if-nez p2, :cond_6

    .line 821
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a58

    invoke-virtual {v0, v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 825
    :cond_6
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    invoke-virtual {v0, v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 831
    :pswitch_7
    if-nez p2, :cond_7

    .line 833
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2a59

    invoke-virtual {v0, v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 837
    :cond_7
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v0

    const/16 v1, 0x2aa7

    invoke-virtual {v0, v1, v10, v11}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 849
    if-eqz p1, :cond_0

    .line 851
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->e(LGeneralFunction/j/b;)LGeneralFunction/j/a;

    move-result-object v0

    iput-object p1, v0, LGeneralFunction/j/a;->c:Ljava/lang/String;

    .line 852
    iget-object v0, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v0}, LGeneralFunction/j/b;->e(LGeneralFunction/j/b;)LGeneralFunction/j/a;

    move-result-object v0

    iput-object p2, v0, LGeneralFunction/j/a;->d:Ljava/lang/String;

    .line 853
    new-instance v0, La/c/a;

    const/16 v1, 0x2a5e

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 854
    const-string v1, "streamingLink"

    iget-object v2, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v2}, LGeneralFunction/j/b;->e(LGeneralFunction/j/b;)LGeneralFunction/j/a;

    move-result-object v2

    iget-object v2, v2, LGeneralFunction/j/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v1, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v1}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v1

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 861
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 866
    new-instance v0, La/c/a;

    const/16 v1, 0x2a5a

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 867
    const-string v1, "havePermission"

    invoke-virtual {v0, v1, p1}, La/c/a;->a(Ljava/lang/String;Z)V

    .line 868
    iget-object v1, p0, LGeneralFunction/j/b$6;->a:LGeneralFunction/j/b;

    invoke-static {v1}, LGeneralFunction/j/b;->a(LGeneralFunction/j/b;)Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v1

    invoke-virtual {v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 869
    return-void
.end method
