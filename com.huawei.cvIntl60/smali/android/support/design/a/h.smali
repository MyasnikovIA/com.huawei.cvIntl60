.class public Landroid/support/design/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/design/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/design/a/h;->a:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/support/design/a/h;
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 124
    instance-of v2, v0, Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 125
    check-cast v0, Landroid/animation/AnimatorSet;

    .line 126
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/a/h;->a(Ljava/util/List;)Landroid/support/design/a/h;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 127
    :cond_0
    if-eqz v0, :cond_1

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v2}, Landroid/support/design/a/h;->a(Ljava/util/List;)Landroid/support/design/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 132
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v2, "MotionSpec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 136
    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Landroid/support/design/a/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/support/design/a/h;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v2, Landroid/support/design/a/h;

    invoke-direct {v2}, Landroid/support/design/a/h;-><init>()V

    .line 142
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 143
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {v2, v0}, Landroid/support/design/a/h;->a(Landroid/support/design/a/h;Landroid/animation/Animator;)V

    .line 142
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 145
    :cond_0
    return-object v2
.end method

.method private static a(Landroid/support/design/a/h;Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 149
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 150
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 151
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/support/design/a/i;->a(Landroid/animation/ValueAnimator;)Landroid/support/design/a/i;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/design/a/h;->a(Ljava/lang/String;Landroid/support/design/a/i;)V

    .line 155
    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animator must be an ObjectAnimator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()J
    .locals 10

    .prologue
    .line 95
    const-wide/16 v2, 0x0

    .line 96
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/a/h;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 97
    iget-object v0, p0, Landroid/support/design/a/h;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/a/i;

    .line 98
    invoke-virtual {v0}, Landroid/support/design/a/i;->a()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/support/design/a/i;->b()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :cond_0
    return-wide v2
.end method

.method public a(Ljava/lang/String;Landroid/support/design/a/i;)V
    .locals 1
    .param p2    # Landroid/support/design/a/i;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/design/a/h;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/design/a/h;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Landroid/support/design/a/i;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Landroid/support/design/a/h;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/a/i;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 159
    if-ne p0, p1, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    .line 162
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_2
    check-cast p1, Landroid/support/design/a/h;

    .line 168
    iget-object v0, p0, Landroid/support/design/a/h;->a:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v1, p1, Landroid/support/design/a/h;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/design/a/h;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, " timings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Landroid/support/design/a/h;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
