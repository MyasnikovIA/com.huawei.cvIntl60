.class public Landroid/support/design/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final a:Z

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/design/f/a;->a:Z

    .line 38
    new-array v0, v1, [I

    const v3, 0x10100a7

    aput v3, v0, v2

    sput-object v0, Landroid/support/design/f/a;->b:[I

    .line 41
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/f/a;->c:[I

    .line 44
    new-array v0, v1, [I

    const v3, 0x101009c

    aput v3, v0, v2

    sput-object v0, Landroid/support/design/f/a;->d:[I

    .line 47
    new-array v0, v1, [I

    const v3, 0x1010367

    aput v3, v0, v2

    sput-object v0, Landroid/support/design/f/a;->e:[I

    .line 51
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/f/a;->f:[I

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/design/f/a;->g:[I

    .line 57
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/support/design/f/a;->h:[I

    .line 60
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/support/design/f/a;->i:[I

    .line 63
    new-array v0, v1, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/f/a;->j:[I

    return-void

    :cond_0
    move v0, v2

    .line 36
    goto :goto_0

    .line 41
    nop

    :array_0
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    .line 54
    :array_2
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    .line 57
    :array_3
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    .line 60
    :array_4
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data
.end method

.method private static a(I)I
    .locals 2
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 189
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    invoke-static {p0, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/res/ColorStateList;[I)I
    .locals 2
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 174
    if-eqz p0, :cond_1

    .line 175
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 179
    :goto_0
    sget-boolean v1, Landroid/support/design/f/a;->a:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/support/design/f/a;->a(I)I

    move-result v0

    :cond_0
    return v0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 95
    sget-boolean v0, Landroid/support/design/f/a;->a:Z

    if-eqz v0, :cond_0

    .line 98
    new-array v1, v5, [[I

    .line 99
    new-array v2, v5, [I

    .line 108
    sget-object v0, Landroid/support/design/f/a;->j:[I

    aput-object v0, v1, v4

    .line 109
    sget-object v0, Landroid/support/design/f/a;->f:[I

    invoke-static {p0, v0}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v4

    .line 113
    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    aput-object v0, v1, v3

    .line 114
    sget-object v0, Landroid/support/design/f/a;->b:[I

    invoke-static {p0, v0}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v3

    .line 117
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 167
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const/16 v0, 0xa

    .line 121
    new-array v1, v0, [[I

    .line 122
    new-array v2, v0, [I

    .line 125
    sget-object v0, Landroid/support/design/f/a;->f:[I

    aput-object v0, v1, v4

    .line 126
    sget-object v0, Landroid/support/design/f/a;->f:[I

    invoke-static {p0, v0}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v4

    .line 129
    sget-object v0, Landroid/support/design/f/a;->g:[I

    aput-object v0, v1, v3

    .line 130
    sget-object v0, Landroid/support/design/f/a;->g:[I

    invoke-static {p0, v0}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v3

    .line 133
    sget-object v0, Landroid/support/design/f/a;->h:[I

    aput-object v0, v1, v5

    .line 134
    sget-object v0, Landroid/support/design/f/a;->h:[I

    invoke-static {p0, v0}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v5

    .line 135
    const/4 v0, 0x3

    .line 137
    sget-object v3, Landroid/support/design/f/a;->i:[I

    aput-object v3, v1, v0

    .line 138
    sget-object v3, Landroid/support/design/f/a;->i:[I

    invoke-static {p0, v3}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    .line 139
    const/4 v0, 0x4

    .line 142
    sget-object v3, Landroid/support/design/f/a;->j:[I

    aput-object v3, v1, v0

    .line 143
    aput v4, v2, v0

    .line 144
    const/4 v0, 0x5

    .line 146
    sget-object v3, Landroid/support/design/f/a;->b:[I

    aput-object v3, v1, v0

    .line 147
    sget-object v3, Landroid/support/design/f/a;->b:[I

    invoke-static {p0, v3}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    .line 148
    const/4 v0, 0x6

    .line 150
    sget-object v3, Landroid/support/design/f/a;->c:[I

    aput-object v3, v1, v0

    .line 151
    sget-object v3, Landroid/support/design/f/a;->c:[I

    invoke-static {p0, v3}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    .line 152
    const/4 v0, 0x7

    .line 154
    sget-object v3, Landroid/support/design/f/a;->d:[I

    aput-object v3, v1, v0

    .line 155
    sget-object v3, Landroid/support/design/f/a;->d:[I

    invoke-static {p0, v3}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    .line 156
    const/16 v0, 0x8

    .line 158
    sget-object v3, Landroid/support/design/f/a;->e:[I

    aput-object v3, v1, v0

    .line 159
    sget-object v3, Landroid/support/design/f/a;->e:[I

    invoke-static {p0, v3}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    .line 160
    const/16 v0, 0x9

    .line 163
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    aput-object v3, v1, v0

    .line 164
    aput v4, v2, v0

    .line 167
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_0
.end method
