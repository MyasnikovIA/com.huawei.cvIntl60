.class public final enum Lcom/facebook/a/b/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/a/b/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/a/b/l;

.field public static final enum b:Lcom/facebook/a/b/l;

.field public static final enum c:Lcom/facebook/a/b/l;

.field public static final enum d:Lcom/facebook/a/b/l;

.field public static final enum e:Lcom/facebook/a/b/l;

.field public static final enum f:Lcom/facebook/a/b/l;

.field public static final enum g:Lcom/facebook/a/b/l;

.field private static final synthetic h:[Lcom/facebook/a/b/l;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/facebook/a/b/l;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/facebook/a/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/b/l;->a:Lcom/facebook/a/b/l;

    new-instance v0, Lcom/facebook/a/b/l;

    const-string v1, "HEARTBEAT"

    invoke-direct {v0, v1, v4}, Lcom/facebook/a/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/b/l;->b:Lcom/facebook/a/b/l;

    new-instance v0, Lcom/facebook/a/b/l;

    const-string v1, "EXPIRE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/a/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/b/l;->c:Lcom/facebook/a/b/l;

    new-instance v0, Lcom/facebook/a/b/l;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v6}, Lcom/facebook/a/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/b/l;->d:Lcom/facebook/a/b/l;

    new-instance v0, Lcom/facebook/a/b/l;

    const-string v1, "RESTORE"

    invoke-direct {v0, v1, v7}, Lcom/facebook/a/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/b/l;->e:Lcom/facebook/a/b/l;

    new-instance v0, Lcom/facebook/a/b/l;

    const-string v1, "DUPLICATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/a/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/b/l;->f:Lcom/facebook/a/b/l;

    new-instance v0, Lcom/facebook/a/b/l;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/a/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/b/l;->g:Lcom/facebook/a/b/l;

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/a/b/l;

    sget-object v1, Lcom/facebook/a/b/l;->a:Lcom/facebook/a/b/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/a/b/l;->b:Lcom/facebook/a/b/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/a/b/l;->c:Lcom/facebook/a/b/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/a/b/l;->d:Lcom/facebook/a/b/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/a/b/l;->e:Lcom/facebook/a/b/l;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/a/b/l;->f:Lcom/facebook/a/b/l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/a/b/l;->g:Lcom/facebook/a/b/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/a/b/l;->h:[Lcom/facebook/a/b/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/a/b/l;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/facebook/a/b/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/b/l;

    return-object v0
.end method

.method public static values()[Lcom/facebook/a/b/l;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/facebook/a/b/l;->h:[Lcom/facebook/a/b/l;

    invoke-virtual {v0}, [Lcom/facebook/a/b/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/a/b/l;

    return-object v0
.end method
