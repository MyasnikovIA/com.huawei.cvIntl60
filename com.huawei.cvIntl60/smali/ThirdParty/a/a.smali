.class public LThirdParty/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LThirdParty/a/a$a;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field public a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private e:Lui_Controller/ui_StartMode/UI_ModeMain;

.field private f:LThirdParty/a/a$a;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "profile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://www.googleapis.com/auth/youtube"

    aput-object v2, v0, v1

    sput-object v0, LThirdParty/a/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, LThirdParty/a/a;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, LThirdParty/a/a;->g:Z

    .line 52
    iput-object p1, p0, LThirdParty/a/a;->e:Lui_Controller/ui_StartMode/UI_ModeMain;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    .line 58
    const-string v0, "GoogleLoginManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, LThirdParty/a/a;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 83
    iget-object v0, p0, LThirdParty/a/a;->f:LThirdParty/a/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LThirdParty/a/a$a;->a(I)V

    .line 84
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 195
    const-string v0, "[DEBUG] chooseAccount"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 196
    iget-object v0, p0, LThirdParty/a/a;->e:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->b:LGeneralFunction/a/a;

    iget-object v1, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, LGeneralFunction/a/a;->startActivityForResult(Landroid/content/Intent;I)V

    .line 197
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "[DEBUG] haveGooglePlayServices"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 203
    iget-object v0, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getSelectedAccountName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    invoke-direct {p0}, LThirdParty/a/a;->f()V

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 88
    const-string v0, "[DEBUG] Enter accountLogin"

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, LThirdParty/a/a;->e:Lui_Controller/ui_StartMode/UI_ModeMain;

    sget-object v1, LThirdParty/a/a;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iput-object v0, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 92
    iget-object v0, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    new-instance v1, Lcom/google/api/client/util/ExponentialBackOff;

    invoke-direct {v1}, Lcom/google/api/client/util/ExponentialBackOff;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setBackOff(Lcom/google/api/client/util/BackOff;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 94
    invoke-direct {p0}, LThirdParty/a/a;->f()V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DEBUG] accountLogin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DEBUG] handleAvtivityResult requestCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 149
    :pswitch_1
    const-string v0, "[DEBUG] REQUEST_GOOGLE_PLAY_SERVICES"

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 150
    if-ne p2, v3, :cond_1

    .line 152
    invoke-direct {p0}, LThirdParty/a/a;->g()V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, LThirdParty/a/a;->d()Z

    goto :goto_0

    .line 160
    :pswitch_2
    const-string v0, "[DEBUG] REQUEST_AUTHORIZATION"

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 161
    if-eq p2, v3, :cond_0

    .line 163
    invoke-direct {p0}, LThirdParty/a/a;->f()V

    goto :goto_0

    .line 167
    :pswitch_3
    const-string v0, "[DEBUG] REQUEST_ACCOUNT_PICKER"

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 168
    if-ne p2, v3, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_2

    .line 174
    iput-object v0, p0, LThirdParty/a/a;->c:Ljava/lang/String;

    .line 175
    iget-object v1, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v1, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DEBUG] REQUEST_ACCOUNT_PICKER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 177
    iget-object v0, p0, LThirdParty/a/a;->f:LThirdParty/a/a$a;

    const/4 v1, 0x0

    iget-object v2, p0, LThirdParty/a/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LThirdParty/a/a$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_2
    const-string v0, "[DEBUG] accountName NULL"

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 182
    iget-object v0, p0, LThirdParty/a/a;->f:LThirdParty/a/a$a;

    invoke-interface {v0, v3, v4}, LThirdParty/a/a$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, LThirdParty/a/a;->f:LThirdParty/a/a$a;

    invoke-interface {v0, v3, v4}, LThirdParty/a/a$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public a(LThirdParty/a/a$a;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, LThirdParty/a/a;->f:LThirdParty/a/a$a;

    .line 240
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, LThirdParty/a/a;->e:Lui_Controller/ui_StartMode/UI_ModeMain;

    sget-object v1, LThirdParty/a/a;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iput-object v0, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 64
    iget-object v0, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    new-instance v1, Lcom/google/api/client/util/ExponentialBackOff;

    invoke-direct {v1}, Lcom/google/api/client/util/ExponentialBackOff;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setBackOff(Lcom/google/api/client/util/BackOff;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 65
    iget-object v0, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 66
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, LThirdParty/a/a;->f:LThirdParty/a/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LThirdParty/a/a$a;->a(I)V

    .line 104
    return-void
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    if-eqz v1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google getSelectedAccountName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v2}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getSelectedAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 214
    iget-object v1, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getSelectedAccountName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 217
    :cond_0
    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 222
    const-string v0, "[DEBUG] checkGooglePlayServicesAvailable"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 223
    iget-object v0, p0, LThirdParty/a/a;->e:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 224
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 114
    const-string v0, "[DEBUG] onConnected"

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 115
    iget-boolean v0, p0, LThirdParty/a/a;->g:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, LThirdParty/a/a;->e()V

    .line 118
    iput-boolean v3, p0, LThirdParty/a/a;->g:Z

    .line 134
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, LThirdParty/a/a;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LThirdParty/a/a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    iget-object v0, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    iget-object v1, p0, LThirdParty/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DEBUG] AccountName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DEBUG] Scope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LThirdParty/a/a;->a:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 133
    iget-object v0, p0, LThirdParty/a/a;->f:LThirdParty/a/a$a;

    iget-object v1, p0, LThirdParty/a/a;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, LThirdParty/a/a$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    .line 109
    const-string v0, "[DEBUG] onConnectionFailed"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 138
    const-string v0, "[DEBUG] onConnectionSuspended"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LThirdParty/a/a;->a(Ljava/lang/String;I)V

    .line 139
    return-void
.end method
