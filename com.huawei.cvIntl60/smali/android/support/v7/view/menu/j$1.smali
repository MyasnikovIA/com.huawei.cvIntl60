.class Landroid/support/v7/view/menu/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/view/menu/j;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/j;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/j;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Landroid/support/v7/view/menu/j$1;->a:Landroid/support/v7/view/menu/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Landroid/support/v7/view/menu/j$1;->a:Landroid/support/v7/view/menu/j;

    iget-object v0, v0, Landroid/support/v7/view/menu/j;->a:Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/view/menu/j$1;->a:Landroid/support/v7/view/menu/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/j;)V

    .line 804
    return-void
.end method
