.class Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinderWrapper"
.end annotation


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field private mRootHints:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2150
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mMessenger:Landroid/os/Messenger;

    .line 2151
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Landroid/os/Bundle;

    .line 2152
    return-void
.end method

.method private sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 2225
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2226
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2227
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2228
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2229
    iput-object p3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2230
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 2231
    return-void
.end method


# virtual methods
.method addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 2169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2170
    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    const-string v1, "data_callback_token"

    invoke-static {v0, v1, p2}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2172
    const-string v1, "data_options"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2173
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0, p4}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2174
    return-void
.end method

.method connect(Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 3

    .prologue
    .line 2156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2157
    const-string v1, "data_package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const-string v1, "data_root_hints"

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2159
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p2}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2160
    return-void
.end method

.method disconnect(Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 2163
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2164
    return-void
.end method

.method getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 2187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2188
    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const-string v1, "data_result_receiver"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2190
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0, p3}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2191
    return-void
.end method

.method registerCallbackMessenger(Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 3

    .prologue
    .line 2195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2196
    const-string v1, "data_package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    const-string v1, "data_root_hints"

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2198
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0, p2}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2199
    return-void
.end method

.method removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 2179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2180
    const-string v1, "data_media_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    const-string v1, "data_callback_token"

    invoke-static {v0, v1, p2}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2182
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p3}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2183
    return-void
.end method

.method search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 2207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2208
    const-string v1, "data_search_query"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    const-string v1, "data_search_extras"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2210
    const-string v1, "data_result_receiver"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2211
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0, p4}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2212
    return-void
.end method

.method sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 2216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2217
    const-string v1, "data_custom_action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    const-string v1, "data_custom_action_extras"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2219
    const-string v1, "data_result_receiver"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2220
    const/16 v1, 0x9

    invoke-direct {p0, v1, v0, p4}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2221
    return-void
.end method

.method unregisterCallbackMessenger(Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 2202
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->sendRequest(ILandroid/os/Bundle;Landroid/os/Messenger;)V

    .line 2203
    return-void
.end method
