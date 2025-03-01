.class public Lcom/c/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/c/a/f;

.field private static b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1
    nop

    :try_start_0
    invoke-static {}, Lcom/c/a/f;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v0, Lcom/c/a/f;->b:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/c/a/f;
    .locals 3

    .prologue
    .line 1
    sget-object v0, Lcom/c/a/f;->a:Lcom/c/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lorg/a/a/a/b;

    const-string v1, "com.googlecode.mp4parser.RequiresParseDetailAspect"

    sget-object v2, Lcom/c/a/f;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/c/a/f;->a:Lcom/c/a/f;

    return-object v0
.end method

.method private static b()V
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/c/a/f;

    invoke-direct {v0}, Lcom/c/a/f;-><init>()V

    sput-object v0, Lcom/c/a/f;->a:Lcom/c/a/f;

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/a;)V
    .locals 3

    .prologue
    .line 51
    invoke-interface {p1}, Lorg/a/a/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/c/a/a;

    if-eqz v0, :cond_1

    .line 52
    invoke-interface {p1}, Lorg/a/a/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    invoke-virtual {v0}, Lcom/c/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-interface {p1}, Lorg/a/a/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    invoke-virtual {v0}, Lcom/c/a/a;->e()V

    .line 60
    :cond_0
    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only methods in subclasses of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/c/a/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can  be annotated with ParseDetail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
