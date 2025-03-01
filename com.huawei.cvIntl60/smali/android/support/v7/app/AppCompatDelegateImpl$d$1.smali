.class Landroid/support/v7/app/AppCompatDelegateImpl$d$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImpl$d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImpl$d;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl$d;)V
    .locals 0

    .prologue
    .line 2699
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$d$1;->a:Landroid/support/v7/app/AppCompatDelegateImpl$d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2705
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$d$1;->a:Landroid/support/v7/app/AppCompatDelegateImpl$d;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$d;->b()V

    .line 2706
    return-void
.end method
