.class Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRecord"
.end annotation


# instance fields
.field bound:Z

.field final componentName:Landroid/content/ComponentName;

.field retryCount:I

.field service:Landroid/support/v4/app/INotificationSideChannel;

.field taskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/support/v4/app/NotificationManagerCompat$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-boolean v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    .line 565
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    .line 567
    iput v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    .line 570
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    .line 571
    return-void
.end method
