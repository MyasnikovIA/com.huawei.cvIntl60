.class public Lcom/facebook/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const-class v0, Lcom/facebook/a/a/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/a/a/a/f;->b:Ljava/lang/ref/WeakReference;

    .line 119
    sput-object v1, Lcom/facebook/a/a/a/f;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([FLandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 450
    invoke-static {}, Lcom/facebook/a/a/a/f;->a()V

    .line 451
    sget-object v0, Lcom/facebook/a/a/a/f;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-object v1

    .line 456
    :cond_1
    :try_start_0
    sget-object v0, Lcom/facebook/a/a/a/f;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 457
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 458
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    if-lez v2, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 460
    if-eqz v0, :cond_2

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 462
    :catch_0
    move-exception v0

    .line 463
    sget-object v2, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 464
    :catch_1
    move-exception v0

    .line 465
    sget-object v2, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 139
    check-cast p0, Landroid/view/ViewGroup;

    .line 140
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 141
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/view/View;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 151
    :try_start_0
    invoke-static {p0}, Lcom/facebook/a/a/a/f;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {p0}, Lcom/facebook/a/a/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 156
    const-string v4, "classname"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v4, "classtypebitmask"

    invoke-static {p0}, Lcom/facebook/a/a/a/f;->j(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v4, "id"

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    invoke-static {p0}, Lcom/facebook/a/a/a/d;->a(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 160
    const-string v4, "text"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :goto_0
    const-string v0, "hint"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    if-eqz v2, :cond_0

    .line 167
    const-string v0, "tag"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_0
    if-eqz v3, :cond_1

    .line 170
    const-string v0, "description"

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_1
    invoke-static {p0}, Lcom/facebook/a/a/a/f;->l(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 173
    const-string v1, "dimension"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :goto_1
    return-object p1

    .line 162
    :cond_2
    const-string v0, "text"

    const-string v4, ""

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v0, "is_user_input"

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    sget-object v1, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static a()V
    .locals 5

    .prologue
    .line 521
    sget-object v0, Lcom/facebook/a/a/a/f;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 526
    :cond_0
    :try_start_0
    const-string v0, "com.facebook.react.uimanager.TouchTargetHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 527
    const-string v1, "findTouchTargetView"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [F

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/a/a/f;->c:Ljava/lang/reflect/Method;

    .line 529
    sget-object v0, Lcom/facebook/a/a/a/f;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    sget-object v1, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 532
    :catch_1
    move-exception v0

    .line 533
    sget-object v1, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 474
    const-string v2, "com.facebook.react.views.view.ReactViewGroup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-static {p0}, Lcom/facebook/a/a/a/f;->m(Landroid/view/View;)[F

    move-result-object v1

    .line 476
    invoke-static {v1, p1}, Lcom/facebook/a/a/a/f;->a([FLandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 477
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 480
    :cond_0
    return v0
.end method

.method public static b(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.react.ReactRootView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/a/a/a/f;->b:Ljava/lang/ref/WeakReference;

    .line 224
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 227
    :try_start_0
    invoke-static {p0, v0}, Lcom/facebook/a/a/a/f;->a(Landroid/view/View;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 229
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 230
    invoke-static {p0}, Lcom/facebook/a/a/a/f;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    .line 231
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 232
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 233
    invoke-static {v0}, Lcom/facebook/a/a/a/f;->b(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 234
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 231
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 236
    :cond_1
    const-string v0, "childviews"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 241
    :goto_1
    return-object v0

    .line 237
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 238
    :goto_2
    sget-object v1, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    const-string v3, "Failed to create JSONObject for view."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 237
    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method

.method public static c(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    :try_start_0
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mListenerInfo"

    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    .line 294
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 295
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 296
    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v2

    .line 299
    :cond_1
    const-string v3, "android.view.View$ListenerInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mOnClickListener"

    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 302
    if-eqz v3, :cond_0

    .line 304
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    sget-object v1, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    const-string v3, "Failed to check if the view is clickable."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Landroid/view/View;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 322
    const/4 v1, 0x0

    .line 323
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 324
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 326
    instance-of v1, p0, Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 327
    check-cast p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 328
    if-eqz v0, :cond_1

    const-string v0, "1"

    .line 366
    :cond_0
    :goto_0
    if-nez v0, :cond_9

    const-string v0, ""

    :goto_1
    return-object v0

    .line 328
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 330
    :cond_2
    instance-of v2, p0, Landroid/widget/Spinner;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 331
    check-cast v0, Landroid/widget/Spinner;

    .line 332
    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 333
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_b

    .line 335
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_3
    instance-of v2, p0, Landroid/widget/DatePicker;

    if-eqz v2, :cond_4

    .line 339
    check-cast p0, Landroid/widget/DatePicker;

    .line 340
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    .line 341
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    .line 342
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    .line 343
    const-string v4, "%04d-%02d-%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_4
    instance-of v2, p0, Landroid/widget/TimePicker;

    if-eqz v2, :cond_5

    .line 345
    check-cast p0, Landroid/widget/TimePicker;

    .line 346
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 347
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 348
    const-string v3, "%02d:%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_5
    instance-of v2, p0, Landroid/widget/RadioGroup;

    if-eqz v2, :cond_8

    .line 350
    check-cast p0, Landroid/widget/RadioGroup;

    .line 351
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    .line 352
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    move v2, v0

    .line 353
    :goto_2
    if-ge v2, v4, :cond_6

    .line 354
    invoke-virtual {p0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v3, :cond_7

    instance-of v5, v0, Landroid/widget/RadioButton;

    if-eqz v5, :cond_7

    .line 356
    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_6
    move-object v0, v1

    .line 360
    goto/16 :goto_0

    .line 353
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 360
    :cond_8
    instance-of v0, p0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_a

    .line 361
    check-cast p0, Landroid/widget/RatingBar;

    .line 362
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    .line 363
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 366
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static e(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 372
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 377
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    return-object v0

    .line 373
    :cond_1
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 374
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static f(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 401
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 402
    const-string v1, "getAccessibilityDelegate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 403
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 404
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 405
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$AccessibilityDelegate;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-object v0

    .line 410
    :catch_0
    move-exception v0

    .line 412
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 409
    :catch_1
    move-exception v0

    goto :goto_1

    .line 408
    :catch_2
    move-exception v0

    goto :goto_1

    .line 407
    :catch_3
    move-exception v0

    goto :goto_1

    .line 406
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static g(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 418
    :try_start_0
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mListenerInfo"

    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    .line 421
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 424
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    if-nez v0, :cond_1

    .line 445
    :goto_0
    return-object v1

    .line 430
    :cond_1
    const-string v2, "android.view.View$ListenerInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mOnTouchListener"

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 432
    if-eqz v2, :cond_2

    .line 433
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 434
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnTouchListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    move-object v1, v0

    .line 437
    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    sget-object v2, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 440
    :catch_1
    move-exception v0

    .line 441
    sget-object v2, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 442
    :catch_2
    move-exception v0

    .line 443
    sget-object v2, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static h(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.react.ReactRootView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 497
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 498
    invoke-static {v0}, Lcom/facebook/a/a/a/f;->h(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    :goto_1
    return-object v0

    .line 501
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 502
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 503
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 508
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static j(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 247
    const/4 v0, 0x2

    .line 250
    :cond_0
    invoke-static {p0}, Lcom/facebook/a/a/a/f;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    or-int/lit8 v0, v0, 0x20

    .line 253
    :cond_1
    invoke-static {p0}, Lcom/facebook/a/a/a/f;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 254
    or-int/lit16 v0, v0, 0x200

    move v1, v0

    .line 257
    :goto_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 258
    or-int/lit16 v0, v1, 0x400

    .line 259
    or-int/lit8 v0, v0, 0x1

    .line 261
    instance-of v1, p0, Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 262
    or-int/lit8 v0, v0, 0x4

    .line 264
    instance-of v1, p0, Landroid/widget/Switch;

    if-eqz v1, :cond_4

    .line 265
    or-int/lit16 v0, v0, 0x2000

    .line 271
    :cond_2
    :goto_1
    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_a

    .line 272
    or-int/lit16 v1, v0, 0x800

    .line 286
    :cond_3
    :goto_2
    return v1

    .line 266
    :cond_4
    instance-of v1, p0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 267
    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_1

    .line 274
    :cond_5
    instance-of v0, p0, Landroid/widget/Spinner;

    if-nez v0, :cond_6

    instance-of v0, p0, Landroid/widget/DatePicker;

    if-eqz v0, :cond_7

    .line 276
    :cond_6
    or-int/lit16 v1, v1, 0x1000

    goto :goto_2

    .line 277
    :cond_7
    instance-of v0, p0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_8

    .line 278
    const/high16 v0, 0x10000

    or-int/2addr v1, v0

    goto :goto_2

    .line 279
    :cond_8
    instance-of v0, p0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_9

    .line 280
    or-int/lit16 v1, v1, 0x4000

    goto :goto_2

    .line 281
    :cond_9
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/a/a/a/f;->b:Ljava/lang/ref/WeakReference;

    .line 282
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0}, Lcom/facebook/a/a/a/f;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    or-int/lit8 v1, v1, 0x40

    goto :goto_2

    :cond_a
    move v1, v0

    goto :goto_2

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method private static k(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 317
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_0

    instance-of v0, v0, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 381
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 384
    :try_start_0
    const-string v0, "top"

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    const-string v0, "left"

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    const-string v0, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 387
    const-string v0, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 388
    const-string v0, "scrollx"

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 389
    const-string v0, "scrolly"

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    const-string v0, "visibility"

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-object v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    sget-object v2, Lcom/facebook/a/a/a/f;->a:Ljava/lang/String;

    const-string v3, "Failed to create JSONObject for dimension."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static m(Landroid/view/View;)[F
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 512
    new-array v0, v1, [I

    .line 513
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 514
    new-array v1, v1, [F

    .line 515
    aget v2, v0, v3

    int-to-float v2, v2

    aput v2, v1, v3

    .line 516
    aget v0, v0, v4

    int-to-float v0, v0

    aput v0, v1, v4

    .line 517
    return-object v1
.end method
