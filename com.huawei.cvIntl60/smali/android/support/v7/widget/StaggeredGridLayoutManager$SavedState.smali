.class public Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:I

.field d:[I

.field e:I

.field f:[I

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field

.field h:Z

.field i:Z

.field j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3238
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState$1;

    invoke-direct {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3163
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 3167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 3168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 3169
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-lez v0, :cond_0

    .line 3170
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 3171
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3174
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 3175
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    if-lez v0, :cond_1

    .line 3176
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 3177
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3179
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 3180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 3181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_2
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 3183
    const-class v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3184
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3183
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 3185
    return-void

    :cond_2
    move v0, v2

    .line 3179
    goto :goto_0

    :cond_3
    move v0, v2

    .line 3180
    goto :goto_1

    :cond_4
    move v1, v2

    .line 3181
    goto :goto_2
.end method

.method public constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V
    .locals 1

    .prologue
    .line 3187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3188
    iget v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 3189
    iget v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 3190
    iget v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 3191
    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 3192
    iget v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 3193
    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 3194
    iget-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 3195
    iget-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 3196
    iget-boolean v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 3197
    iget-object v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 3198
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3201
    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 3202
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 3203
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 3204
    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 3205
    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 3206
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3209
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 3210
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 3211
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 3212
    iput v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 3213
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 3217
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3222
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3223
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3224
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3225
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-lez v0, :cond_0

    .line 3226
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3228
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3229
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    if-lez v0, :cond_1

    .line 3230
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3232
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3233
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3234
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3235
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3236
    return-void

    :cond_2
    move v0, v2

    .line 3232
    goto :goto_0

    :cond_3
    move v0, v2

    .line 3233
    goto :goto_1

    :cond_4
    move v1, v2

    .line 3234
    goto :goto_2
.end method
