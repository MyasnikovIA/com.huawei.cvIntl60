.class Lui_Controller/ui_Liveview/UI_LiveViewController$62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/r/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Liveview/UI_LiveViewController;


# direct methods
.method constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;)V
    .locals 0

    .prologue
    .line 4886
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5

    .prologue
    .line 4899
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    iput-wide v2, v0, Lui_Controller/b/k;->aC:J

    .line 4900
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const/16 v1, 0x2220

    invoke-virtual {v0, v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    .line 4901
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/16 v9, 0x2217

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4906
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    const-string v1, "*****Save file done*****"

    invoke-static {v0, v1, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Ljava/lang/String;I)V

    .line 4912
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ae(Lui_Controller/ui_Liveview/UI_LiveViewController;)V

    .line 4914
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video durarion2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v2, v2, Lui_Controller/b/k;->aD:J

    iget-object v4, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v4, v4, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-wide v4, v4, Lui_Controller/b/k;->aC:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Ljava/lang/String;I)V

    .line 4916
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x131

    if-eq v0, v1, :cond_0

    .line 4918
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current mode not correct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Ljava/lang/String;I)V

    .line 4956
    :goto_0
    return-void

    .line 4922
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget v0, v0, Lui_Controller/b/k;->S:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 4924
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v9}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_0

    .line 4927
    :cond_1
    if-eqz p1, :cond_3

    .line 4928
    new-instance v0, Ljava/io/File;

    sget-object v1, Lui_Controller/a/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4929
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4930
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4933
    :cond_2
    :try_start_0
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1}, LGeneralFunction/e/e;->c()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/d;->e(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lui_Controller/a/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "QuickView.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LGeneralFunction/g/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4937
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->ag()V

    .line 4950
    :goto_2
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v0, v9}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(I)V

    goto :goto_0

    .line 4934
    :catch_0
    move-exception v0

    .line 4935
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 4940
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v0}, LGeneralFunction/e/e;->c()I

    move-result v0

    .line 4941
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v1, v0, v6}, LGeneralFunction/e/e;->a(II)V

    .line 4942
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->x()I

    .line 4944
    invoke-static {}, LGeneralFunction/m/a;->a()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 4945
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    .line 4948
    :goto_3
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, v1, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v1, v1, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v1, v1, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v2, v2, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    goto :goto_2

    .line 4947
    :cond_4
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    goto :goto_3
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 4890
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnMuxerInitial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Ljava/lang/String;I)V

    .line 4891
    new-instance v0, La/c/a;

    const/16 v1, 0x2226

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 4892
    const-string v1, "muxerInitResult"

    invoke-virtual {v0, v1, p1}, La/c/a;->a(Ljava/lang/String;Z)V

    .line 4893
    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$62;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-virtual {v1, v0}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(La/c/a;)V

    .line 4894
    return-void
.end method
