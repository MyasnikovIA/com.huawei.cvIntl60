.class public Landroid/support/transition/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/n$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/support/transition/l;

.field private static c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/l;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Landroid/support/transition/b;

    invoke-direct {v0}, Landroid/support/transition/b;-><init>()V

    sput-object v0, Landroid/support/transition/n;->b:Landroid/support/transition/l;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/n;->c:Ljava/lang/ThreadLocal;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/transition/n;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static a()Landroid/support/v4/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/l;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 195
    sget-object v0, Landroid/support/transition/n;->c:Ljava/lang/ThreadLocal;

    .line 196
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 199
    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-object v0

    .line 203
    :cond_0
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 204
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 205
    sget-object v2, Landroid/support/transition/n;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/support/transition/l;)V
    .locals 2
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 402
    sget-object v0, Landroid/support/transition/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    sget-object v0, Landroid/support/transition/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    if-nez p1, :cond_0

    .line 409
    sget-object p1, Landroid/support/transition/n;->b:Landroid/support/transition/l;

    .line 411
    :cond_0
    invoke-virtual {p1}, Landroid/support/transition/l;->o()Landroid/support/transition/l;

    move-result-object v0

    .line 412
    invoke-static {p0, v0}, Landroid/support/transition/n;->c(Landroid/view/ViewGroup;Landroid/support/transition/l;)V

    .line 413
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/transition/k;->a(Landroid/view/View;Landroid/support/transition/k;)V

    .line 414
    invoke-static {p0, v0}, Landroid/support/transition/n;->b(Landroid/view/ViewGroup;Landroid/support/transition/l;)V

    .line 416
    :cond_1
    return-void
.end method

.method private static b(Landroid/view/ViewGroup;Landroid/support/transition/l;)V
    .locals 2

    .prologue
    .line 211
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 212
    new-instance v0, Landroid/support/transition/n$a;

    invoke-direct {v0, p1, p0}, Landroid/support/transition/n$a;-><init>(Landroid/support/transition/l;Landroid/view/ViewGroup;)V

    .line 213
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 214
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 216
    :cond_0
    return-void
.end method

.method private static c(Landroid/view/ViewGroup;Landroid/support/transition/l;)V
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Landroid/support/transition/n;->a()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 305
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/l;

    .line 307
    invoke-virtual {v0, p0}, Landroid/support/transition/l;->d(Landroid/view/View;)V

    goto :goto_0

    .line 311
    :cond_0
    if-eqz p1, :cond_1

    .line 312
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/support/transition/l;->a(Landroid/view/ViewGroup;Z)V

    .line 316
    :cond_1
    invoke-static {p0}, Landroid/support/transition/k;->a(Landroid/view/View;)Landroid/support/transition/k;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {v0}, Landroid/support/transition/k;->a()V

    .line 320
    :cond_2
    return-void
.end method
