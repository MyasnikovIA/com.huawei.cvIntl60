.class public Lcom/facebook/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/a/b$b;,
        Lcom/facebook/a/a/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/os/Handler;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/a/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/facebook/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/a/a/b;->b:Landroid/os/Handler;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/a/b;->c:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/a/b;->d:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/a/b;->e:Ljava/util/HashMap;

    .line 70
    return-void
.end method

.method public static a(Lcom/facebook/a/a/a/a;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 101
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 103
    if-nez p0, :cond_0

    move-object v0, v7

    .line 149
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/a/a/a/a;->b()Ljava/util/List;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_5

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/a/a/a/b;

    .line 110
    iget-object v0, v6, Lcom/facebook/a/a/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/facebook/a/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 111
    iget-object v0, v6, Lcom/facebook/a/a/a/b;->a:Ljava/lang/String;

    iget-object v1, v6, Lcom/facebook/a/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, v6, Lcom/facebook/a/a/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 114
    iget-object v0, v6, Lcom/facebook/a/a/a/b;->d:Ljava/lang/String;

    .line 115
    const-string v1, "relative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-object v2, v6, Lcom/facebook/a/a/a/b;->c:Ljava/util/List;

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/facebook/a/a/b$b;->a(Lcom/facebook/a/a/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 135
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/a/b$a;

    .line 136
    invoke-virtual {v0}, Lcom/facebook/a/a/b$a;->a()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {v0}, Lcom/facebook/a/a/b$a;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/a/a/f;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 141
    iget-object v1, v6, Lcom/facebook/a/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_4
    iget-object v2, v6, Lcom/facebook/a/a/a/b;->c:Ljava/util/List;

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 125
    invoke-static/range {v0 .. v5}, Lcom/facebook/a/a/b$b;->a(Lcom/facebook/a/a/a/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v7

    .line 149
    goto/16 :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/a/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/a/a/b;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/a/a/b;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/facebook/a/a/b;->c()V

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/a/a/b$1;

    invoke-direct {v1, p0}, Lcom/facebook/a/a/b$1;-><init>(Lcom/facebook/a/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/a/a/b;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 168
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v3, Lcom/facebook/a/a/b$b;

    iget-object v4, p0, Lcom/facebook/a/a/b;->b:Landroid/os/Handler;

    iget-object v5, p0, Lcom/facebook/a/a/b;->e:Ljava/util/HashMap;

    invoke-direct {v3, v2, v4, v5, v0}, Lcom/facebook/a/a/b$b;-><init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/facebook/a/a/b;->d:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/facebook/internal/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 77
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Can\'t add activity to CodelessMatcher on non-UI thread"

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/a/b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/facebook/a/a/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    invoke-direct {p0}, Lcom/facebook/a/a/b;->b()V

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/facebook/internal/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 89
    new-instance v0, Lcom/facebook/h;

    const-string v1, "Can\'t remove activity from CodelessMatcher on non-UI thread"

    invoke-direct {v0, v1}, Lcom/facebook/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/facebook/a/a/b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/facebook/a/a/b;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 95
    iget-object v0, p0, Lcom/facebook/a/a/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method
