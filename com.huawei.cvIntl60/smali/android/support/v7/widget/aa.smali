.class Landroid/support/v7/widget/aa;
.super Landroid/support/v7/widget/ac;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/support/v7/widget/aa$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aa$1;-><init>(Landroid/support/v7/widget/aa;)V

    sput-object v0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/az$a;

    .line 37
    return-void
.end method
