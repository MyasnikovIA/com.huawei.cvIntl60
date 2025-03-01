.class public LGeneralFunction/l/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/l/d$a;,
        LGeneralFunction/l/d$b;
    }
.end annotation


# instance fields
.field private a:LGeneralFunction/l/d$b;

.field private b:LGeneralFunction/l/d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    iput-object v0, p0, LGeneralFunction/l/d;->a:LGeneralFunction/l/d$b;

    .line 14
    iput-object v0, p0, LGeneralFunction/l/d;->b:LGeneralFunction/l/d$a;

    return-void
.end method


# virtual methods
.method public a(LGeneralFunction/l/c;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, LGeneralFunction/l/d;->a:LGeneralFunction/l/d$b;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, LGeneralFunction/l/d;->a:LGeneralFunction/l/d$b;

    invoke-interface {v0, p1}, LGeneralFunction/l/d$b;->a(LGeneralFunction/l/c;)V

    .line 28
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v2, LGeneralFunction/l/c;

    invoke-direct {v2}, LGeneralFunction/l/c;-><init>()V

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 57
    :goto_1
    return-void

    .line 48
    :pswitch_0
    const-string v4, "ShareResultCallback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 51
    :pswitch_1
    const-string v0, "ShareResultCallback"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, LGeneralFunction/l/c;->a:I

    .line 52
    invoke-virtual {p0, v2}, LGeneralFunction/l/d;->a(LGeneralFunction/l/c;)V

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x2c081121
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
