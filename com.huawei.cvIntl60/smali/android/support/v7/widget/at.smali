.class public Landroid/support/v7/widget/at;
.super Landroid/support/v7/widget/ar;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/as;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/at$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;


# instance fields
.field private b:Landroid/support/v7/widget/as;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 60
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/at;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/ar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroid/support/v7/widget/ak;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Landroid/support/v7/widget/at$a;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/at$a;-><init>(Landroid/content/Context;Z)V

    .line 76
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/at$a;->setHoverListener(Landroid/support/v7/widget/as;)V

    .line 77
    return-object v0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V
    .locals 1
    .param p1    # Landroid/support/v7/view/menu/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/widget/at;->b:Landroid/support/v7/widget/as;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/at;->b:Landroid/support/v7/widget/as;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/as;->a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V

    .line 124
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/as;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Landroid/support/v7/widget/at;->b:Landroid/support/v7/widget/as;

    .line 94
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Landroid/support/v7/widget/at;->g:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 84
    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V
    .locals 1
    .param p1    # Landroid/support/v7/view/menu/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/at;->b:Landroid/support/v7/widget/as;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/at;->b:Landroid/support/v7/widget/as;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/as;->b(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V

    .line 116
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/at;->g:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 90
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 5

    .prologue
    .line 101
    sget-object v0, Landroid/support/v7/widget/at;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/at;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/at;->g:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
