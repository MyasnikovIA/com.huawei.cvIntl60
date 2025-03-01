.class LGeneralFunction/f/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/f/a/b;

.field private b:Landroid/media/MediaMuxer;

.field private c:Landroid/media/MediaFormat;

.field private d:Landroid/media/MediaFormat;

.field private e:Landroid/media/MediaExtractor;

.field private f:Landroid/media/MediaExtractor;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:LGeneralFunction/f/a/b$b;

.field private m:Z

.field private n:Z

.field private o:J


# direct methods
.method private constructor <init>(LGeneralFunction/f/a/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 321
    iput-object p1, p0, LGeneralFunction/f/a/b$c;->a:LGeneralFunction/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object v0, p0, LGeneralFunction/f/a/b$c;->b:Landroid/media/MediaMuxer;

    .line 305
    iput-object v0, p0, LGeneralFunction/f/a/b$c;->c:Landroid/media/MediaFormat;

    .line 306
    iput-object v0, p0, LGeneralFunction/f/a/b$c;->d:Landroid/media/MediaFormat;

    .line 307
    iput-object v0, p0, LGeneralFunction/f/a/b$c;->e:Landroid/media/MediaExtractor;

    .line 308
    iput-object v0, p0, LGeneralFunction/f/a/b$c;->f:Landroid/media/MediaExtractor;

    .line 309
    iput v1, p0, LGeneralFunction/f/a/b$c;->g:I

    .line 310
    iput v1, p0, LGeneralFunction/f/a/b$c;->h:I

    .line 311
    iput v1, p0, LGeneralFunction/f/a/b$c;->i:I

    .line 312
    iput v1, p0, LGeneralFunction/f/a/b$c;->j:I

    .line 313
    iput v1, p0, LGeneralFunction/f/a/b$c;->k:I

    .line 315
    iput-object v0, p0, LGeneralFunction/f/a/b$c;->l:LGeneralFunction/f/a/b$b;

    .line 316
    iput-boolean v2, p0, LGeneralFunction/f/a/b$c;->m:Z

    .line 317
    iput-boolean v2, p0, LGeneralFunction/f/a/b$c;->n:Z

    .line 318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LGeneralFunction/f/a/b$c;->o:J

    .line 323
    return-void
.end method

.method synthetic constructor <init>(LGeneralFunction/f/a/b;LGeneralFunction/f/a/b$1;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, LGeneralFunction/f/a/b$c;-><init>(LGeneralFunction/f/a/b;)V

    return-void
.end method

.method static synthetic a(LGeneralFunction/f/a/b$c;I)I
    .locals 0

    .prologue
    .line 303
    iput p1, p0, LGeneralFunction/f/a/b$c;->g:I

    return p1
.end method

.method static synthetic a(LGeneralFunction/f/a/b$c;)LGeneralFunction/f/a/b$b;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, LGeneralFunction/f/a/b$c;->l:LGeneralFunction/f/a/b$b;

    return-object v0
.end method

.method static synthetic a(LGeneralFunction/f/a/b$c;LGeneralFunction/f/a/b$b;)LGeneralFunction/f/a/b$b;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, LGeneralFunction/f/a/b$c;->l:LGeneralFunction/f/a/b$b;

    return-object p1
.end method

.method static synthetic a(LGeneralFunction/f/a/b$c;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, LGeneralFunction/f/a/b$c;->f:Landroid/media/MediaExtractor;

    return-object p1
.end method

.method static synthetic a(LGeneralFunction/f/a/b$c;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, LGeneralFunction/f/a/b$c;->c:Landroid/media/MediaFormat;

    return-object p1
.end method

.method static synthetic a(LGeneralFunction/f/a/b$c;Landroid/media/MediaMuxer;)Landroid/media/MediaMuxer;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, LGeneralFunction/f/a/b$c;->b:Landroid/media/MediaMuxer;

    return-object p1
.end method

.method static synthetic a(LGeneralFunction/f/a/b$c;Z)Z
    .locals 0

    .prologue
    .line 303
    iput-boolean p1, p0, LGeneralFunction/f/a/b$c;->m:Z

    return p1
.end method

.method static synthetic b(LGeneralFunction/f/a/b$c;I)I
    .locals 0

    .prologue
    .line 303
    iput p1, p0, LGeneralFunction/f/a/b$c;->h:I

    return p1
.end method

.method static synthetic b(LGeneralFunction/f/a/b$c;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, LGeneralFunction/f/a/b$c;->e:Landroid/media/MediaExtractor;

    return-object p1
.end method

.method static synthetic b(LGeneralFunction/f/a/b$c;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, LGeneralFunction/f/a/b$c;->d:Landroid/media/MediaFormat;

    return-object p1
.end method

.method static synthetic b(LGeneralFunction/f/a/b$c;)Landroid/media/MediaMuxer;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, LGeneralFunction/f/a/b$c;->b:Landroid/media/MediaMuxer;

    return-object v0
.end method

.method static synthetic b(LGeneralFunction/f/a/b$c;Z)Z
    .locals 0

    .prologue
    .line 303
    iput-boolean p1, p0, LGeneralFunction/f/a/b$c;->n:Z

    return p1
.end method

.method static synthetic c(LGeneralFunction/f/a/b$c;I)I
    .locals 0

    .prologue
    .line 303
    iput p1, p0, LGeneralFunction/f/a/b$c;->j:I

    return p1
.end method

.method static synthetic c(LGeneralFunction/f/a/b$c;)Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, LGeneralFunction/f/a/b$c;->m:Z

    return v0
.end method

.method static synthetic d(LGeneralFunction/f/a/b$c;I)I
    .locals 0

    .prologue
    .line 303
    iput p1, p0, LGeneralFunction/f/a/b$c;->k:I

    return p1
.end method

.method static synthetic d(LGeneralFunction/f/a/b$c;)J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, LGeneralFunction/f/a/b$c;->o:J

    return-wide v0
.end method

.method static synthetic e(LGeneralFunction/f/a/b$c;I)I
    .locals 0

    .prologue
    .line 303
    iput p1, p0, LGeneralFunction/f/a/b$c;->i:I

    return p1
.end method

.method static synthetic e(LGeneralFunction/f/a/b$c;)Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, LGeneralFunction/f/a/b$c;->c:Landroid/media/MediaFormat;

    return-object v0
.end method

.method static synthetic f(LGeneralFunction/f/a/b$c;)Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, LGeneralFunction/f/a/b$c;->d:Landroid/media/MediaFormat;

    return-object v0
.end method

.method static synthetic g(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, LGeneralFunction/f/a/b$c;->f:Landroid/media/MediaExtractor;

    return-object v0
.end method

.method static synthetic h(LGeneralFunction/f/a/b$c;)Landroid/media/MediaExtractor;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, LGeneralFunction/f/a/b$c;->e:Landroid/media/MediaExtractor;

    return-object v0
.end method

.method static synthetic i(LGeneralFunction/f/a/b$c;)Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, LGeneralFunction/f/a/b$c;->n:Z

    return v0
.end method

.method static synthetic j(LGeneralFunction/f/a/b$c;)I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, LGeneralFunction/f/a/b$c;->j:I

    return v0
.end method

.method static synthetic k(LGeneralFunction/f/a/b$c;)I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, LGeneralFunction/f/a/b$c;->k:I

    return v0
.end method

.method static synthetic l(LGeneralFunction/f/a/b$c;)I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, LGeneralFunction/f/a/b$c;->i:I

    return v0
.end method

.method static synthetic m(LGeneralFunction/f/a/b$c;)J
    .locals 4

    .prologue
    .line 303
    iget-wide v0, p0, LGeneralFunction/f/a/b$c;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, LGeneralFunction/f/a/b$c;->o:J

    return-wide v0
.end method

.method static synthetic n(LGeneralFunction/f/a/b$c;)I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, LGeneralFunction/f/a/b$c;->g:I

    return v0
.end method

.method static synthetic o(LGeneralFunction/f/a/b$c;)I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, LGeneralFunction/f/a/b$c;->h:I

    return v0
.end method
