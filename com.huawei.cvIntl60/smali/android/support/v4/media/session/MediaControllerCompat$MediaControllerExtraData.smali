.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;
.super Landroid/support/v4/app/SupportActivity$ExtraData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaControllerExtraData"
.end annotation


# instance fields
.field private final mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/support/v4/app/SupportActivity$ExtraData;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 142
    return-void
.end method


# virtual methods
.method getMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method
