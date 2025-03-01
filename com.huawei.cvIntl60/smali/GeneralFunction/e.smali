.class public LGeneralFunction/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)I
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 29
    .line 31
    array-length v2, p0

    if-lt v2, v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v3, v0

    .line 86
    :goto_0
    :pswitch_0
    return v3

    .line 34
    :cond_1
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x1f

    packed-switch v2, :pswitch_data_0

    move v3, v0

    .line 82
    goto :goto_0

    .line 44
    :pswitch_1
    const/4 v5, 0x0

    move v0, v1

    move v2, v3

    move v4, v3

    .line 46
    :goto_1
    array-length v7, p0

    if-ge v0, v7, :cond_5

    .line 48
    if-nez v4, :cond_2

    aget-byte v7, p0, v0

    if-nez v7, :cond_2

    .line 51
    add-int/lit8 v4, v4, 0x1

    move v2, v0

    .line 46
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_2
    if-ge v4, v8, :cond_3

    aget-byte v7, p0, v0

    if-nez v7, :cond_3

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 55
    :cond_3
    if-ne v4, v8, :cond_4

    aget-byte v4, p0, v0

    if-ne v4, v6, :cond_4

    .line 57
    new-array v0, v1, [B

    .line 58
    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    :goto_3
    invoke-static {v0}, LGeneralFunction/e;->a([B)I

    move-result v3

    goto :goto_0

    :cond_4
    move v2, v3

    move v4, v3

    .line 64
    goto :goto_2

    :pswitch_2
    move v3, v6

    .line 80
    goto :goto_0

    :cond_5
    move-object v0, v5

    goto :goto_3

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static a([BI)I
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 102
    move v0, v1

    move v2, v1

    .line 105
    :goto_0
    array-length v3, p0

    if-ge p1, v3, :cond_3

    .line 107
    if-nez v2, :cond_0

    aget-byte v3, p0, p1

    if-nez v3, :cond_0

    .line 110
    add-int/lit8 v2, v2, 0x1

    move v0, p1

    .line 105
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    if-ge v2, v4, :cond_1

    aget-byte v3, p0, p1

    if-nez v3, :cond_1

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    :cond_1
    if-ne v2, v4, :cond_2

    aget-byte v2, p0, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 124
    :goto_2
    return v0

    :cond_2
    move v0, v1

    move v2, v1

    .line 121
    goto :goto_1

    .line 124
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public static b([B)Z
    .locals 1

    .prologue
    .line 91
    invoke-static {p0}, LGeneralFunction/e;->a([B)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 94
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static c([B)[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 128
    move v1, v2

    .line 131
    :cond_0
    if-eqz p0, :cond_1

    array-length v3, p0

    add-int/lit8 v4, v1, 0x5

    if-ge v3, v4, :cond_2

    .line 143
    :cond_1
    :goto_0
    return-object v0

    .line 133
    :cond_2
    invoke-static {p0, v1}, LGeneralFunction/e;->a([BI)I

    move-result v3

    .line 134
    if-eq v3, v6, :cond_1

    .line 136
    add-int/lit8 v1, v3, 0x1

    .line 137
    add-int/lit8 v4, v3, 0x4

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 138
    invoke-static {p0, v1}, LGeneralFunction/e;->a([BI)I

    move-result v1

    .line 139
    if-eq v1, v6, :cond_1

    .line 141
    sub-int v0, v1, v3

    new-array v0, v0, [B

    .line 142
    sub-int/2addr v1, v3

    invoke-static {p0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static d([B)[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 149
    move v1, v2

    .line 152
    :cond_0
    if-eqz p0, :cond_1

    array-length v3, p0

    add-int/lit8 v4, v1, 0x5

    if-ge v3, v4, :cond_2

    .line 164
    :cond_1
    :goto_0
    return-object v0

    .line 154
    :cond_2
    invoke-static {p0, v1}, LGeneralFunction/e;->a([BI)I

    move-result v3

    .line 155
    if-eq v3, v6, :cond_1

    .line 157
    add-int/lit8 v1, v3, 0x1

    .line 158
    add-int/lit8 v4, v3, 0x4

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 159
    invoke-static {p0, v1}, LGeneralFunction/e;->a([BI)I

    move-result v1

    .line 160
    if-eq v1, v6, :cond_1

    .line 162
    sub-int v0, v1, v3

    new-array v0, v0, [B

    .line 163
    sub-int/2addr v1, v3

    invoke-static {p0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
