.class public Landroid/support/v7/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private b:Landroid/support/v7/widget/bi;

.field private c:Landroid/support/v7/widget/bi;

.field private d:Landroid/support/v7/widget/bi;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    .line 47
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 196
    iget-object v1, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/widget/bi;

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Landroid/support/v7/widget/bi;

    invoke-direct {v1}, Landroid/support/v7/widget/bi;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/widget/bi;

    .line 199
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/widget/bi;

    .line 200
    invoke-virtual {v1}, Landroid/support/v7/widget/bi;->a()V

    .line 202
    iget-object v2, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/support/v4/widget/ImageViewCompat;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 203
    if-eqz v2, :cond_1

    .line 204
    iput-boolean v0, v1, Landroid/support/v7/widget/bi;->d:Z

    .line 205
    iput-object v2, v1, Landroid/support/v7/widget/bi;->a:Landroid/content/res/ColorStateList;

    .line 207
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/support/v4/widget/ImageViewCompat;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_2

    .line 209
    iput-boolean v0, v1, Landroid/support/v7/widget/bi;->c:Z

    .line 210
    iput-object v2, v1, Landroid/support/v7/widget/bi;->b:Landroid/graphics/PorterDuff$Mode;

    .line 213
    :cond_2
    iget-boolean v2, v1, Landroid/support/v7/widget/bi;->d:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/widget/bi;->c:Z

    if-eqz v2, :cond_4

    .line 214
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/support/v7/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;[I)V

    .line 218
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 175
    if-le v2, v3, :cond_2

    .line 178
    iget-object v2, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/bi;

    if-eqz v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 178
    goto :goto_0

    .line 179
    :cond_2
    if-eq v2, v3, :cond_0

    move v0, v1

    .line 186
    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 85
    if-eqz p1, :cond_1

    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-static {v0}, Landroid/support/v7/widget/aj;->a(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/o;->d()V

    .line 96
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-direct {v0}, Landroid/support/v7/widget/bi;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    .line 113
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    iput-object p1, v0, Landroid/support/v7/widget/bi;->a:Landroid/content/res/ColorStateList;

    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bi;->d:Z

    .line 115
    invoke-virtual {p0}, Landroid/support/v7/widget/o;->d()V

    .line 116
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-direct {v0}, Landroid/support/v7/widget/bi;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    iput-object p1, v0, Landroid/support/v7/widget/bi;->b:Landroid/graphics/PorterDuff$Mode;

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bi;->c:Z

    .line 129
    invoke-virtual {p0}, Landroid/support/v7/widget/o;->d()V

    .line 130
    return-void
.end method

.method public a(Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 50
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bk;

    move-result-object v1

    .line 53
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 57
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bk;->g(II)I

    move-result v2

    .line 58
    if-eq v2, v4, :cond_0

    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/support/v7/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iget-object v2, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :cond_0
    if-eqz v0, :cond_1

    .line 67
    invoke-static {v0}, Landroid/support/v7/widget/aj;->a(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tint:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tint:I

    .line 72
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bk;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 71
    invoke-static {v0, v2}, Landroid/support/v4/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 74
    :cond_2
    sget v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bk;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    const/4 v3, -0x1

    .line 77
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bk;->a(II)I

    move-result v2

    const/4 v3, 0x0

    .line 76
    invoke-static {v2, v3}, Landroid/support/v7/widget/aj;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 75
    invoke-static {v0, v2}, Landroid/support/v4/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_3
    invoke-virtual {v1}, Landroid/support/v7/widget/bk;->a()V

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/support/v7/widget/bk;->a()V

    throw v0
.end method

.method a()Z
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    iget-object v0, v0, Landroid/support/v7/widget/bi;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    iget-object v0, v0, Landroid/support/v7/widget/bi;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-static {v0}, Landroid/support/v7/widget/aj;->a(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_0
    if-eqz v0, :cond_1

    .line 143
    invoke-direct {p0}, Landroid/support/v7/widget/o;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-direct {p0, v0}, Landroid/support/v7/widget/o;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    if-eqz v1, :cond_3

    .line 151
    iget-object v1, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/bi;

    iget-object v2, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    .line 152
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    .line 151
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;[I)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/bi;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/bi;

    iget-object v2, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/ImageView;

    .line 155
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    .line 154
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bi;[I)V

    goto :goto_0
.end method
