.class public LGeneralFunction/Player/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, LGeneralFunction/Player/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1, p2}, LGeneralFunction/Player/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LGeneralFunction/Player/a/c;->b:I

    .line 28
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 59
    const v1, 0x8b31

    invoke-static {v1, p0}, LGeneralFunction/Player/a/c;->b(ILjava/lang/String;)I

    move-result v2

    .line 60
    const v1, 0x8b30

    invoke-static {v1, p1}, LGeneralFunction/Player/a/c;->b(ILjava/lang/String;)I

    move-result v3

    .line 61
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 62
    const-string v4, "glCreateProgram"

    invoke-static {v4}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 63
    if-nez v1, :cond_0

    .line 64
    sget-object v1, LGeneralFunction/Player/a/c;->a:Ljava/lang/String;

    const-string v2, "Could not create program"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return v0

    .line 67
    :cond_0
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 68
    const-string v2, "glAttachShader"

    invoke-static {v2}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 69
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 70
    const-string v2, "glAttachShader"

    invoke-static {v2}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 71
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 72
    new-array v2, v5, [I

    .line 73
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 74
    aget v2, v2, v0

    if-eq v2, v5, :cond_1

    .line 75
    sget-object v2, LGeneralFunction/Player/a/c;->a:Ljava/lang/String;

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v2, LGeneralFunction/Player/a/c;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    if-ltz p0, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find location for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LGeneralFunction/Player/a/b;->a(Ljava/lang/String;)V

    .line 86
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 87
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 88
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 89
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 90
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 91
    sget-object v2, LGeneralFunction/Player/a/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v2, LGeneralFunction/Player/a/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 96
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, LGeneralFunction/Player/a/c;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, LGeneralFunction/Player/a/c;->b:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 48
    invoke-static {v0, p1}, LGeneralFunction/Player/a/c;->a(ILjava/lang/String;)V

    .line 49
    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, LGeneralFunction/Player/a/c;->b:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 54
    invoke-static {v0, p1}, LGeneralFunction/Player/a/c;->a(ILjava/lang/String;)V

    .line 55
    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 35
    iget v0, p0, LGeneralFunction/Player/a/c;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, LGeneralFunction/Player/a/c;->b:I

    .line 37
    return-void
.end method
