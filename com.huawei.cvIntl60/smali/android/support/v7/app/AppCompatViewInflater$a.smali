.class Landroid/support/v7/app/AppCompatViewInflater$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatViewInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/reflect/Method;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->a:Landroid/view/View;

    .line 375
    iput-object p2, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->b:Ljava/lang/String;

    .line 376
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 397
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    .line 399
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->b:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 401
    if-eqz v1, :cond_0

    .line 402
    iput-object v1, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->c:Ljava/lang/reflect/Method;

    .line 403
    iput-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->d:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    return-void

    .line 407
    :catch_0
    move-exception v1

    .line 411
    :cond_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 412
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 420
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v0, ""

    .line 422
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(View) in a parent or ancestor Context for android:onClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "attribute defined on view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->a:Landroid/view/View;

    .line 424
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " with id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->a:Landroid/view/View;

    .line 421
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatViewInflater$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatViewInflater$a;->d:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 393
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not execute non-public method for android:onClick"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 389
    :catch_1
    move-exception v0

    .line 390
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not execute method for android:onClick"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
