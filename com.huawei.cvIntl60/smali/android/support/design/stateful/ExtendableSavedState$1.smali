.class final Landroid/support/design/stateful/ExtendableSavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/stateful/ExtendableSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Landroid/support/design/stateful/ExtendableSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/design/stateful/ExtendableSavedState;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    new-instance v0, Landroid/support/design/stateful/ExtendableSavedState;

    invoke-direct {v0, p1, v1, v1}, Landroid/support/design/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/support/design/stateful/ExtendableSavedState$1;)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/stateful/ExtendableSavedState;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/support/design/stateful/ExtendableSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/support/design/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/support/design/stateful/ExtendableSavedState$1;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/design/stateful/ExtendableSavedState;
    .locals 1

    .prologue
    .line 103
    new-array v0, p1, [Landroid/support/design/stateful/ExtendableSavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/support/design/stateful/ExtendableSavedState$1;->a(Landroid/os/Parcel;)Landroid/support/design/stateful/ExtendableSavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/support/design/stateful/ExtendableSavedState$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/stateful/ExtendableSavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/support/design/stateful/ExtendableSavedState$1;->a(I)[Landroid/support/design/stateful/ExtendableSavedState;

    move-result-object v0

    return-object v0
.end method
