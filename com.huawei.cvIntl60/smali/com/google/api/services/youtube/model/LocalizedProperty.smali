.class public final Lcom/google/api/services/youtube/model/LocalizedProperty;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private defaultLanguage:Lcom/google/api/services/youtube/model/LanguageTag;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private default__:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "default"
    .end annotation
.end field

.field private localized:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/LocalizedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LocalizedProperty;->clone()Lcom/google/api/services/youtube/model/LocalizedProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LocalizedProperty;->clone()Lcom/google/api/services/youtube/model/LocalizedProperty;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/LocalizedProperty;
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LocalizedProperty;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LocalizedProperty;->clone()Lcom/google/api/services/youtube/model/LocalizedProperty;

    move-result-object v0

    return-object v0
.end method

.method public getDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->default__:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultLanguage()Lcom/google/api/services/youtube/model/LanguageTag;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->defaultLanguage:Lcom/google/api/services/youtube/model/LanguageTag;

    return-object v0
.end method

.method public getLocalized()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/LocalizedString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->localized:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LocalizedProperty;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LocalizedProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LocalizedProperty;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LocalizedProperty;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LocalizedProperty;
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LocalizedProperty;

    return-object v0
.end method

.method public setDefault(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LocalizedProperty;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->default__:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public setDefaultLanguage(Lcom/google/api/services/youtube/model/LanguageTag;)Lcom/google/api/services/youtube/model/LocalizedProperty;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->defaultLanguage:Lcom/google/api/services/youtube/model/LanguageTag;

    .line 84
    return-object p0
.end method

.method public setLocalized(Ljava/util/List;)Lcom/google/api/services/youtube/model/LocalizedProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/LocalizedString;",
            ">;)",
            "Lcom/google/api/services/youtube/model/LocalizedProperty;"
        }
    .end annotation

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LocalizedProperty;->localized:Ljava/util/List;

    .line 99
    return-object p0
.end method
