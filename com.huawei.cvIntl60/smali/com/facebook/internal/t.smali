.class public final enum Lcom/facebook/internal/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/internal/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/internal/t;

.field public static final enum b:Lcom/facebook/internal/t;

.field public static final enum c:Lcom/facebook/internal/t;

.field public static final d:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/t;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/facebook/internal/t;


# instance fields
.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Lcom/facebook/internal/t;

    const-string v1, "None"

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/facebook/internal/t;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/internal/t;->a:Lcom/facebook/internal/t;

    .line 26
    new-instance v0, Lcom/facebook/internal/t;

    const-string v1, "Enabled"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/facebook/internal/t;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/internal/t;->b:Lcom/facebook/internal/t;

    .line 27
    new-instance v0, Lcom/facebook/internal/t;

    const-string v1, "RequireConfirm"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/facebook/internal/t;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/internal/t;->c:Lcom/facebook/internal/t;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/internal/t;

    sget-object v1, Lcom/facebook/internal/t;->a:Lcom/facebook/internal/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/internal/t;->b:Lcom/facebook/internal/t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/internal/t;->c:Lcom/facebook/internal/t;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/internal/t;->f:[Lcom/facebook/internal/t;

    .line 29
    const-class v0, Lcom/facebook/internal/t;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/t;->d:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-wide p3, p0, Lcom/facebook/internal/t;->e:J

    .line 44
    return-void
.end method

.method public static a(J)Ljava/util/EnumSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    const-class v0, Lcom/facebook/internal/t;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 32
    sget-object v0, Lcom/facebook/internal/t;->d:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/t;

    .line 33
    invoke-virtual {v0}, Lcom/facebook/internal/t;->a()J

    move-result-wide v4

    and-long/2addr v4, p0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/t;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/facebook/internal/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/t;

    return-object v0
.end method

.method public static values()[Lcom/facebook/internal/t;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/facebook/internal/t;->f:[Lcom/facebook/internal/t;

    invoke-virtual {v0}, [Lcom/facebook/internal/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/t;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/facebook/internal/t;->e:J

    return-wide v0
.end method
