.class public Lcom/b/a/c;
.super Lcom/c/a/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static a:Lcom/c/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/b/a/c;

    invoke-static {v0}, Lcom/c/a/a/e;->a(Ljava/lang/Class;)Lcom/c/a/a/e;

    move-result-object v0

    sput-object v0, Lcom/b/a/c;->a:Lcom/c/a/a/e;

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 68
    new-array v1, v3, [B

    .line 69
    if-eqz p0, :cond_0

    .line 70
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 74
    :cond_0
    return-object v1

    .line 71
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/b/a/c;->e:Lcom/c/a/e;

    invoke-interface {v0}, Lcom/c/a/e;->close()V

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "model("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/c;->e:Lcom/c/a/e;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
