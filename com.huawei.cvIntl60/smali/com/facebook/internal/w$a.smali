.class public Lcom/facebook/internal/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/facebook/internal/w$c;

.field private f:Landroid/os/Bundle;

.field private g:Lcom/facebook/AccessToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/w$a;->g:Lcom/facebook/AccessToken;

    .line 697
    invoke-static {}, Lcom/facebook/AccessToken;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    invoke-static {p1}, Lcom/facebook/internal/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 699
    if-eqz v0, :cond_1

    .line 700
    iput-object v0, p0, Lcom/facebook/internal/w$a;->b:Ljava/lang/String;

    .line 707
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/w$a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 708
    return-void

    .line 702
    :cond_1
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Attempted to create a builder without a valid access token or a valid default Application ID."

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    if-nez p2, :cond_0

    .line 721
    invoke-static {p1}, Lcom/facebook/internal/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 723
    :cond_0
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iput-object p2, p0, Lcom/facebook/internal/w$a;->b:Ljava/lang/String;

    .line 726
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/internal/w$a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 727
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 793
    iput-object p1, p0, Lcom/facebook/internal/w$a;->a:Landroid/content/Context;

    .line 794
    iput-object p2, p0, Lcom/facebook/internal/w$a;->c:Ljava/lang/String;

    .line 795
    if-eqz p3, :cond_0

    .line 796
    iput-object p3, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/internal/w$c;)Lcom/facebook/internal/w$a;
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/facebook/internal/w$a;->e:Lcom/facebook/internal/w$c;

    .line 748
    return-object p0
.end method

.method public a()Lcom/facebook/internal/w;
    .locals 5

    .prologue
    .line 758
    iget-object v0, p0, Lcom/facebook/internal/w$a;->g:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/internal/w$a;->g:Lcom/facebook/AccessToken;

    .line 761
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->k()Ljava/lang/String;

    move-result-object v2

    .line 759
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/internal/w$a;->g:Lcom/facebook/AccessToken;

    .line 764
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->d()Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :goto_0
    iget-object v0, p0, Lcom/facebook/internal/w$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/internal/w$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    iget v3, p0, Lcom/facebook/internal/w$a;->d:I

    iget-object v4, p0, Lcom/facebook/internal/w$a;->e:Lcom/facebook/internal/w$c;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/internal/w;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/w$c;)Lcom/facebook/internal/w;

    move-result-object v0

    return-object v0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/internal/w$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/facebook/internal/w$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/facebook/internal/w$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/facebook/internal/w$a;->d:I

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/facebook/internal/w$a;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public f()Lcom/facebook/internal/w$c;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/facebook/internal/w$a;->e:Lcom/facebook/internal/w$c;

    return-object v0
.end method
