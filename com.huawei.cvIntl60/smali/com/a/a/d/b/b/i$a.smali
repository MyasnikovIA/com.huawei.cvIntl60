.class public final Lcom/a/a/d/b/b/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:I


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Landroid/app/ActivityManager;

.field private d:Lcom/a/a/d/b/b/i$c;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/a/a/d/b/b/i$a;->a:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/a/a/d/b/b/i$a;->e:F

    .line 153
    sget v0, Lcom/a/a/d/b/b/i$a;->a:I

    int-to-float v0, v0

    iput v0, p0, Lcom/a/a/d/b/b/i$a;->f:F

    .line 154
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/a/a/d/b/b/i$a;->g:F

    .line 155
    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/a/a/d/b/b/i$a;->h:F

    .line 156
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/a/a/d/b/b/i$a;->i:I

    .line 159
    iput-object p1, p0, Lcom/a/a/d/b/b/i$a;->b:Landroid/content/Context;

    .line 160
    const-string v0, "activity"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/a/a/d/b/b/i$a;->c:Landroid/app/ActivityManager;

    .line 162
    new-instance v0, Lcom/a/a/d/b/b/i$b;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d/b/b/i$b;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/a/a/d/b/b/i$a;->d:Lcom/a/a/d/b/b/i$c;

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/d/b/b/i$a;->c:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/a/a/d/b/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/d/b/b/i$a;->f:F

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/a/a/d/b/b/i$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/a/a/d/b/b/i$a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/d/b/b/i$a;)Landroid/app/ActivityManager;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/a/a/d/b/b/i$a;->c:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic c(Lcom/a/a/d/b/b/i$a;)I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/a/a/d/b/b/i$a;->i:I

    return v0
.end method

.method static synthetic d(Lcom/a/a/d/b/b/i$a;)F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/a/a/d/b/b/i$a;->g:F

    return v0
.end method

.method static synthetic e(Lcom/a/a/d/b/b/i$a;)F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/a/a/d/b/b/i$a;->h:F

    return v0
.end method

.method static synthetic f(Lcom/a/a/d/b/b/i$a;)Lcom/a/a/d/b/b/i$c;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/a/a/d/b/b/i$a;->d:Lcom/a/a/d/b/b/i$c;

    return-object v0
.end method

.method static synthetic g(Lcom/a/a/d/b/b/i$a;)F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/a/a/d/b/b/i$a;->f:F

    return v0
.end method

.method static synthetic h(Lcom/a/a/d/b/b/i$a;)F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/a/a/d/b/b/i$a;->e:F

    return v0
.end method


# virtual methods
.method public a()Lcom/a/a/d/b/b/i;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/a/a/d/b/b/i;

    invoke-direct {v0, p0}, Lcom/a/a/d/b/b/i;-><init>(Lcom/a/a/d/b/b/i$a;)V

    return-object v0
.end method
