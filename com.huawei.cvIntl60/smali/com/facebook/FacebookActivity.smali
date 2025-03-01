.class public Lcom/facebook/FacebookActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "PassThrough"

    sput-object v0, Lcom/facebook/FacebookActivity;->a:Ljava/lang/String;

    .line 56
    const-string v0, "SingleFragment"

    sput-object v0, Lcom/facebook/FacebookActivity;->b:Ljava/lang/String;

    .line 57
    const-class v0, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FacebookActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/facebook/internal/p;->c(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/facebook/internal/p;->a(Landroid/os/Bundle;)Lcom/facebook/h;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 137
    invoke-static {v1, v2, v0}, Lcom/facebook/internal/p;->a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/h;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/FacebookActivity;->setResult(ILandroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->finish()V

    .line 143
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 89
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 91
    sget-object v0, Lcom/facebook/FacebookActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    const-string v0, "FacebookDialogFragment"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lcom/facebook/internal/f;

    invoke-direct {v0}, Lcom/facebook/internal/f;-><init>()V

    .line 96
    invoke-virtual {v0, v4}, Lcom/facebook/internal/f;->setRetainInstance(Z)V

    .line 97
    sget-object v1, Lcom/facebook/FacebookActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/facebook/internal/f;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    const-string v0, "DeviceShareDialogFragment"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    new-instance v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {v1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;-><init>()V

    .line 102
    invoke-virtual {v1, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setRetainInstance(Z)V

    .line 103
    const-string v0, "content"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/share/model/ShareContent;)V

    .line 104
    sget-object v0, Lcom/facebook/FacebookActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move-object v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    new-instance v0, Lcom/facebook/login/d;

    invoke-direct {v0}, Lcom/facebook/login/d;-><init>()V

    .line 108
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setRetainInstance(Z)V

    .line 109
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/facebook/common/R$id;->com_facebook_fragment_container:I

    sget-object v3, Lcom/facebook/FacebookActivity;->b:Ljava/lang/String;

    .line 110
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->d:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/facebook/k;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    sget-object v1, Lcom/facebook/FacebookActivity;->c:Ljava/lang/String;

    const-string v2, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application\'s onCreate method."

    invoke-static {v1, v2}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/k;->a(Landroid/content/Context;)V

    .line 78
    :cond_0
    sget v1, Lcom/facebook/common/R$layout;->com_facebook_activity_layout:I

    invoke-virtual {p0, v1}, Lcom/facebook/FacebookActivity;->setContentView(I)V

    .line 80
    sget-object v1, Lcom/facebook/FacebookActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/facebook/FacebookActivity;->c()V

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/FacebookActivity;->d:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method
