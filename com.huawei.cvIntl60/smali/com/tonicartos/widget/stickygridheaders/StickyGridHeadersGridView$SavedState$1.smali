.class final Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
    .locals 2

    .prologue
    .line 1192
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcel;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
    .locals 1

    .prologue
    .line 1197
    new-array v0, p1, [Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1189
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState$1;->a(Landroid/os/Parcel;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1189
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState$1;->a(I)[Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    move-result-object v0

    return-object v0
.end method
