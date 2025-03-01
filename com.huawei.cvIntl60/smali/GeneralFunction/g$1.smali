.class final LGeneralFunction/g$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 79
    .line 80
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 81
    invoke-static {}, LGeneralFunction/g;->b()[LGeneralFunction/m;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, LGeneralFunction/m;->c:I

    if-ne v1, v4, :cond_0

    invoke-static {}, LGeneralFunction/g;->b()[LGeneralFunction/m;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, LGeneralFunction/m;->a:I

    if-lez v1, :cond_0

    .line 82
    invoke-static {}, LGeneralFunction/g;->b()[LGeneralFunction/m;

    move-result-object v1

    aget-object v1, v1, v0

    iget v2, v1, LGeneralFunction/m;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LGeneralFunction/m;->a:I

    invoke-static {}, LGeneralFunction/g;->b()[LGeneralFunction/m;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, LGeneralFunction/m;->b:I

    if-le v2, v1, :cond_0

    .line 83
    invoke-static {}, LGeneralFunction/g;->c()Lui_Controller/ui_StartMode/UI_ModeMain;

    move-result-object v1

    new-instance v2, La/c/a;

    const v3, 0xf000

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;)V

    .line 84
    invoke-static {}, LGeneralFunction/g;->b()[LGeneralFunction/m;

    move-result-object v1

    aget-object v1, v1, v0

    iput v4, v1, LGeneralFunction/m;->a:I

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method
