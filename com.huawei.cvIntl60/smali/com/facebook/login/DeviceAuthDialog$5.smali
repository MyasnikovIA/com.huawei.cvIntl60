.class Lcom/facebook/login/DeviceAuthDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;Lcom/facebook/internal/u$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Z)Landroid/view/View;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->g(Lcom/facebook/login/DeviceAuthDialog;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->f(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/LoginClient$Request;)V

    .line 380
    return-void
.end method
