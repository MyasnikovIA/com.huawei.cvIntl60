.class public Lcom/b/a/a/f;
.super Lcom/c/a/a;
.source "SourceFile"


# static fields
.field private static final e:Lorg/a/a/a/a$a;

.field private static final f:Lorg/a/a/a/a$a;

.field private static final g:Lorg/a/a/a/a$a;


# instance fields
.field a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/b/a/a/f;->c()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 32
    const-string v0, "uuid"

    invoke-direct {p0, v0, p1}, Lcom/c/a/a;-><init>(Ljava/lang/String;[B)V

    .line 33
    return-void
.end method

.method private static c()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/a/a/b/a/b;

    const-string v1, "UserBox.java"

    const-class v2, Lcom/b/a/a/f;

    invoke-direct {v0, v1, v2}, Lorg/a/a/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.coremedia.iso.boxes.UserBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v1

    sput-object v1, Lcom/b/a/a/f;->e:Lorg/a/a/a/a$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getData"

    const-string v3, "com.coremedia.iso.boxes.UserBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "[B"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v1

    sput-object v1, Lcom/b/a/a/f;->f:Lorg/a/a/a/a$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setData"

    const-string v3, "com.coremedia.iso.boxes.UserBox"

    const-string v4, "[B"

    const-string v5, "data"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/f;->g:Lorg/a/a/a/a$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/b/a/a/f;->a:[B

    .line 58
    iget-object v0, p0, Lcom/b/a/a/f;->a:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 59
    return-void
.end method

.method public a([B)V
    .locals 2

    .prologue
    sget-object v0, Lcom/b/a/a/f;->g:Lorg/a/a/a/a$a;

    invoke-static {v0, p0, p0, p1}, Lorg/a/a/b/a/b;->a(Lorg/a/a/a/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/a/a/a/a;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/c/a/f;->a()Lcom/c/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/f;->a(Lorg/a/a/a/a;)V

    iput-object p1, p0, Lcom/b/a/a/f;->a:[B

    .line 53
    return-void
.end method

.method protected b(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/b/a/a/f;->a:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 64
    return-void
.end method

.method public b()[B
    .locals 2

    .prologue
    sget-object v0, Lcom/b/a/a/f;->f:Lorg/a/a/a/a$a;

    invoke-static {v0, p0, p0}, Lorg/a/a/b/a/b;->a(Lorg/a/a/a/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/a/a/a/a;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/c/a/f;->a()Lcom/c/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/f;->a(Lorg/a/a/a/a;)V

    iget-object v0, p0, Lcom/b/a/a/f;->a:[B

    return-object v0
.end method

.method protected d()J
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/b/a/a/f;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    sget-object v0, Lcom/b/a/a/f;->e:Lorg/a/a/a/a$a;

    invoke-static {v0, p0, p0}, Lorg/a/a/b/a/b;->a(Lorg/a/a/a/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/a/a/a/a;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/c/a/f;->a()Lcom/c/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/f;->a(Lorg/a/a/a/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserBox[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/b/a/a/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    const-string v1, ";userType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/b/a/a/f;->g()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    const-string v1, ";contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/f;->a:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
