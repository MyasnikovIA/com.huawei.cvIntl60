.class public final Landroid/support/customtabs/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Landroid/support/customtabs/a;->a:Landroid/content/Intent;

    .line 267
    iput-object p2, p0, Landroid/support/customtabs/a;->b:Landroid/os/Bundle;

    .line 268
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/support/customtabs/a$1;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/customtabs/a;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/customtabs/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 262
    iget-object v0, p0, Landroid/support/customtabs/a;->a:Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/customtabs/a;->b:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 263
    return-void
.end method
