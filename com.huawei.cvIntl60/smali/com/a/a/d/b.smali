.class public final enum Lcom/a/a/d/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/d/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/d/b;

.field public static final enum b:Lcom/a/a/d/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum c:Lcom/a/a/d/b;

.field public static final d:Lcom/a/a/d/b;

.field private static final synthetic e:[Lcom/a/a/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "PREFER_ARGB_8888"

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->a:Lcom/a/a/d/b;

    .line 36
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "PREFER_ARGB_8888_DISALLOW_HARDWARE"

    invoke-direct {v0, v1, v3}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->b:Lcom/a/a/d/b;

    .line 49
    new-instance v0, Lcom/a/a/d/b;

    const-string v1, "PREFER_RGB_565"

    invoke-direct {v0, v1, v4}, Lcom/a/a/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b;->c:Lcom/a/a/d/b;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/d/b;

    sget-object v1, Lcom/a/a/d/b;->a:Lcom/a/a/d/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/d/b;->b:Lcom/a/a/d/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/d/b;->c:Lcom/a/a/d/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/a/d/b;->e:[Lcom/a/a/d/b;

    .line 54
    sget-object v0, Lcom/a/a/d/b;->b:Lcom/a/a/d/b;

    sput-object v0, Lcom/a/a/d/b;->d:Lcom/a/a/d/b;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/d/b;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/a/a/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b;

    return-object v0
.end method

.method public static values()[Lcom/a/a/d/b;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/a/a/d/b;->e:[Lcom/a/a/d/b;

    invoke-virtual {v0}, [Lcom/a/a/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/d/b;

    return-object v0
.end method
