.class final Lcom/a/a/d/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/h;


# instance fields
.field private final b:Lcom/a/a/d/h;

.field private final c:Lcom/a/a/d/h;


# direct methods
.method public constructor <init>(Lcom/a/a/d/h;Lcom/a/a/d/h;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/a/a/d/b/b;->b:Lcom/a/a/d/h;

    .line 16
    iput-object p2, p0, Lcom/a/a/d/b/b;->c:Lcom/a/a/d/h;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/a/a/d/b/b;->b:Lcom/a/a/d/h;

    invoke-interface {v0, p1}, Lcom/a/a/d/h;->a(Ljava/security/MessageDigest;)V

    .line 50
    iget-object v0, p0, Lcom/a/a/d/b/b;->c:Lcom/a/a/d/h;

    invoke-interface {v0, p1}, Lcom/a/a/d/h;->a(Ljava/security/MessageDigest;)V

    .line 51
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 25
    instance-of v1, p1, Lcom/a/a/d/b/b;

    if-eqz v1, :cond_0

    .line 26
    check-cast p1, Lcom/a/a/d/b/b;

    .line 27
    iget-object v1, p0, Lcom/a/a/d/b/b;->b:Lcom/a/a/d/h;

    iget-object v2, p1, Lcom/a/a/d/b/b;->b:Lcom/a/a/d/h;

    invoke-interface {v1, v2}, Lcom/a/a/d/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/d/b/b;->c:Lcom/a/a/d/h;

    iget-object v2, p1, Lcom/a/a/d/b/b;->c:Lcom/a/a/d/h;

    invoke-interface {v1, v2}, Lcom/a/a/d/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 29
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/a/a/d/b/b;->b:Lcom/a/a/d/h;

    invoke-interface {v0}, Lcom/a/a/d/h;->hashCode()I

    move-result v0

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/a/d/b/b;->c:Lcom/a/a/d/h;

    invoke-interface {v1}, Lcom/a/a/d/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/b;->b:Lcom/a/a/d/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/b;->c:Lcom/a/a/d/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
