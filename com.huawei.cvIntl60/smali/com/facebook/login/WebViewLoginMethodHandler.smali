.class Lcom/facebook/login/WebViewLoginMethodHandler;
.super Lcom/facebook/login/WebLoginMethodHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/WebViewLoginMethodHandler$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/WebViewLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/facebook/internal/w;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/facebook/login/WebViewLoginMethodHandler$2;

    invoke-direct {v0}, Lcom/facebook/login/WebViewLoginMethodHandler$2;-><init>()V

    sput-object v0, Lcom/facebook/login/WebViewLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    .line 173
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 43
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "web_view"

    return-object v0
.end method

.method a(Lcom/facebook/login/LoginClient$Request;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler;->b(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/facebook/login/WebViewLoginMethodHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler$1;-><init>(Lcom/facebook/login/WebViewLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 79
    invoke-static {}, Lcom/facebook/login/LoginClient;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    .line 80
    const-string v2, "e2e"

    iget-object v3, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/login/WebViewLoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/facebook/internal/u;->f(Landroid/content/Context;)Z

    move-result v3

    .line 85
    new-instance v4, Lcom/facebook/login/WebViewLoginMethodHandler$a;

    .line 87
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5, v0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    .line 89
    invoke-virtual {v4, v0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->a(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v3}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->a(Z)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->b(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$a;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v1}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->a(Lcom/facebook/internal/w$c;)Lcom/facebook/internal/w$a;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/facebook/internal/w$a;->a()Lcom/facebook/internal/w;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->c:Lcom/facebook/internal/w;

    .line 95
    new-instance v0, Lcom/facebook/internal/f;

    invoke-direct {v0}, Lcom/facebook/internal/f;-><init>()V

    .line 96
    invoke-virtual {v0, v6}, Lcom/facebook/internal/f;->setRetainInstance(Z)V

    .line 97
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->c:Lcom/facebook/internal/w;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/f;->a(Landroid/app/Dialog;)V

    .line 98
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "FacebookDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/f;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 101
    return v6
.end method

.method b()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->c:Lcom/facebook/internal/w;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->c:Lcom/facebook/internal/w;

    invoke-virtual {v0}, Lcom/facebook/internal/w;->cancel()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->c:Lcom/facebook/internal/w;

    .line 66
    :cond_0
    return-void
.end method

.method b(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/h;)V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/WebLoginMethodHandler;->a(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/h;)V

    .line 107
    return-void
.end method

.method b_()Lcom/facebook/c;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/c;->e:Lcom/facebook/c;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/facebook/login/WebLoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return-void
.end method
