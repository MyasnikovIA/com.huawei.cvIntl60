.class public final Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/a;)Landroid/support/v4/media/AudioAttributesImplApi21;
    .locals 3

    .prologue
    .line 11
    new-instance v1, Landroid/support/v4/media/AudioAttributesImplApi21;

    invoke-direct {v1}, Landroid/support/v4/media/AudioAttributesImplApi21;-><init>()V

    .line 12
    iget-object v0, v1, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/a;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, v1, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 13
    iget v0, v1, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Landroidx/versionedparcelable/a;->b(II)I

    move-result v0

    iput v0, v1, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    .line 14
    return-object v1
.end method

.method public static write(Landroid/support/v4/media/AudioAttributesImplApi21;Landroidx/versionedparcelable/a;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/a;->a(ZZ)V

    .line 19
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;I)V

    .line 20
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->a(II)V

    .line 21
    return-void
.end method
