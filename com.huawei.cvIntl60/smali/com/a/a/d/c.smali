.class public final enum Lcom/a/a/d/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/d/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/d/c;

.field public static final enum b:Lcom/a/a/d/c;

.field public static final enum c:Lcom/a/a/d/c;

.field private static final synthetic d:[Lcom/a/a/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/a/a/d/c;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/c;->a:Lcom/a/a/d/c;

    .line 16
    new-instance v0, Lcom/a/a/d/c;

    const-string v1, "TRANSFORMED"

    invoke-direct {v0, v1, v3}, Lcom/a/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/c;->b:Lcom/a/a/d/c;

    .line 21
    new-instance v0, Lcom/a/a/d/c;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/a/a/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/c;->c:Lcom/a/a/d/c;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/d/c;

    sget-object v1, Lcom/a/a/d/c;->a:Lcom/a/a/d/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/d/c;->b:Lcom/a/a/d/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/d/c;->c:Lcom/a/a/d/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/a/a/d/c;->d:[Lcom/a/a/d/c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/d/c;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/a/a/d/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/c;

    return-object v0
.end method

.method public static values()[Lcom/a/a/d/c;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/a/a/d/c;->d:[Lcom/a/a/d/c;

    invoke-virtual {v0}, [Lcom/a/a/d/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/d/c;

    return-object v0
.end method
