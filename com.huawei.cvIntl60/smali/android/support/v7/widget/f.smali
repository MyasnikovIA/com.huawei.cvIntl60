.class Landroid/support/v7/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/widget/k;

.field private c:I

.field private d:Landroid/support/v7/widget/bi;

.field private e:Landroid/support/v7/widget/bi;

.field private f:Landroid/support/v7/widget/bi;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/f;->c:I

    .line 42
    iput-object p1, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 43
    invoke-static {}, Landroid/support/v7/widget/k;->a()Landroid/support/v7/widget/k;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/f;->b:Landroid/support/v7/widget/k;

    .line 44
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 173
    iget-object v1, p0, Landroid/support/v7/widget/f;->f:Landroid/support/v7/widget/bi;

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Landroid/support/v7/widget/bi;

    invoke-direct {v1}, Landroid/support/v7/widget/bi;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/f;->f:Landroid/support/v7/widget/bi;

    .line 176
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/f;->f:Landroid/support/v7/widget/bi;

    .line 177
    invoke-virtual {v1}, Landroid/support/v7/widget/bi;->a()V

    .line 179
    iget-object v2, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 180
    if-eqz v2, :cond_1

    .line 181
    iput-boolean v0, v1, Landroid/support/v7/widget/bi;->d:Z

    .line 182
    iput-object v2, v1, Landroid/support/v7/widget/bi;->a:Landroid/content/res/ColorStateList;

    .line 184
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 185
    if-eqz v2, :cond_2

    .line 186
    iput-boolean v0, v1, Landroid/support/v7/widget/bi;->c:Z

    .line 187
    iput-object v2, v1, Landroid/support/v7/widget/bi;->b:Landroid/graphics/PorterDuff$Mode;

    .line 190
    :cond_2
    iget-boolean v2, v1, Landroid/support/v7/widget/bi;->d:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/widget/bi;->c:Z

    if-eqz v2, :cond_4

    .line 191
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/support/v7/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;[I)V

    .line 195
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 152
    if-le v2, v3, :cond_2

    .line 155
    iget-object v2, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/bi;

    if-eqz v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_2
    if-eq v2, v3, :cond_0

    move v0, v1

    .line 163
    goto :goto_0
.end method


# virtual methods
.method a()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    iget-object v0, v0, Landroid/support/v7/widget/bi;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 75
    iput p1, p0, Landroid/support/v7/widget/f;->c:I

    .line 77
    iget-object v0, p0, Landroid/support/v7/widget/f;->b:Landroid/support/v7/widget/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/f;->b:Landroid/support/v7/widget/k;

    iget-object v1, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/k;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 77
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/f;->b(Landroid/content/res/ColorStateList;)V

    .line 80
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->c()V

    .line 81
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-direct {v0}, Landroid/support/v7/widget/bi;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    .line 94
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    iput-object p1, v0, Landroid/support/v7/widget/bi;->a:Landroid/content/res/ColorStateList;

    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bi;->d:Z

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->c()V

    .line 97
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-direct {v0}, Landroid/support/v7/widget/bi;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    iput-object p1, v0, Landroid/support/v7/widget/bi;->b:Landroid/graphics/PorterDuff$Mode;

    .line 108
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bi;->c:Z

    .line 110
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->c()V

    .line 111
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/f;->c:I

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/f;->b(Landroid/content/res/ColorStateList;)V

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->c()V

    .line 88
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bk;

    move-result-object v1

    .line 50
    :try_start_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/f;->c:I

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/f;->b:Landroid/support/v7/widget/k;

    iget-object v2, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/f;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/k;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/f;->b(Landroid/content/res/ColorStateList;)V

    .line 59
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 61
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bk;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 60
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 63
    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v3, -0x1

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bk;->a(II)I

    move-result v2

    const/4 v3, 0x0

    .line 65
    invoke-static {v2, v3}, Landroid/support/v7/widget/aj;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 64
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/bk;->a()V

    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/support/v7/widget/bk;->a()V

    throw v0
.end method

.method b()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    iget-object v0, v0, Landroid/support/v7/widget/bi;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 138
    if-eqz p1, :cond_1

    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/bi;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-direct {v0}, Landroid/support/v7/widget/bi;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/bi;

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/bi;

    iput-object p1, v0, Landroid/support/v7/widget/bi;->a:Landroid/content/res/ColorStateList;

    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/bi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bi;->d:Z

    .line 147
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->c()V

    .line 148
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/bi;

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Landroid/support/v7/widget/f;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-direct {p0, v0}, Landroid/support/v7/widget/f;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/bi;

    iget-object v2, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 128
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;[I)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/bi;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/bi;

    iget-object v2, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 131
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;[I)V

    goto :goto_0
.end method
