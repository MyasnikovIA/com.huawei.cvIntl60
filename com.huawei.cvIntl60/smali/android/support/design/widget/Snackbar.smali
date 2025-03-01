.class public final Landroid/support/design/widget/Snackbar;
.super Landroid/support/design/widget/BaseTransientBottomBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$SnackbarLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/BaseTransientBottomBar",
        "<",
        "Landroid/support/design/widget/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/design/R$attr;->snackbarButtonStyle:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/widget/Snackbar;->d:[I

    return-void
.end method
