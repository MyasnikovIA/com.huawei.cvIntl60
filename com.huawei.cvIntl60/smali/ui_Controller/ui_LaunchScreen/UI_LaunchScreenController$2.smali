.class Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->d()V
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
    .line 319
    iput-object p1, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$2;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$2;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(Z)V

    .line 323
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$2;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    invoke-virtual {v0}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->g()V

    .line 324
    iget-object v0, p0, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController$2;->a:Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;

    const/16 v1, 0x2907

    invoke-virtual {v0, v1}, Lui_Controller/ui_LaunchScreen/UI_LaunchScreenController;->a(I)V

    .line 325
    return-void
.end method
