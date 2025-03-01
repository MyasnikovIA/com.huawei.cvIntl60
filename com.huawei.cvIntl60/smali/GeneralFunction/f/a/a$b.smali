.class LGeneralFunction/f/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/f/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/f/a/a;

.field private b:Landroid/media/MediaMuxer;

.field private c:Landroid/media/MediaFormat;

.field private d:Landroid/media/MediaFormat;

.field private e:I

.field private f:I

.field private g:LGeneralFunction/f/a/a$a;

.field private h:Z


# direct methods
.method private constructor <init>(LGeneralFunction/f/a/a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 318
    iput-object p1, p0, LGeneralFunction/f/a/a$b;->a:LGeneralFunction/f/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object v0, p0, LGeneralFunction/f/a/a$b;->b:Landroid/media/MediaMuxer;

    .line 303
    iput-object v0, p0, LGeneralFunction/f/a/a$b;->c:Landroid/media/MediaFormat;

    .line 304
    iput-object v0, p0, LGeneralFunction/f/a/a$b;->d:Landroid/media/MediaFormat;

    .line 305
    iput v1, p0, LGeneralFunction/f/a/a$b;->e:I

    .line 306
    iput v1, p0, LGeneralFunction/f/a/a$b;->f:I

    .line 308
    iput-object v0, p0, LGeneralFunction/f/a/a$b;->g:LGeneralFunction/f/a/a$a;

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/f/a/a$b;->h:Z

    .line 320
    return-void
.end method

.method synthetic constructor <init>(LGeneralFunction/f/a/a;LGeneralFunction/f/a/a$1;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, LGeneralFunction/f/a/a$b;-><init>(LGeneralFunction/f/a/a;)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/f/a/a$b;Z)Z
    .locals 0

    .prologue
    .line 301
    iput-boolean p1, p0, LGeneralFunction/f/a/a$b;->h:Z

    return p1
.end method
