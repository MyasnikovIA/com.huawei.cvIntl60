.class final Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$1;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {p2}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Intent;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-object v1, v1, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    iput-object v0, v1, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-static {v1}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->access$100(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;)Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lcom/google/android/exoplayer/audio/AudioCapabilities;)V

    .line 99
    :cond_0
    return-void
.end method
