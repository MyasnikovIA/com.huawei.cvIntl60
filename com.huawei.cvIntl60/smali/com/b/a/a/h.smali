.class public Lcom/b/a/a/h;
.super Lcom/c/a/c;
.source "SourceFile"


# static fields
.field private static final e:Lorg/a/a/a/a$a;

.field private static final f:Lorg/a/a/a/a$a;

.field private static final g:Lorg/a/a/a/a$a;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/b/a/a/h;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "xml "

    invoke-direct {p0, v0}, Lcom/c/a/c;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/a/h;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private static b()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/a/a/b/a/b;

    const-string v1, "XmlBox.java"

    const-class v2, Lcom/b/a/a/h;

    invoke-direct {v0, v1, v2}, Lorg/a/a/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getXml"

    const-string v3, "com.coremedia.iso.boxes.XmlBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v1

    sput-object v1, Lcom/b/a/a/h;->e:Lorg/a/a/a/a$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setXml"

    const-string v3, "com.coremedia.iso.boxes.XmlBox"

    const-string v4, "java.lang.String"

    const-string v5, "xml"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v1

    sput-object v1, Lcom/b/a/a/h;->f:Lorg/a/a/a/a$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.coremedia.iso.boxes.XmlBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/h;->g:Lorg/a/a/a/a$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    sget-object v0, Lcom/b/a/a/h;->f:Lorg/a/a/a/a$a;

    invoke-static {v0, p0, p0, p1}, Lorg/a/a/b/a/b;->a(Lorg/a/a/a/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/a/a/a/a;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/c/a/f;->a()Lcom/c/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/f;->a(Lorg/a/a/a/a;)V

    iput-object p1, p0, Lcom/b/a/a/h;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/b/a/a/h;->c(Ljava/nio/ByteBuffer;)J

    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p1, v0}, Lcom/b/a/d;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/h;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method protected b(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/b/a/a/h;->d(Ljava/nio/ByteBuffer;)V

    .line 42
    iget-object v0, p0, Lcom/b/a/a/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 43
    return-void
.end method

.method protected d()J
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/b/a/a/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/f;->b(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/b/a/a/h;->g:Lorg/a/a/a/a$a;

    invoke-static {v0, p0, p0}, Lorg/a/a/b/a/b;->a(Lorg/a/a/a/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/a/a/a/a;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/c/a/f;->a()Lcom/c/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/f;->a(Lorg/a/a/a/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XmlBox{xml=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/b/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
