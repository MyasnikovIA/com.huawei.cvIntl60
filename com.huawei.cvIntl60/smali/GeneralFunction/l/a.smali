.class public LGeneralFunction/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/l/a$a;
    }
.end annotation


# instance fields
.field private a:LGeneralFunction/l/a/a;

.field private b:LGeneralFunction/l/d;

.field private c:LGeneralFunction/l/a$a;

.field private d:Z

.field private e:LGeneralFunction/l/d$b;

.field private f:LGeneralFunction/l/d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, LGeneralFunction/l/a;->a:LGeneralFunction/l/a/a;

    .line 34
    iput-object v0, p0, LGeneralFunction/l/a;->b:LGeneralFunction/l/d;

    .line 35
    iput-object v0, p0, LGeneralFunction/l/a;->c:LGeneralFunction/l/a$a;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, LGeneralFunction/l/a;->d:Z

    .line 56
    new-instance v0, LGeneralFunction/l/a$1;

    invoke-direct {v0, p0}, LGeneralFunction/l/a$1;-><init>(LGeneralFunction/l/a;)V

    iput-object v0, p0, LGeneralFunction/l/a;->e:LGeneralFunction/l/d$b;

    .line 65
    new-instance v0, LGeneralFunction/l/a$2;

    invoke-direct {v0, p0}, LGeneralFunction/l/a$2;-><init>(LGeneralFunction/l/a;)V

    iput-object v0, p0, LGeneralFunction/l/a;->f:LGeneralFunction/l/d$a;

    .line 46
    return-void
.end method

.method static synthetic a(LGeneralFunction/l/a;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 40
    const-string v0, "SNSManager"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 124
    if-eqz v3, :cond_0

    move v1, v2

    .line 125
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 126
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const/4 v2, 0x1

    .line 132
    :cond_0
    return v2

    .line 125
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x5

    .line 100
    iget v1, p1, LGeneralFunction/l/b;->b:I

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_0
    :pswitch_0
    return v0

    .line 103
    :pswitch_1
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 107
    :pswitch_2
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 110
    :pswitch_3
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 113
    :pswitch_4
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private c(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    iget v1, p1, LGeneralFunction/l/b;->b:I

    packed-switch v1, :pswitch_data_0

    .line 145
    :pswitch_0
    const/4 v0, 0x6

    .line 148
    :goto_0
    return v0

    .line 142
    :pswitch_1
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    iget v1, p1, LGeneralFunction/l/b;->b:I

    packed-switch v1, :pswitch_data_0

    .line 161
    :pswitch_0
    const/4 v0, 0x6

    .line 164
    :goto_0
    return v0

    .line 158
    :pswitch_1
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 3

    .prologue
    const/4 v0, 0x6

    .line 168
    .line 169
    iget v1, p1, LGeneralFunction/l/b;->b:I

    packed-switch v1, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 173
    :pswitch_1
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 176
    :pswitch_2
    iget v1, p1, LGeneralFunction/l/b;->c:I

    const/16 v2, 0x3000

    if-ne v1, v2, :cond_0

    .line 177
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private f(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    iget v1, p1, LGeneralFunction/l/b;->b:I

    packed-switch v1, :pswitch_data_0

    .line 199
    :pswitch_0
    const/4 v0, 0x6

    .line 202
    :goto_0
    return v0

    .line 196
    :pswitch_1
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private g(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    iget v1, p1, LGeneralFunction/l/b;->b:I

    packed-switch v1, :pswitch_data_0

    .line 212
    const/4 v0, 0x6

    .line 215
    :goto_0
    return v0

    .line 209
    :pswitch_0
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1002
        :pswitch_0
    .end packed-switch
.end method

.method private h(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    iget v1, p1, LGeneralFunction/l/b;->b:I

    packed-switch v1, :pswitch_data_0

    .line 228
    :pswitch_0
    const/4 v0, 0x6

    .line 231
    :goto_0
    return v0

    .line 225
    :pswitch_1
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private i(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    iget v1, p1, LGeneralFunction/l/b;->b:I

    packed-switch v1, :pswitch_data_0

    .line 243
    :pswitch_0
    const/4 v0, 0x6

    .line 246
    :goto_0
    return v0

    .line 240
    :pswitch_1
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private j(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    iget v1, p1, LGeneralFunction/l/b;->b:I

    packed-switch v1, :pswitch_data_0

    .line 259
    :pswitch_0
    const/4 v0, 0x6

    .line 262
    :goto_0
    return v0

    .line 255
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, LGeneralFunction/l/a;->d:Z

    .line 256
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->l(LGeneralFunction/l/b;Landroid/app/Activity;)I

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private k(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 4

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    iget v1, p1, LGeneralFunction/l/b;->b:I

    packed-switch v1, :pswitch_data_0

    .line 277
    const/4 v0, 0x6

    .line 280
    :goto_0
    return v0

    .line 269
    :pswitch_0
    const-string v1, "youku://upload"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 270
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    const-string v1, "isVr"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    invoke-virtual {p2, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1002
        :pswitch_0
    .end packed-switch
.end method

.method private l(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 8

    .prologue
    const/16 v5, 0x18

    const/4 v3, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 284
    .line 285
    const/4 v0, 0x0

    .line 286
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 287
    iget v2, p1, LGeneralFunction/l/b;->b:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v1, v3

    .line 349
    :goto_0
    iget v2, p1, LGeneralFunction/l/b;->a:I

    packed-switch v2, :pswitch_data_1

    move v1, v3

    .line 400
    :goto_1
    if-nez v1, :cond_6

    .line 402
    const v2, 0x9000

    :try_start_0
    invoke-virtual {p2, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 408
    :goto_2
    return v0

    .line 289
    :pswitch_1
    iget-object v0, p1, LGeneralFunction/l/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 291
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 293
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    .line 294
    :goto_3
    iget-object v5, p1, LGeneralFunction/l/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 296
    iget-object v5, p1, LGeneralFunction/l/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 298
    :cond_0
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object v0, v2

    .line 311
    :goto_4
    const-string v2, "video/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 302
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    if-lt v4, v5, :cond_2

    .line 305
    const-string v4, "android.intent.extra.STREAM"

    iget-object v0, p1, LGeneralFunction/l/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 306
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v0, v2

    goto :goto_4

    .line 308
    :cond_2
    const-string v4, "android.intent.extra.STREAM"

    iget-object v0, p1, LGeneralFunction/l/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v0, v2

    goto :goto_4

    .line 314
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    if-lt v4, v5, :cond_4

    .line 317
    const-string v4, "android.intent.extra.STREAM"

    iget-object v0, p1, LGeneralFunction/l/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 318
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 319
    iget-boolean v0, p0, LGeneralFunction/l/a;->d:Z

    if-eqz v0, :cond_3

    .line 321
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    iput-boolean v1, p0, LGeneralFunction/l/a;->d:Z

    .line 327
    :cond_3
    :goto_5
    const-string v0, "image/*"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v2

    .line 328
    goto/16 :goto_0

    .line 325
    :cond_4
    const-string v4, "android.intent.extra.STREAM"

    iget-object v0, p1, LGeneralFunction/l/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_5

    .line 330
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    .line 333
    :goto_6
    iget-object v5, p1, LGeneralFunction/l/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 335
    iget-object v5, p1, LGeneralFunction/l/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 337
    :cond_5
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 338
    const-string v0, "image/*"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v2

    .line 339
    goto/16 :goto_0

    .line 341
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    const-string v2, "android.intent.extra.TEXT"

    iget-object v4, p1, LGeneralFunction/l/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 351
    :pswitch_5
    const-string v2, "com.facebook.katana"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 354
    :pswitch_6
    const-string v2, "com.google.android.youtube"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 357
    :pswitch_7
    const-string v2, "jp.naver.line.android"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 360
    :pswitch_8
    const-string v2, "com.twitter.android"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 363
    :pswitch_9
    const-string v2, "com.instagram.android"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 366
    :pswitch_a
    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 369
    :pswitch_b
    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 372
    :pswitch_c
    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 375
    :pswitch_d
    const-string v2, "com.qzone"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 378
    :pswitch_e
    const-string v2, "com.sina.weibo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 381
    :pswitch_f
    const-string v2, "com.whatsapp"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 384
    :pswitch_10
    const-string v2, "com.youku.phone"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v2, "isVr"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 388
    :pswitch_11
    const-string v2, "com.vkontakte.android"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 391
    :pswitch_12
    const-string v2, "com.snapchat.android"

    const-string v3, "com.snapchat.android.LandingPageActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 394
    :pswitch_13
    const-string v2, "com.google.android.apps.photos"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    const/4 v0, 0x5

    .line 405
    const-string v1, "SNS: startActivity is error."

    invoke-direct {p0, v1, v6}, LGeneralFunction/l/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_2

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 349
    :pswitch_data_1
    .packed-switch 0x2000
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public a(LGeneralFunction/l/b;Landroid/app/Activity;)I
    .locals 2

    .prologue
    const/4 v0, 0x4

    .line 412
    .line 413
    iget v1, p1, LGeneralFunction/l/b;->a:I

    packed-switch v1, :pswitch_data_0

    .line 497
    :pswitch_0
    const/4 v0, 0x6

    .line 500
    :cond_0
    :goto_0
    return v0

    .line 415
    :pswitch_1
    const-string v1, "com.facebook.katana"

    invoke-static {p2, v1}, LGeneralFunction/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->b(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 422
    :pswitch_2
    const-string v1, "com.google.android.youtube"

    invoke-static {p2, v1}, LGeneralFunction/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->g(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 429
    :pswitch_3
    const-string v1, "jp.naver.line.android"

    invoke-static {p2, v1}, LGeneralFunction/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->d(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 436
    :pswitch_4
    const-string v1, "com.twitter.android"

    invoke-static {p2, v1}, LGeneralFunction/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->c(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 443
    :pswitch_5
    const-string v1, "com.instagram.android"

    invoke-static {p2, v1}, LGeneralFunction/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->f(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 450
    :pswitch_6
    const-string v1, "com.sina.weibo"

    invoke-static {p2, v1}, LGeneralFunction/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->e(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 462
    :pswitch_7
    const-string v1, "com.whatsapp"

    invoke-static {p2, v1}, LGeneralFunction/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->h(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 469
    :pswitch_8
    const-string v1, "com.youku.phone"

    invoke-static {p2, v1}, LGeneralFunction/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->k(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 476
    :pswitch_9
    const-string v1, "com.vkontakte.android"

    invoke-static {p2, v1}, LGeneralFunction/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->i(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    .line 483
    :pswitch_a
    const-string v1, "com.snapchat.android"

    invoke-static {p2, v1}, LGeneralFunction/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->j(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto/16 :goto_0

    .line 490
    :pswitch_b
    const-string v1, "com.google.android.apps.photos"

    invoke-static {p2, v1}, LGeneralFunction/l/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-direct {p0, p1, p2}, LGeneralFunction/l/a;->h(LGeneralFunction/l/b;Landroid/app/Activity;)I

    move-result v0

    goto/16 :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x2000
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public a(IILandroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResultHandler requestCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, LGeneralFunction/l/a;->a(Ljava/lang/String;I)V

    .line 505
    new-instance v0, LGeneralFunction/l/c;

    invoke-direct {v0}, LGeneralFunction/l/c;-><init>()V

    .line 506
    iput v2, v0, LGeneralFunction/l/c;->a:I

    .line 507
    sparse-switch p1, :sswitch_data_0

    .line 521
    :goto_0
    :sswitch_0
    return-void

    .line 509
    :sswitch_1
    iget-object v1, p0, LGeneralFunction/l/a;->a:LGeneralFunction/l/a/a;

    sget-object v1, LGeneralFunction/l/a/a;->a:Lcom/facebook/d;

    invoke-interface {v1, p1, p2, p3}, Lcom/facebook/d;->a(IILandroid/content/Intent;)Z

    .line 510
    invoke-virtual {p0, v0}, LGeneralFunction/l/a;->a(LGeneralFunction/l/c;)V

    goto :goto_0

    .line 516
    :sswitch_2
    invoke-virtual {p0, v0}, LGeneralFunction/l/a;->a(LGeneralFunction/l/c;)V

    goto :goto_0

    .line 507
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9000 -> :sswitch_2
        0xfacf -> :sswitch_1
    .end sparse-switch
.end method

.method public a(LGeneralFunction/l/a$a;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, LGeneralFunction/l/a;->c:LGeneralFunction/l/a$a;

    .line 89
    return-void
.end method

.method public a(LGeneralFunction/l/c;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, LGeneralFunction/l/a;->c:LGeneralFunction/l/a$a;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, LGeneralFunction/l/a;->c:LGeneralFunction/l/a$a;

    invoke-interface {v0, p1}, LGeneralFunction/l/a$a;->a(LGeneralFunction/l/c;)V

    .line 96
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 49
    new-instance v0, LGeneralFunction/l/d;

    invoke-direct {v0}, LGeneralFunction/l/d;-><init>()V

    iput-object v0, p0, LGeneralFunction/l/a;->b:LGeneralFunction/l/d;

    .line 50
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    const-string v2, "ShareResultCallback"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, LGeneralFunction/l/a;->b:LGeneralFunction/l/d;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 54
    return-void
.end method
