.class public final Landroid/support/v4/view/MenuCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setGroupDividerEnabled(Landroid/view/Menu;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 48
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenu;

    if-eqz v0, :cond_1

    .line 49
    check-cast p0, Landroid/support/v4/internal/view/SupportMenu;

    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenu;->setGroupDividerEnabled(Z)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 51
    invoke-interface {p0, p1}, Landroid/view/Menu;->setGroupDividerEnabled(Z)V

    goto :goto_0
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 38
    return-void
.end method
