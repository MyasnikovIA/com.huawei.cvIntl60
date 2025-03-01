.class Landroid/support/transition/n$a$1;
.super Landroid/support/transition/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/n$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/util/ArrayMap;

.field final synthetic b:Landroid/support/transition/n$a;


# direct methods
.method constructor <init>(Landroid/support/transition/n$a;Landroid/support/v4/util/ArrayMap;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Landroid/support/transition/n$a$1;->b:Landroid/support/transition/n$a;

    iput-object p2, p0, Landroid/support/transition/n$a$1;->a:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0}, Landroid/support/transition/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/l;)V
    .locals 2
    .param p1    # Landroid/support/transition/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/transition/n$a$1;->a:Landroid/support/v4/util/ArrayMap;

    iget-object v1, p0, Landroid/support/transition/n$a$1;->b:Landroid/support/transition/n$a;

    iget-object v1, v1, Landroid/support/transition/n$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 286
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method
