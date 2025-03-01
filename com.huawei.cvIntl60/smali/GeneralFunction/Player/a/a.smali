.class public LGeneralFunction/Player/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLConfig;

.field private c:Landroid/opengl/EGLContext;

.field private d:Landroid/opengl/EGLSurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    .line 29
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, LGeneralFunction/Player/a/a;->c:Landroid/opengl/EGLContext;

    .line 30
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, LGeneralFunction/Player/a/a;->d:Landroid/opengl/EGLSurface;

    .line 33
    invoke-virtual {p0}, LGeneralFunction/Player/a/a;->a()V

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 116
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 118
    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    .line 38
    iget-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 39
    const-string v0, "eglGetDisplay"

    invoke-direct {p0, v0}, LGeneralFunction/Player/a/a;->a(Ljava/lang/String;)V

    .line 42
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 43
    iget-object v1, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    const-string v0, "eglInitialize"

    invoke-direct {p0, v0}, LGeneralFunction/Player/a/a;->a(Ljava/lang/String;)V

    .line 47
    :cond_1
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 57
    new-array v3, v4, [Landroid/opengl/EGLConfig;

    .line 58
    new-array v6, v4, [I

    .line 59
    iget-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    const-string v0, "eglChooseConfig"

    invoke-direct {p0, v0}, LGeneralFunction/Player/a/a;->a(Ljava/lang/String;)V

    .line 71
    :cond_2
    aget v0, v6, v2

    if-gtz v0, :cond_3

    .line 72
    const-string v0, "No EGL config found for attribute list"

    invoke-direct {p0, v0}, LGeneralFunction/Player/a/a;->a(Ljava/lang/String;)V

    .line 75
    :cond_3
    aget-object v0, v3, v2

    iput-object v0, p0, LGeneralFunction/Player/a/a;->b:Landroid/opengl/EGLConfig;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 81
    iget-object v1, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, LGeneralFunction/Player/a/a;->b:Landroid/opengl/EGLConfig;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/a/a;->c:Landroid/opengl/EGLContext;

    .line 84
    iget-object v0, p0, LGeneralFunction/Player/a/a;->c:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    .line 85
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, LGeneralFunction/Player/a/a;->a(Ljava/lang/String;)V

    .line 87
    :cond_4
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x10
        0x3040
        0x4
        0x3038
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-virtual {p0}, LGeneralFunction/Player/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, LGeneralFunction/Player/a/a;->a()V

    .line 94
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    aput v1, v0, v3

    .line 98
    iget-object v1, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, LGeneralFunction/Player/a/a;->b:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/Player/a/a;->d:Landroid/opengl/EGLSurface;

    .line 100
    iget-object v0, p0, LGeneralFunction/Player/a/a;->d:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, LGeneralFunction/Player/a/a;->d:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_2

    .line 101
    :cond_1
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, LGeneralFunction/Player/a/a;->a(Ljava/lang/String;)V

    .line 104
    :cond_2
    invoke-virtual {p0}, LGeneralFunction/Player/a/a;->c()V

    .line 105
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, LGeneralFunction/Player/a/a;->d:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, LGeneralFunction/Player/a/a;->d:Landroid/opengl/EGLSurface;

    iget-object v2, p0, LGeneralFunction/Player/a/a;->d:Landroid/opengl/EGLSurface;

    iget-object v3, p0, LGeneralFunction/Player/a/a;->c:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, LGeneralFunction/Player/a/a;->a(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 132
    iget-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, LGeneralFunction/Player/a/a;->d:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 133
    iget-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, LGeneralFunction/Player/a/a;->c:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 134
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 135
    iget-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 138
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, LGeneralFunction/Player/a/a;->a:Landroid/opengl/EGLDisplay;

    .line 139
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, LGeneralFunction/Player/a/a;->d:Landroid/opengl/EGLSurface;

    .line 140
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, LGeneralFunction/Player/a/a;->c:Landroid/opengl/EGLContext;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/Player/a/a;->b:Landroid/opengl/EGLConfig;

    .line 142
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, LGeneralFunction/Player/a/a;->c:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, LGeneralFunction/Player/a/a;->d:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
