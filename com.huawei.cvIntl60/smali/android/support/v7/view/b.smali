.class public abstract Landroid/support/v7/view/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/MenuInflater;
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/v7/view/b;->a:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Landroid/support/v7/view/b;->b:Z

    .line 135
    return-void
.end method

.method public abstract b()Landroid/view/Menu;
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Ljava/lang/CharSequence;)V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract f()Ljava/lang/CharSequence;
.end method

.method public abstract g()Ljava/lang/CharSequence;
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public abstract i()Landroid/view/View;
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v7/view/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Landroid/support/v7/view/b;->b:Z

    return v0
.end method
