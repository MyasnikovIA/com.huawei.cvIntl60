.class public final Lcom/google/api/client/util/Strings;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
