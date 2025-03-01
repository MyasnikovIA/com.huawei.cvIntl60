.class public LGeneralFunction/Player/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, LGeneralFunction/Player/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/Player/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 29
    .line 30
    new-array v2, v5, [I

    .line 32
    const/4 v0, 0x0

    invoke-static {v5, v2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 33
    const/4 v0, 0x0

    aget v0, v2, v0

    .line 34
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 37
    if-eq p0, v5, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 39
    :cond_0
    const v1, 0x8d65

    :try_start_0
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 40
    const v1, 0x8d65

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 41
    const v1, 0x8d65

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 42
    const v1, 0x8d65

    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 43
    const v1, 0x8d65

    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 46
    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 48
    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 49
    const/16 v1, 0xde1

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 50
    const/16 v1, 0xde1

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 51
    const/16 v1, 0xde1

    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 52
    const/16 v1, 0xde1

    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_2
    :goto_0
    return v0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    sget-object v3, LGeneralFunction/Player/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 58
    const/4 v0, 0x0

    invoke-static {v5, v2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 60
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": glError 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v1, LGeneralFunction/Player/a/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
