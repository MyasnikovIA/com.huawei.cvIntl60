.class public LThirdParty/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/api/services/youtube/model/LiveBroadcast;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, LThirdParty/b/a;->a:Lcom/google/api/services/youtube/model/LiveBroadcast;

    invoke-virtual {v0}, Lcom/google/api/services/youtube/model/LiveBroadcast;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/api/services/youtube/model/LiveBroadcast;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, LThirdParty/b/a;->a:Lcom/google/api/services/youtube/model/LiveBroadcast;

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, LThirdParty/b/a;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, LThirdParty/b/a;->b:Ljava/lang/String;

    return-object v0
.end method
