.class public final enum Landroid/arch/lifecycle/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/arch/lifecycle/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroid/arch/lifecycle/c$b;

.field public static final enum b:Landroid/arch/lifecycle/c$b;

.field public static final enum c:Landroid/arch/lifecycle/c$b;

.field public static final enum d:Landroid/arch/lifecycle/c$b;

.field public static final enum e:Landroid/arch/lifecycle/c$b;

.field private static final synthetic f:[Landroid/arch/lifecycle/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    new-instance v0, Landroid/arch/lifecycle/c$b;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v2}, Landroid/arch/lifecycle/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/c$b;

    .line 164
    new-instance v0, Landroid/arch/lifecycle/c$b;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v3}, Landroid/arch/lifecycle/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/c$b;->b:Landroid/arch/lifecycle/c$b;

    .line 174
    new-instance v0, Landroid/arch/lifecycle/c$b;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v4}, Landroid/arch/lifecycle/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/c$b;->c:Landroid/arch/lifecycle/c$b;

    .line 184
    new-instance v0, Landroid/arch/lifecycle/c$b;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v5}, Landroid/arch/lifecycle/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/c$b;->d:Landroid/arch/lifecycle/c$b;

    .line 190
    new-instance v0, Landroid/arch/lifecycle/c$b;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v6}, Landroid/arch/lifecycle/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/c$b;->e:Landroid/arch/lifecycle/c$b;

    .line 150
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/arch/lifecycle/c$b;

    sget-object v1, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/c$b;

    aput-object v1, v0, v2

    sget-object v1, Landroid/arch/lifecycle/c$b;->b:Landroid/arch/lifecycle/c$b;

    aput-object v1, v0, v3

    sget-object v1, Landroid/arch/lifecycle/c$b;->c:Landroid/arch/lifecycle/c$b;

    aput-object v1, v0, v4

    sget-object v1, Landroid/arch/lifecycle/c$b;->d:Landroid/arch/lifecycle/c$b;

    aput-object v1, v0, v5

    sget-object v1, Landroid/arch/lifecycle/c$b;->e:Landroid/arch/lifecycle/c$b;

    aput-object v1, v0, v6

    sput-object v0, Landroid/arch/lifecycle/c$b;->f:[Landroid/arch/lifecycle/c$b;

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
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/arch/lifecycle/c$b;
    .locals 1

    .prologue
    .line 150
    const-class v0, Landroid/arch/lifecycle/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/c$b;

    return-object v0
.end method

.method public static values()[Landroid/arch/lifecycle/c$b;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Landroid/arch/lifecycle/c$b;->f:[Landroid/arch/lifecycle/c$b;

    invoke-virtual {v0}, [Landroid/arch/lifecycle/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/arch/lifecycle/c$b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/c$b;)Z
    .locals 1
    .param p1    # Landroid/arch/lifecycle/c$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/c$b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
