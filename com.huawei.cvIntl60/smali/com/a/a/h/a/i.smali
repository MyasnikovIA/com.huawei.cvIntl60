.class public abstract Lcom/a/a/h/a/i;
.super Lcom/a/a/h/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/h/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/h/a/a",
        "<TZ;>;"
    }
.end annotation


# static fields
.field private static b:Z

.field private static c:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/h/a/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/a/a/h/a/i;->b:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/h/a/i;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/a/h/a/i;-><init>(Landroid/view/View;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/a/a/h/a/a;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/a/a/h/a/i;->a:Landroid/view/View;

    .line 68
    new-instance v0, Lcom/a/a/h/a/i$a;

    invoke-direct {v0, p1, p2}, Lcom/a/a/h/a/i$a;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/a/a/h/a/i;->d:Lcom/a/a/h/a/i$a;

    .line 69
    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lcom/a/a/h/a/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/a/a/h/a/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/h/a/i;->a:Landroid/view/View;

    sget-object v1, Lcom/a/a/h/a/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 146
    sget-object v0, Lcom/a/a/h/a/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Lcom/a/a/h/a/i;->b:Z

    .line 148
    iget-object v0, p0, Lcom/a/a/h/a/i;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/a/a/h/a/i;->a:Landroid/view/View;

    sget-object v1, Lcom/a/a/h/a/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/a/a/h/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/a/a/h/a/i;->d:Lcom/a/a/h/a/i$a;

    invoke-virtual {v0}, Lcom/a/a/h/a/i$a;->b()V

    .line 101
    return-void
.end method

.method public a(Lcom/a/a/h/a/g;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/a/a/h/a/i;->d:Lcom/a/a/h/a/i$a;

    invoke-virtual {v0, p1}, Lcom/a/a/h/a/i$a;->a(Lcom/a/a/h/a/g;)V

    .line 90
    return-void
.end method

.method public a(Lcom/a/a/h/a;)V
    .locals 0
    .param p1    # Lcom/a/a/h/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/a/a/h/a/i;->a(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public b()Lcom/a/a/h/a;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/a/a/h/a/i;->a()Ljava/lang/Object;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    instance-of v1, v0, Lcom/a/a/h/a;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Lcom/a/a/h/a;

    .line 137
    :goto_0
    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Lcom/a/a/h/a/g;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/a/a/h/a/i;->d:Lcom/a/a/h/a/i$a;

    invoke-virtual {v0, p1}, Lcom/a/a/h/a/i$a;->b(Lcom/a/a/h/a/g;)V

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/h/a/i;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
