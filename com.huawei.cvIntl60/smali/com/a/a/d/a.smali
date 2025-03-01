.class public final enum Lcom/a/a/d/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/d/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/d/a;

.field public static final enum b:Lcom/a/a/d/a;

.field public static final enum c:Lcom/a/a/d/a;

.field public static final enum d:Lcom/a/a/d/a;

.field public static final enum e:Lcom/a/a/d/a;

.field private static final synthetic f:[Lcom/a/a/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/a/a/d/a;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/a;->a:Lcom/a/a/d/a;

    .line 15
    new-instance v0, Lcom/a/a/d/a;

    const-string v1, "REMOTE"

    invoke-direct {v0, v1, v3}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/a;->b:Lcom/a/a/d/a;

    .line 19
    new-instance v0, Lcom/a/a/d/a;

    const-string v1, "DATA_DISK_CACHE"

    invoke-direct {v0, v1, v4}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/a;->c:Lcom/a/a/d/a;

    .line 23
    new-instance v0, Lcom/a/a/d/a;

    const-string v1, "RESOURCE_DISK_CACHE"

    invoke-direct {v0, v1, v5}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/a;->d:Lcom/a/a/d/a;

    .line 27
    new-instance v0, Lcom/a/a/d/a;

    const-string v1, "MEMORY_CACHE"

    invoke-direct {v0, v1, v6}, Lcom/a/a/d/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/a;->e:Lcom/a/a/d/a;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/a/d/a;

    sget-object v1, Lcom/a/a/d/a;->a:Lcom/a/a/d/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/d/a;->b:Lcom/a/a/d/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/d/a;->c:Lcom/a/a/d/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/d/a;->d:Lcom/a/a/d/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/d/a;->e:Lcom/a/a/d/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/a/a/d/a;->f:[Lcom/a/a/d/a;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/d/a;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/a/a/d/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/a;

    return-object v0
.end method

.method public static values()[Lcom/a/a/d/a;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/a/a/d/a;->f:[Lcom/a/a/d/a;

    invoke-virtual {v0}, [Lcom/a/a/d/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/d/a;

    return-object v0
.end method
