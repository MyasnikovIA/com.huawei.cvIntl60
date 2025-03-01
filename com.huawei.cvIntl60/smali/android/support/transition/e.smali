.class public Landroid/support/transition/e;
.super Landroid/support/v4/app/FragmentTransitionImpl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransitionImpl;-><init>()V

    return-void
.end method

.method private static a(Landroid/support/transition/l;)Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/support/transition/l;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/e;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/support/transition/l;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/e;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/support/transition/l;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/e;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 291
    if-eqz p1, :cond_0

    .line 292
    check-cast p1, Landroid/support/transition/l;

    .line 293
    invoke-virtual {p1, p2}, Landroid/support/transition/l;->b(Landroid/view/View;)Landroid/support/transition/l;

    .line 295
    :cond_0
    return-void
.end method

.method public addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 99
    check-cast p1, Landroid/support/transition/l;

    .line 100
    if-nez p1, :cond_1

    .line 120
    :cond_0
    return-void

    .line 103
    :cond_1
    instance-of v1, p1, Landroid/support/transition/p;

    if-eqz v1, :cond_2

    .line 104
    check-cast p1, Landroid/support/transition/p;

    .line 105
    invoke-virtual {p1}, Landroid/support/transition/p;->q()I

    move-result v1

    .line 106
    :goto_0
    if-ge v0, v1, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Landroid/support/transition/p;->b(I)Landroid/support/transition/l;

    move-result-object v2

    .line 108
    invoke-virtual {p0, v2, p2}, Landroid/support/transition/e;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p1}, Landroid/support/transition/e;->a(Landroid/support/transition/l;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/support/transition/l;->g()Ljava/util/List;

    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/support/transition/e;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 115
    :goto_1
    if-ge v1, v2, :cond_0

    .line 116
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/transition/l;->b(Landroid/view/View;)Landroid/support/transition/l;

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 210
    check-cast p2, Landroid/support/transition/l;

    invoke-static {p1, p2}, Landroid/support/transition/n;->a(Landroid/view/ViewGroup;Landroid/support/transition/l;)V

    .line 211
    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 43
    instance-of v0, p1, Landroid/support/transition/l;

    return v0
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    if-eqz p1, :cond_0

    .line 50
    check-cast p1, Landroid/support/transition/l;

    invoke-virtual {p1}, Landroid/support/transition/l;->o()Landroid/support/transition/l;

    move-result-object v0

    .line 52
    :cond_0
    return-object v0
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    check-cast p1, Landroid/support/transition/l;

    .line 184
    check-cast p2, Landroid/support/transition/l;

    .line 185
    check-cast p3, Landroid/support/transition/l;

    .line 186
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 187
    new-instance v0, Landroid/support/transition/p;

    invoke-direct {v0}, Landroid/support/transition/p;-><init>()V

    .line 188
    invoke-virtual {v0, p1}, Landroid/support/transition/p;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p2}, Landroid/support/transition/p;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    move-result-object v0

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Landroid/support/transition/p;->a(I)Landroid/support/transition/p;

    move-result-object v1

    .line 196
    :cond_0
    :goto_0
    if-eqz p3, :cond_4

    .line 197
    new-instance v0, Landroid/support/transition/p;

    invoke-direct {v0}, Landroid/support/transition/p;-><init>()V

    .line 198
    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {v0, v1}, Landroid/support/transition/p;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    .line 201
    :cond_1
    invoke-virtual {v0, p3}, Landroid/support/transition/p;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    .line 204
    :goto_1
    return-object v0

    .line 191
    :cond_2
    if-eqz p1, :cond_3

    move-object v1, p1

    .line 192
    goto :goto_0

    .line 193
    :cond_3
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 194
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 204
    goto :goto_1
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Landroid/support/transition/p;

    invoke-direct {v0}, Landroid/support/transition/p;-><init>()V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    check-cast p1, Landroid/support/transition/l;

    invoke-virtual {v0, p1}, Landroid/support/transition/p;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    .line 135
    :cond_0
    if-eqz p2, :cond_1

    .line 136
    check-cast p2, Landroid/support/transition/l;

    invoke-virtual {v0, p2}, Landroid/support/transition/p;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    .line 138
    :cond_1
    if-eqz p3, :cond_2

    .line 139
    check-cast p3, Landroid/support/transition/l;

    invoke-virtual {v0, p3}, Landroid/support/transition/p;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    .line 141
    :cond_2
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    check-cast p1, Landroid/support/transition/l;

    .line 301
    invoke-virtual {p1, p2}, Landroid/support/transition/l;->c(Landroid/view/View;)Landroid/support/transition/l;

    .line 303
    :cond_0
    return-void
.end method

.method public replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 265
    check-cast p1, Landroid/support/transition/l;

    .line 266
    instance-of v1, p1, Landroid/support/transition/p;

    if-eqz v1, :cond_0

    .line 267
    check-cast p1, Landroid/support/transition/p;

    .line 268
    invoke-virtual {p1}, Landroid/support/transition/p;->q()I

    move-result v1

    .line 269
    :goto_0
    if-ge v0, v1, :cond_3

    .line 270
    invoke-virtual {p1, v0}, Landroid/support/transition/p;->b(I)Landroid/support/transition/l;

    move-result-object v2

    .line 271
    invoke-virtual {p0, v2, p2, p3}, Landroid/support/transition/e;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-static {p1}, Landroid/support/transition/e;->a(Landroid/support/transition/l;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 274
    invoke-virtual {p1}, Landroid/support/transition/l;->g()Ljava/util/List;

    move-result-object v1

    .line 275
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 276
    invoke-interface {v1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    if-nez p3, :cond_1

    move v1, v0

    :goto_1
    move v2, v0

    .line 279
    :goto_2
    if-ge v2, v1, :cond_2

    .line 280
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/transition/l;->b(Landroid/view/View;)Landroid/support/transition/l;

    .line 279
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 278
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_3

    .line 283
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/transition/l;->c(Landroid/view/View;)Landroid/support/transition/l;

    .line 282
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 287
    :cond_3
    return-void
.end method

.method public scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    check-cast p1, Landroid/support/transition/l;

    .line 148
    new-instance v0, Landroid/support/transition/e$2;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/transition/e$2;-><init>(Landroid/support/transition/e;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/support/transition/l;->a(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    .line 175
    return-void
.end method

.method public scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    check-cast p1, Landroid/support/transition/l;

    .line 219
    new-instance v0, Landroid/support/transition/e$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/support/transition/e$3;-><init>(Landroid/support/transition/e;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/support/transition/l;->a(Landroid/support/transition/l$c;)Landroid/support/transition/l;

    .line 249
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 308
    check-cast p1, Landroid/support/transition/l;

    .line 309
    new-instance v0, Landroid/support/transition/e$4;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/e$4;-><init>(Landroid/support/transition/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/support/transition/l;->a(Landroid/support/transition/l$b;)V

    .line 319
    :cond_0
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 83
    if-eqz p2, :cond_0

    .line 84
    check-cast p1, Landroid/support/transition/l;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 86
    invoke-virtual {p0, p2, v0}, Landroid/support/transition/e;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 88
    new-instance v1, Landroid/support/transition/e$1;

    invoke-direct {v1, p0, v0}, Landroid/support/transition/e$1;-><init>(Landroid/support/transition/e;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/support/transition/l;->a(Landroid/support/transition/l$b;)V

    .line 95
    :cond_0
    return-void
.end method

.method public setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    check-cast p1, Landroid/support/transition/p;

    .line 69
    invoke-virtual {p1}, Landroid/support/transition/p;->g()Ljava/util/List;

    move-result-object v2

    .line 70
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 71
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 73
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 74
    invoke-static {v2, v0}, Landroid/support/transition/e;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0, p1, p3}, Landroid/support/transition/e;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 79
    return-void
.end method

.method public swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    check-cast p1, Landroid/support/transition/p;

    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/support/transition/p;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    invoke-virtual {p1}, Landroid/support/transition/p;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/transition/e;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 260
    :cond_0
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Landroid/support/transition/p;

    invoke-direct {v0}, Landroid/support/transition/p;-><init>()V

    .line 61
    check-cast p1, Landroid/support/transition/l;

    invoke-virtual {v0, p1}, Landroid/support/transition/p;->a(Landroid/support/transition/l;)Landroid/support/transition/p;

    goto :goto_0
.end method
