.class Lcom/facebook/login/DeviceAuthDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->a(Z)Landroid/view/View;
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
    .line 250
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$2;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$2;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog;->a()V

    .line 254
    return-void
.end method
