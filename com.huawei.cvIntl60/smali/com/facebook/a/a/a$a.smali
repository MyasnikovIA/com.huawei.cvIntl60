.class public Lcom/facebook/a/a/a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field private b:Lcom/facebook/a/a/a/a;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/view/View$AccessibilityDelegate;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 139
    iput-boolean v0, p0, Lcom/facebook/a/a/a$a;->g:Z

    .line 140
    iput-boolean v0, p0, Lcom/facebook/a/a/a$a;->a:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/facebook/a/a/a/a;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 139
    iput-boolean v0, p0, Lcom/facebook/a/a/a$a;->g:Z

    .line 140
    iput-boolean v0, p0, Lcom/facebook/a/a/a$a;->a:Z

    .line 54
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-static {p3}, Lcom/facebook/a/a/a/f;->f(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/a/a$a;->f:Landroid/view/View$AccessibilityDelegate;

    .line 60
    iput-object p1, p0, Lcom/facebook/a/a/a$a;->b:Lcom/facebook/a/a/a/a;

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/a/a$a;->c:Ljava/lang/ref/WeakReference;

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/a/a$a;->d:Ljava/lang/ref/WeakReference;

    .line 63
    invoke-virtual {p1}, Lcom/facebook/a/a/a/a;->d()Lcom/facebook/a/a/a/a$a;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/facebook/a/a/a$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/a/a/a/a;->d()Lcom/facebook/a/a/a/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/a/a/a/a$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 76
    new-instance v1, Lcom/facebook/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported action type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/a/a/a/a$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :pswitch_0
    iput v3, p0, Lcom/facebook/a/a/a$a;->e:I

    .line 78
    :goto_1
    iput-boolean v3, p0, Lcom/facebook/a/a/a$a;->g:Z

    goto :goto_0

    .line 70
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/a/a/a$a;->e:I

    goto :goto_1

    .line 73
    :pswitch_2
    const/16 v0, 0x10

    iput v0, p0, Lcom/facebook/a/a/a$a;->e:I

    goto :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b()V
    .locals 6

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/a/a/a$a;->b:Lcom/facebook/a/a/a/a;

    invoke-virtual {v0}, Lcom/facebook/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/facebook/a/a/a$a;->b:Lcom/facebook/a/a/a/a;

    iget-object v0, p0, Lcom/facebook/a/a/a$a;->d:Ljava/lang/ref/WeakReference;

    .line 102
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/a/a/a$a;->c:Ljava/lang/ref/WeakReference;

    .line 103
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 100
    invoke-static {v3, v0, v1}, Lcom/facebook/a/a/b;->a(Lcom/facebook/a/a/a/a;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    .line 106
    const-string v1, "_valueToSum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "_valueToSum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    const-string v3, "_valueToSum"

    .line 110
    invoke-static {v1}, Lcom/facebook/a/b/b;->a(Ljava/lang/String;)D

    move-result-wide v4

    .line 108
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 113
    :cond_0
    const-string v1, "_is_fb_codeless"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/facebook/k;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v3, Lcom/facebook/a/a/a$a$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/facebook/a/a/a$a$1;-><init>(Lcom/facebook/a/a/a$a;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/facebook/a/a/a$a;->g:Z

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 83
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 84
    invoke-static {}, Lcom/facebook/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsupported action type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget v0, p0, Lcom/facebook/a/a/a$a;->e:I

    if-eq p2, v0, :cond_1

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/a/a$a;->f:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/a/a/a$a;->f:Landroid/view/View$AccessibilityDelegate;

    instance-of v0, v0, Lcom/facebook/a/a/a$a;

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/facebook/a/a/a$a;->f:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/facebook/a/a/a$a;->b()V

    goto :goto_0
.end method
