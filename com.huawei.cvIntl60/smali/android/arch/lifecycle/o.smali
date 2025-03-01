.class public Landroid/arch/lifecycle/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/o$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/arch/lifecycle/o$a;

.field private final b:Landroid/arch/lifecycle/p;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/p;Landroid/arch/lifecycle/o$a;)V
    .locals 0
    .param p1    # Landroid/arch/lifecycle/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/lifecycle/o$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Landroid/arch/lifecycle/o;->a:Landroid/arch/lifecycle/o$a;

    .line 79
    iput-object p1, p0, Landroid/arch/lifecycle/o;->b:Landroid/arch/lifecycle/p;

    .line 80
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroid/arch/lifecycle/n;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/arch/lifecycle/n;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.arch.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/arch/lifecycle/o;->a(Ljava/lang/String;Ljava/lang/Class;)Landroid/arch/lifecycle/n;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Landroid/arch/lifecycle/n;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/arch/lifecycle/n;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Landroid/arch/lifecycle/o;->b:Landroid/arch/lifecycle/p;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/p;->a(Ljava/lang/String;)Landroid/arch/lifecycle/n;

    move-result-object v0

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    :goto_0
    return-object v0

    .line 129
    :cond_0
    if-eqz v0, :cond_1

    .line 134
    :cond_1
    iget-object v0, p0, Landroid/arch/lifecycle/o;->a:Landroid/arch/lifecycle/o$a;

    invoke-interface {v0, p2}, Landroid/arch/lifecycle/o$a;->create(Ljava/lang/Class;)Landroid/arch/lifecycle/n;

    move-result-object v0

    .line 135
    iget-object v1, p0, Landroid/arch/lifecycle/o;->b:Landroid/arch/lifecycle/p;

    invoke-virtual {v1, p1, v0}, Landroid/arch/lifecycle/p;->a(Ljava/lang/String;Landroid/arch/lifecycle/n;)V

    goto :goto_0
.end method
