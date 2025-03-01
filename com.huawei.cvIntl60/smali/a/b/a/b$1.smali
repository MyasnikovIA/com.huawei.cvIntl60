.class La/b/a/b$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/b/a/b;


# direct methods
.method constructor <init>(La/b/a/b;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v2, -0x1

    const/4 v6, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, La/b/a/b;->a(Ljava/lang/String;I)V

    .line 128
    :goto_1
    return-void

    .line 84
    :sswitch_0
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v0, "com.android.example.USB_PERMISSION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    .line 87
    :pswitch_0
    const-string v0, "Device Attached"

    invoke-static {v0, v3}, La/b/a/b;->a(Ljava/lang/String;I)V

    .line 88
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-static {v0}, La/b/a/b;->a(La/b/a/b;)La/b/a/b$a;

    move-result-object v0

    invoke-interface {v0, v1, v6}, La/b/a/b$a;->a(II)I

    goto :goto_1

    .line 93
    :pswitch_1
    const-string v0, "Device Detached"

    invoke-static {v0, v3}, La/b/a/b;->a(Ljava/lang/String;I)V

    .line 94
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-static {v0}, La/b/a/b;->a(La/b/a/b;)La/b/a/b$a;

    move-result-object v0

    invoke-interface {v0, v3, v6}, La/b/a/b$a;->a(II)I

    .line 95
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-virtual {v0}, La/b/a/b;->d()V

    .line 96
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-virtual {v0}, La/b/a/b;->g()V

    .line 97
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-static {v0}, La/b/a/b;->b(La/b/a/b;)V

    .line 98
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-static {v0, v1}, La/b/a/b;->a(La/b/a/b;I)I

    goto :goto_1

    .line 104
    :pswitch_2
    const-string v0, "permission"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const-string v0, "Permission accept!"

    const/4 v2, 0x3

    invoke-static {v0, v2}, La/b/a/b;->a(Ljava/lang/String;I)V

    .line 106
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-static {v0}, La/b/a/b;->c(La/b/a/b;)I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 107
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-static {v0, v4}, La/b/a/b;->a(La/b/a/b;I)I

    .line 109
    :cond_1
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-static {v0}, La/b/a/b;->a(La/b/a/b;)La/b/a/b$a;

    move-result-object v0

    invoke-interface {v0, v4, v1}, La/b/a/b$a;->a(II)I

    goto :goto_1

    .line 112
    :cond_2
    const-string v0, "Permission denied!"

    invoke-static {v0, v1}, La/b/a/b;->a(Ljava/lang/String;I)V

    .line 113
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-static {v0}, La/b/a/b;->c(La/b/a/b;)I

    move-result v0

    if-ge v0, v4, :cond_3

    .line 114
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-static {v0, v1}, La/b/a/b;->a(La/b/a/b;I)I

    .line 116
    :cond_3
    iget-object v0, p0, La/b/a/b$1;->a:La/b/a/b;

    invoke-static {v0}, La/b/a/b;->a(La/b/a/b;)La/b/a/b$a;

    move-result-object v0

    invoke-interface {v0, v4, v2}, La/b/a/b$a;->a(II)I

    goto/16 :goto_1

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_0
        -0x5fdc9a67 -> :sswitch_1
        0x5fe78cfa -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
