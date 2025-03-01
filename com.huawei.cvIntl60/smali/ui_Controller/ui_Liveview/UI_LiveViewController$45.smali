.class Lui_Controller/ui_Liveview/UI_LiveViewController$45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/l/a$a;


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
    .line 962
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$45;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LGeneralFunction/l/c;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 965
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$45;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareResultCallback result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, LGeneralFunction/l/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Ljava/lang/String;I)V

    .line 966
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$45;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iget-object v0, v0, Lui_Controller/b/k;->aL:LGeneralFunction/l/a;

    invoke-virtual {v0, v3}, LGeneralFunction/l/a;->a(LGeneralFunction/l/a$a;)V

    .line 967
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$45;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v0, v0, Lui_Controller/ui_Liveview/UI_LiveViewController;->d:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->h:Lui_Controller/b/k;

    iput-object v3, v0, Lui_Controller/b/k;->aL:LGeneralFunction/l/a;

    .line 968
    return-void
.end method
