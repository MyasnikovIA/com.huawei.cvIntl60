.class public Lcom/google/api/services/youtube/YouTube$I18nLanguages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "I18nLanguages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .prologue
    .line 5456
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$I18nLanguages;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5476
    return-void
.end method


# virtual methods
.method public list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;
    .locals 2

    .prologue
    .line 5471
    new-instance v0, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$I18nLanguages$List;-><init>(Lcom/google/api/services/youtube/YouTube$I18nLanguages;Ljava/lang/String;)V

    .line 5472
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$I18nLanguages;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5473
    return-object v0
.end method
