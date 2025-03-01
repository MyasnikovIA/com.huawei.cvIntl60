.class public Landroid/support/v7/app/b;
.super Landroid/support/v7/app/e;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/b$a;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 98
    invoke-static {p1, p2}, Landroid/support/v7/app/b;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/e;-><init>(Landroid/content/Context;I)V

    .line 99
    new-instance v0, Landroid/support/v7/app/AlertController;

    invoke-virtual {p0}, Landroid/support/v7/app/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/app/b;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Landroid/support/v7/app/AlertController;-><init>(Landroid/content/Context;Landroid/support/v7/app/e;Landroid/view/Window;)V

    iput-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/AlertController;

    .line 100
    return-void
.end method

.method static a(Landroid/content/Context;I)I
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 111
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v3, :cond_0

    .line 116
    :goto_0
    return p1

    .line 114
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/support/v7/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 279
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/AlertController;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertController;->a()V

    .line 280
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/AlertController;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertController;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/e;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/AlertController;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertController;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/e;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/support/v7/app/e;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Landroid/support/v7/app/b;->a:Landroid/support/v7/app/AlertController;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method
