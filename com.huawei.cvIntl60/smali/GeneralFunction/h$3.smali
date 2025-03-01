.class LGeneralFunction/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/h;->a()Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/h;


# direct methods
.method constructor <init>(LGeneralFunction/h;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, LGeneralFunction/h$3;->a:LGeneralFunction/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 102
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 114
    :goto_1
    return-void

    .line 102
    :pswitch_0
    const-string v1, "aaa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LGeneralFunction/h$3;->a:LGeneralFunction/h;

    invoke-virtual {v1}, LGeneralFunction/h;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lui_Controller/ui_Setting/UI_SettingInformation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v1, "url"

    iget-object v2, p0, LGeneralFunction/h$3;->a:LGeneralFunction/h;

    const v3, 0x7f0a013e

    invoke-virtual {v2, v3}, LGeneralFunction/h;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "title"

    iget-object v2, p0, LGeneralFunction/h$3;->a:LGeneralFunction/h;

    const v3, 0x7f0a004a

    invoke-virtual {v2, v3}, LGeneralFunction/h;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, LGeneralFunction/h$3;->a:LGeneralFunction/h;

    invoke-virtual {v1, v0}, LGeneralFunction/h;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x17841
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
