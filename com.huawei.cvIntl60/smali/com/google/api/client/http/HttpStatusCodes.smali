.class public Lcom/google/api/client/http/HttpStatusCodes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATUS_CODE_BAD_GATEWAY:I = 0x1f6

.field public static final STATUS_CODE_FORBIDDEN:I = 0x193

.field public static final STATUS_CODE_FOUND:I = 0x12e

.field public static final STATUS_CODE_MOVED_PERMANENTLY:I = 0x12d

.field public static final STATUS_CODE_MULTIPLE_CHOICES:I = 0x12c

.field public static final STATUS_CODE_NOT_FOUND:I = 0x194

.field public static final STATUS_CODE_NOT_MODIFIED:I = 0x130

.field public static final STATUS_CODE_NO_CONTENT:I = 0xcc

.field public static final STATUS_CODE_OK:I = 0xc8

.field public static final STATUS_CODE_SEE_OTHER:I = 0x12f

.field public static final STATUS_CODE_SERVER_ERROR:I = 0x1f4

.field public static final STATUS_CODE_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final STATUS_CODE_TEMPORARY_REDIRECT:I = 0x133

.field public static final STATUS_CODE_UNAUTHORIZED:I = 0x191


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRedirect(I)Z
    .locals 1

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 97
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 95
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isSuccess(I)Z
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
