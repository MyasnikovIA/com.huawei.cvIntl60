.class Lcom/facebook/internal/p$b;
.super Lcom/facebook/internal/p$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/p$e;-><init>(Lcom/facebook/internal/p$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/p$1;)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/facebook/internal/p$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    const-string v0, "com.facebook.lite"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-string v0, "com.facebook.lite.platform.LoginGDPDialogActivity"

    return-object v0
.end method
