.class final Lcom/a/a/d/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/h;


# static fields
.field private static final b:Lcom/a/a/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/j/e",
            "<",
            "Ljava/lang/Class",
            "<*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/a/a/d/h;

.field private final d:Lcom/a/a/d/h;

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final h:Lcom/a/a/d/j;

.field private final i:Lcom/a/a/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/m",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/a/a/j/e;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/a/a/j/e;-><init>(I)V

    sput-object v0, Lcom/a/a/d/b/u;->b:Lcom/a/a/j/e;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/d/h;Lcom/a/a/d/h;IILcom/a/a/d/m;Ljava/lang/Class;Lcom/a/a/d/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/h;",
            "Lcom/a/a/d/h;",
            "II",
            "Lcom/a/a/d/m",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/d/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/a/a/d/b/u;->c:Lcom/a/a/d/h;

    .line 27
    iput-object p2, p0, Lcom/a/a/d/b/u;->d:Lcom/a/a/d/h;

    .line 28
    iput p3, p0, Lcom/a/a/d/b/u;->e:I

    .line 29
    iput p4, p0, Lcom/a/a/d/b/u;->f:I

    .line 30
    iput-object p5, p0, Lcom/a/a/d/b/u;->i:Lcom/a/a/d/m;

    .line 31
    iput-object p6, p0, Lcom/a/a/d/b/u;->g:Ljava/lang/Class;

    .line 32
    iput-object p7, p0, Lcom/a/a/d/b/u;->h:Lcom/a/a/d/j;

    .line 33
    return-void
.end method

.method private a()[B
    .locals 3

    .prologue
    .line 78
    sget-object v0, Lcom/a/a/d/b/u;->b:Lcom/a/a/j/e;

    iget-object v1, p0, Lcom/a/a/d/b/u;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/a/a/j/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 79
    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/a/a/d/b/u;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/b/u;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 81
    sget-object v1, Lcom/a/a/d/b/u;->b:Lcom/a/a/j/e;

    iget-object v2, p0, Lcom/a/a/d/b/u;->g:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Lcom/a/a/j/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 2

    .prologue
    .line 66
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/a/a/d/b/u;->e:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/a/a/d/b/u;->f:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/a/a/d/b/u;->d:Lcom/a/a/d/h;

    invoke-interface {v1, p1}, Lcom/a/a/d/h;->a(Ljava/security/MessageDigest;)V

    .line 68
    iget-object v1, p0, Lcom/a/a/d/b/u;->c:Lcom/a/a/d/h;

    invoke-interface {v1, p1}, Lcom/a/a/d/h;->a(Ljava/security/MessageDigest;)V

    .line 69
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 70
    iget-object v0, p0, Lcom/a/a/d/b/u;->i:Lcom/a/a/d/m;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/a/a/d/b/u;->i:Lcom/a/a/d/m;

    invoke-interface {v0, p1}, Lcom/a/a/d/m;->a(Ljava/security/MessageDigest;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/b/u;->h:Lcom/a/a/d/j;

    invoke-virtual {v0, p1}, Lcom/a/a/d/j;->a(Ljava/security/MessageDigest;)V

    .line 74
    invoke-direct {p0}, Lcom/a/a/d/b/u;->a()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 75
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    instance-of v1, p1, Lcom/a/a/d/b/u;

    if-eqz v1, :cond_0

    .line 38
    check-cast p1, Lcom/a/a/d/b/u;

    .line 39
    iget v1, p0, Lcom/a/a/d/b/u;->f:I

    iget v2, p1, Lcom/a/a/d/b/u;->f:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/a/a/d/b/u;->e:I

    iget v2, p1, Lcom/a/a/d/b/u;->e:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/a/a/d/b/u;->i:Lcom/a/a/d/m;

    iget-object v2, p1, Lcom/a/a/d/b/u;->i:Lcom/a/a/d/m;

    .line 40
    invoke-static {v1, v2}, Lcom/a/a/j/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/d/b/u;->g:Ljava/lang/Class;

    iget-object v2, p1, Lcom/a/a/d/b/u;->g:Ljava/lang/Class;

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/d/b/u;->c:Lcom/a/a/d/h;

    iget-object v2, p1, Lcom/a/a/d/b/u;->c:Lcom/a/a/d/h;

    .line 42
    invoke-interface {v1, v2}, Lcom/a/a/d/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/d/b/u;->d:Lcom/a/a/d/h;

    iget-object v2, p1, Lcom/a/a/d/b/u;->d:Lcom/a/a/d/h;

    .line 43
    invoke-interface {v1, v2}, Lcom/a/a/d/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/d/b/u;->h:Lcom/a/a/d/j;

    iget-object v2, p1, Lcom/a/a/d/b/u;->h:Lcom/a/a/d/j;

    .line 44
    invoke-virtual {v1, v2}, Lcom/a/a/d/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 46
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/a/a/d/b/u;->c:Lcom/a/a/d/h;

    invoke-interface {v0}, Lcom/a/a/d/h;->hashCode()I

    move-result v0

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/a/d/b/u;->d:Lcom/a/a/d/h;

    invoke-interface {v1}, Lcom/a/a/d/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/a/a/d/b/u;->e:I

    add-int/2addr v0, v1

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/a/a/d/b/u;->f:I

    add-int/2addr v0, v1

    .line 55
    iget-object v1, p0, Lcom/a/a/d/b/u;->i:Lcom/a/a/d/m;

    if-eqz v1, :cond_0

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/a/d/b/u;->i:Lcom/a/a/d/m;

    invoke-interface {v1}, Lcom/a/a/d/m;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/a/d/b/u;->g:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/a/d/b/u;->h:Lcom/a/a/d/j;

    invoke-virtual {v1}, Lcom/a/a/d/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/u;->c:Lcom/a/a/d/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/u;->d:Lcom/a/a/d/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/d/b/u;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/d/b/u;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/u;->g:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/u;->i:Lcom/a/a/d/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/b/u;->h:Lcom/a/a/d/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
