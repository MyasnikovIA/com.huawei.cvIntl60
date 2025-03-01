.class public Landroid/support/v7/app/e;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/c;


# instance fields
.field private a:Landroid/support/v7/app/d;

.field private final b:Landroid/support/v4/view/KeyEventDispatcher$Component;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 57
    invoke-static {p1, p2}, Landroid/support/v7/app/e;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    new-instance v0, Landroid/support/v7/app/e$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/e$1;-><init>(Landroid/support/v7/app/e;)V

    iput-object v0, p0, Landroid/support/v7/app/e;->b:Landroid/support/v4/view/KeyEventDispatcher$Component;

    .line 63
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d;->a(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/d;->d()Z

    .line 67
    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->dialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 179
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 181
    :cond_0
    return p1
.end method


# virtual methods
.method public a()Landroid/support/v7/app/d;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    if-nez v0, :cond_0

    .line 169
    invoke-static {p0, p0}, Landroid/support/v7/app/d;->a(Landroid/app/Dialog;Landroid/support/v7/app/c;)Landroid/support/v7/app/d;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/d;

    return-object v0
.end method

.method public a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v7/view/b;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->c(I)Z

    move-result v0

    return v0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-void
.end method

.method public b(Landroid/support/v7/view/b;)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/support/v7/app/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 206
    iget-object v1, p0, Landroid/support/v7/app/e;->b:Landroid/support/v4/view/KeyEventDispatcher$Component;

    invoke-static {v1, v0, p0, p1}, Landroid/support/v4/view/KeyEventDispatcher;->dispatchKeyEvent(Landroid/support/v4/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/d;->b()V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/d;->c()V

    .line 77
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 134
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/d;->a()V

    .line 135
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->b(I)V

    .line 95
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 123
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d;->a(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method
