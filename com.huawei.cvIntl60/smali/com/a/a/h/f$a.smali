.class final enum Lcom/a/a/h/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/h/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/h/f$a;

.field public static final enum b:Lcom/a/a/h/f$a;

.field public static final enum c:Lcom/a/a/h/f$a;

.field public static final enum d:Lcom/a/a/h/f$a;

.field public static final enum e:Lcom/a/a/h/f$a;

.field public static final enum f:Lcom/a/a/h/f$a;

.field public static final enum g:Lcom/a/a/h/f$a;

.field public static final enum h:Lcom/a/a/h/f$a;

.field private static final synthetic i:[Lcom/a/a/h/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/a/a/h/f$a;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/a/a/h/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/f$a;->a:Lcom/a/a/h/f$a;

    .line 58
    new-instance v0, Lcom/a/a/h/f$a;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/a/a/h/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/f$a;->b:Lcom/a/a/h/f$a;

    .line 62
    new-instance v0, Lcom/a/a/h/f$a;

    const-string v1, "WAITING_FOR_SIZE"

    invoke-direct {v0, v1, v5}, Lcom/a/a/h/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/f$a;->c:Lcom/a/a/h/f$a;

    .line 66
    new-instance v0, Lcom/a/a/h/f$a;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/a/a/h/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/f$a;->d:Lcom/a/a/h/f$a;

    .line 70
    new-instance v0, Lcom/a/a/h/f$a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/a/a/h/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/f$a;->e:Lcom/a/a/h/f$a;

    .line 74
    new-instance v0, Lcom/a/a/h/f$a;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/a/h/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/f$a;->f:Lcom/a/a/h/f$a;

    .line 78
    new-instance v0, Lcom/a/a/h/f$a;

    const-string v1, "CLEARED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/a/a/h/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/f$a;->g:Lcom/a/a/h/f$a;

    .line 82
    new-instance v0, Lcom/a/a/h/f$a;

    const-string v1, "PAUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/a/a/h/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/h/f$a;->h:Lcom/a/a/h/f$a;

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/a/a/h/f$a;

    sget-object v1, Lcom/a/a/h/f$a;->a:Lcom/a/a/h/f$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/h/f$a;->b:Lcom/a/a/h/f$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/h/f$a;->c:Lcom/a/a/h/f$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/h/f$a;->d:Lcom/a/a/h/f$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/a/h/f$a;->e:Lcom/a/a/h/f$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/a/a/h/f$a;->f:Lcom/a/a/h/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/a/a/h/f$a;->g:Lcom/a/a/h/f$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/a/a/h/f$a;->h:Lcom/a/a/h/f$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/h/f$a;->i:[Lcom/a/a/h/f$a;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/h/f$a;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/a/a/h/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/h/f$a;

    return-object v0
.end method

.method public static values()[Lcom/a/a/h/f$a;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/a/a/h/f$a;->i:[Lcom/a/a/h/f$a;

    invoke-virtual {v0}, [Lcom/a/a/h/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/h/f$a;

    return-object v0
.end method
