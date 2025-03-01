.class public final Lcom/facebook/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    const-class v0, Lcom/facebook/internal/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/s;->c:Ljava/lang/String;

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "service_disabled"

    aput-object v1, v0, v2

    const-string v1, "AndroidAuthKillSwitchException"

    aput-object v1, v0, v3

    .line 83
    invoke-static {v0}, Lcom/facebook/internal/u;->a([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/s;->a:Ljava/util/Collection;

    .line 84
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "access_denied"

    aput-object v1, v0, v2

    const-string v1, "OAuthAccessDeniedException"

    aput-object v1, v0, v3

    .line 85
    invoke-static {v0}, Lcom/facebook/internal/u;->a([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/s;->b:Ljava/util/Collection;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    const-string v0, "m.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/k;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    const-string v0, "https://graph.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/k;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    const-string v0, "https://graph-video.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/k;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "v3.2"

    return-object v0
.end method
