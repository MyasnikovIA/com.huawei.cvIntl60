.class public abstract Lcom/c/a/c;
.super Lcom/c/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/c;


# static fields
.field private static final f:Lorg/a/a/a/a$a;

.field private static final g:Lorg/a/a/a/a$a;


# instance fields
.field private a:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/c/a/c;->b()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/c/a/a;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private static b()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/a/a/b/a/b;

    const-string v1, "AbstractFullBox.java"

    const-class v2, Lcom/c/a/c;

    invoke-direct {v0, v1, v2}, Lorg/a/a/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setVersion"

    const-string v3, "com.googlecode.mp4parser.AbstractFullBox"

    const-string v4, "int"

    const-string v5, "version"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v1

    sput-object v1, Lcom/c/a/c;->f:Lorg/a/a/a/a$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setFlags"

    const-string v3, "com.googlecode.mp4parser.AbstractFullBox"

    const-string v4, "int"

    const-string v5, "flags"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v0

    sput-object v0, Lcom/c/a/c;->g:Lorg/a/a/a/a$a;

    return-void
.end method


# virtual methods
.method protected final c(Ljava/nio/ByteBuffer;)J
    .locals 2

    .prologue
    .line 76
    invoke-static {p1}, Lcom/b/a/d;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/c/a/c;->a:I

    .line 77
    invoke-static {p1}, Lcom/b/a/d;->b(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/c/a/c;->e:I

    .line 78
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method protected final d(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/c/a/c;->a:I

    invoke-static {p1, v0}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;I)V

    .line 83
    iget v0, p0, Lcom/c/a/c;->e:I

    invoke-static {p1, v0}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;I)V

    .line 84
    return-void
.end method
