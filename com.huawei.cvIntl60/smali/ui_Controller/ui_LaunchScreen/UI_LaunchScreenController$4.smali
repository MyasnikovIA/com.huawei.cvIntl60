.class Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;


# direct methods
.method constructor <init>(Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$4;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$4;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->c(Z)V

    .line 620
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$4;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const/16 v1, 0x2f00

    invoke-virtual {v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(I)V

    .line 621
    return-void
.end method
