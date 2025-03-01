.class final enum Lcom/a/a/d/b/f$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/d/b/f$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/d/b/f$g;

.field public static final enum b:Lcom/a/a/d/b/f$g;

.field public static final enum c:Lcom/a/a/d/b/f$g;

.field public static final enum d:Lcom/a/a/d/b/f$g;

.field public static final enum e:Lcom/a/a/d/b/f$g;

.field public static final enum f:Lcom/a/a/d/b/f$g;

.field private static final synthetic g:[Lcom/a/a/d/b/f$g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 688
    new-instance v0, Lcom/a/a/d/b/f$g;

    const-string v1, "INITIALIZE"

    invoke-direct {v0, v1, v3}, Lcom/a/a/d/b/f$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b/f$g;->a:Lcom/a/a/d/b/f$g;

    .line 690
    new-instance v0, Lcom/a/a/d/b/f$g;

    const-string v1, "RESOURCE_CACHE"

    invoke-direct {v0, v1, v4}, Lcom/a/a/d/b/f$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b/f$g;->b:Lcom/a/a/d/b/f$g;

    .line 692
    new-instance v0, Lcom/a/a/d/b/f$g;

    const-string v1, "DATA_CACHE"

    invoke-direct {v0, v1, v5}, Lcom/a/a/d/b/f$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b/f$g;->c:Lcom/a/a/d/b/f$g;

    .line 694
    new-instance v0, Lcom/a/a/d/b/f$g;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v6}, Lcom/a/a/d/b/f$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b/f$g;->d:Lcom/a/a/d/b/f$g;

    .line 696
    new-instance v0, Lcom/a/a/d/b/f$g;

    const-string v1, "ENCODE"

    invoke-direct {v0, v1, v7}, Lcom/a/a/d/b/f$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b/f$g;->e:Lcom/a/a/d/b/f$g;

    .line 698
    new-instance v0, Lcom/a/a/d/b/f$g;

    const-string v1, "FINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/b/f$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/d/b/f$g;->f:Lcom/a/a/d/b/f$g;

    .line 686
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/a/a/d/b/f$g;

    sget-object v1, Lcom/a/a/d/b/f$g;->a:Lcom/a/a/d/b/f$g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/d/b/f$g;->b:Lcom/a/a/d/b/f$g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/d/b/f$g;->c:Lcom/a/a/d/b/f$g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/d/b/f$g;->d:Lcom/a/a/d/b/f$g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/a/d/b/f$g;->e:Lcom/a/a/d/b/f$g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/a/a/d/b/f$g;->f:Lcom/a/a/d/b/f$g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/d/b/f$g;->g:[Lcom/a/a/d/b/f$g;

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
    .line 686
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/d/b/f$g;
    .locals 1

    .prologue
    .line 686
    const-class v0, Lcom/a/a/d/b/f$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/f$g;

    return-object v0
.end method

.method public static values()[Lcom/a/a/d/b/f$g;
    .locals 1

    .prologue
    .line 686
    sget-object v0, Lcom/a/a/d/b/f$g;->g:[Lcom/a/a/d/b/f$g;

    invoke-virtual {v0}, [Lcom/a/a/d/b/f$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/d/b/f$g;

    return-object v0
.end method
