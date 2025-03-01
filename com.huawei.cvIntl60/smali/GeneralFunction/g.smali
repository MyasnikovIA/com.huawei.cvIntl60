.class public LGeneralFunction/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[LGeneralFunction/m;

.field private static b:Ljava/util/Timer;

.field private static c:Lui_Controller/ui_StartMode/UI_ModeMain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, LGeneralFunction/g;->a:[LGeneralFunction/m;

    .line 19
    sput-object v0, LGeneralFunction/g;->b:Ljava/util/Timer;

    .line 20
    sput-object v0, LGeneralFunction/g;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, LGeneralFunction/g;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, LGeneralFunction/g;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 68
    const/4 v0, 0x0

    sput-object v0, LGeneralFunction/g;->b:Ljava/util/Timer;

    .line 70
    :cond_0
    invoke-static {}, LGeneralFunction/g;->d()V

    .line 71
    return-void
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 42
    const-string v0, "IsrTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI_DeleteIsrTimer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, LGeneralFunction/g;->a:[LGeneralFunction/m;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    iput v1, v0, LGeneralFunction/m;->a:I

    .line 44
    return-void
.end method

.method public static a(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 34
    const-string v0, "IsrTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI_SetIsrTimer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    sget-object v0, LGeneralFunction/g;->a:[LGeneralFunction/m;

    aget-object v0, v0, p0

    iput v3, v0, LGeneralFunction/m;->a:I

    .line 36
    sget-object v0, LGeneralFunction/g;->a:[LGeneralFunction/m;

    aget-object v0, v0, p0

    iput v3, v0, LGeneralFunction/m;->c:I

    .line 37
    sget-object v0, LGeneralFunction/g;->a:[LGeneralFunction/m;

    aget-object v0, v0, p0

    div-int/lit8 v1, p1, 0x14

    iput v1, v0, LGeneralFunction/m;->b:I

    .line 38
    return-void
.end method

.method public static a(Lui_Controller/ui_StartMode/UI_ModeMain;)V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 53
    sput-object p0, LGeneralFunction/g;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 54
    new-array v0, v3, [LGeneralFunction/m;

    sput-object v0, LGeneralFunction/g;->a:[LGeneralFunction/m;

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 58
    sget-object v1, LGeneralFunction/g;->a:[LGeneralFunction/m;

    new-instance v2, LGeneralFunction/m;

    invoke-direct {v2}, LGeneralFunction/m;-><init>()V

    aput-object v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, LGeneralFunction/g;->d()V

    .line 62
    return-void
.end method

.method static synthetic b()[LGeneralFunction/m;
    .locals 1

    .prologue
    .line 12
    sget-object v0, LGeneralFunction/g;->a:[LGeneralFunction/m;

    return-object v0
.end method

.method static synthetic c()Lui_Controller/ui_StartMode/UI_ModeMain;
    .locals 1

    .prologue
    .line 12
    sget-object v0, LGeneralFunction/g;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    return-object v0
.end method

.method private static d()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x14

    .line 75
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, LGeneralFunction/g;->b:Ljava/util/Timer;

    .line 76
    sget-object v0, LGeneralFunction/g;->b:Ljava/util/Timer;

    new-instance v1, LGeneralFunction/g$1;

    invoke-direct {v1}, LGeneralFunction/g$1;-><init>()V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 90
    return-void
.end method
