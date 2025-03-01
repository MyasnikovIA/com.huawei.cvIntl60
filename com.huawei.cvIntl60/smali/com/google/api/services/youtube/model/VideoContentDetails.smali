.class public final Lcom/google/api/services/youtube/model/VideoContentDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private caption:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private contentRating:Lcom/google/api/services/youtube/model/ContentRating;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private countryRestriction:Lcom/google/api/services/youtube/model/AccessPolicy;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private definition:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private dimension:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private duration:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private licensedContent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private projection:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private regionRestriction:Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;
    .annotation runtime Lcom/google/api/client/util/Key;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoContentDetails;->clone()Lcom/google/api/services/youtube/model/VideoContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoContentDetails;->clone()Lcom/google/api/services/youtube/model/VideoContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoContentDetails;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoContentDetails;->clone()Lcom/google/api/services/youtube/model/VideoContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getContentRating()Lcom/google/api/services/youtube/model/ContentRating;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->contentRating:Lcom/google/api/services/youtube/model/ContentRating;

    return-object v0
.end method

.method public getCountryRestriction()Lcom/google/api/services/youtube/model/AccessPolicy;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->countryRestriction:Lcom/google/api/services/youtube/model/AccessPolicy;

    return-object v0
.end method

.method public getDefinition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->definition:Ljava/lang/String;

    return-object v0
.end method

.method public getDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->dimension:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getLicensedContent()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->licensedContent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProjection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->projection:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionRestriction()Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->regionRestriction:Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoContentDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoContentDetails;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 1

    .prologue
    .line 278
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoContentDetails;

    return-object v0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->caption:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setContentRating(Lcom/google/api/services/youtube/model/ContentRating;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->contentRating:Lcom/google/api/services/youtube/model/ContentRating;

    .line 138
    return-object p0
.end method

.method public setCountryRestriction(Lcom/google/api/services/youtube/model/AccessPolicy;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->countryRestriction:Lcom/google/api/services/youtube/model/AccessPolicy;

    .line 157
    return-object p0
.end method

.method public setDefinition(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->definition:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public setDimension(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->dimension:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->duration:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public setLicensedContent(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->licensedContent:Ljava/lang/Boolean;

    .line 235
    return-object p0
.end method

.method public setProjection(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->projection:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public setRegionRestriction(Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;)Lcom/google/api/services/youtube/model/VideoContentDetails;
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoContentDetails;->regionRestriction:Lcom/google/api/services/youtube/model/VideoContentDetailsRegionRestriction;

    .line 273
    return-object p0
.end method
