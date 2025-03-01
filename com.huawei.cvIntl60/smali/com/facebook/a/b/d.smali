.class public Lcom/facebook/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/b/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/facebook/a/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/facebook/a/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/b/d;->a:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/facebook/a/b/h;

    .line 51
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/a/b/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/a/b/d;->b:Lcom/facebook/a/b/h;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {}, Lcom/facebook/k;->l()Z

    move-result v2

    .line 57
    const-string v3, "context"

    invoke-static {v0, v3}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    if-eqz v2, :cond_0

    .line 59
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_1

    .line 60
    check-cast v0, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/facebook/a/g;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-object v0, Lcom/facebook/a/b/d;->a:Ljava/lang/String;

    const-string v1, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lcom/facebook/a/b/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 116
    invoke-static {}, Lcom/facebook/a/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget-object v0, Lcom/facebook/a/b/d$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/a/b/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    const-string v0, "SubscriptionRestore"

    .line 141
    :goto_1
    invoke-static {p1, p2}, Lcom/facebook/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/a/b/d$a;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_0

    .line 144
    sget-object v2, Lcom/facebook/a/b/d;->b:Lcom/facebook/a/b/h;

    iget-object v3, v1, Lcom/facebook/a/b/d$a;->a:Ljava/math/BigDecimal;

    iget-object v4, v1, Lcom/facebook/a/b/d$a;->b:Ljava/util/Currency;

    iget-object v1, v1, Lcom/facebook/a/b/d$a;->c:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/facebook/a/b/h;->a(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    goto :goto_0

    .line 126
    :pswitch_1
    const-string v0, "SubscriptionCancel"

    goto :goto_1

    .line 129
    :pswitch_2
    const-string v0, "SubscriptionHeartbeat"

    goto :goto_1

    .line 132
    :pswitch_3
    const-string v0, "SubscriptionExpire"

    goto :goto_1

    .line 135
    :pswitch_4
    invoke-static {p1, p2}, Lcom/facebook/a/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 74
    invoke-static {}, Lcom/facebook/k;->f()Landroid/content/Context;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "context"

    invoke-static {v0, v2}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/l;->a(Ljava/lang/String;Z)Lcom/facebook/internal/k;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Lcom/facebook/internal/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 82
    invoke-static {v0}, Lcom/facebook/a/g;->a(Landroid/content/Context;)Lcom/facebook/a/g;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 84
    const-string v2, "fb_aa_time_spent_view_name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 85
    const-string v2, "fb_aa_time_spent_on_view"

    long-to-double v4, p1

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/facebook/a/g;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 94
    invoke-static {}, Lcom/facebook/a/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/a/b/d$a;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    sget-object v1, Lcom/facebook/a/b/d;->b:Lcom/facebook/a/b/h;

    iget-object v2, v0, Lcom/facebook/a/b/d$a;->a:Ljava/math/BigDecimal;

    iget-object v3, v0, Lcom/facebook/a/b/d$a;->b:Ljava/util/Currency;

    iget-object v0, v0, Lcom/facebook/a/b/d$a;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/a/b/h;->a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/a/b/d$a;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 167
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 172
    const-string v3, "fb_iap_product_id"

    const-string v4, "productId"

    .line 174
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 175
    const-string v3, "fb_iap_purchase_time"

    const-string v4, "purchaseTime"

    .line 177
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 178
    const-string v3, "fb_iap_purchase_token"

    const-string v4, "purchaseToken"

    .line 180
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 181
    const-string v3, "fb_iap_package_name"

    const-string v4, "packageName"

    .line 183
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 184
    const-string v3, "fb_iap_product_title"

    const-string v4, "title"

    .line 186
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 187
    const-string v3, "fb_iap_product_description"

    const-string v4, "description"

    .line 189
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 191
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    const-string v4, "fb_iap_product_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 195
    const-string v4, "subs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    const-string v3, "fb_iap_subs_auto_renewing"

    const-string v4, "autoRenewing"

    const/4 v5, 0x0

    .line 198
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 200
    const-string v0, "fb_iap_subs_period"

    const-string v3, "subscriptionPeriod"

    .line 202
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 203
    const-string v0, "fb_free_trial_period"

    const-string v3, "freeTrialPeriod"

    .line 205
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 207
    const-string v0, "introductoryPriceCycles"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    const-string v3, "fb_intro_price_amount_micros"

    const-string v4, "introductoryPriceAmountMicros"

    .line 211
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 212
    const-string v3, "fb_intro_price_cycles"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 218
    :cond_0
    new-instance v0, Lcom/facebook/a/b/d$a;

    new-instance v3, Ljava/math/BigDecimal;

    const-string v4, "price_amount_micros"

    .line 219
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const-string v4, "price_currency_code"

    .line 220
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/a/b/d$a;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    sget-object v1, Lcom/facebook/a/b/d;->a:Ljava/lang/String;

    const-string v2, "Error parsing in-app subscription data."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/facebook/k;->j()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/facebook/internal/l;->a(Ljava/lang/String;)Lcom/facebook/internal/k;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/facebook/k;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/facebook/internal/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
