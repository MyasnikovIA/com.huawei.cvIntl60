.class public Lcom/google/android/gms/internal/zzaqp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final bro:[C


# instance fields
.field private brA:[I

.field private brp:Z

.field private final brq:[C

.field private brr:I

.field private brs:I

.field private brt:I

.field private bru:J

.field private brv:I

.field private brw:Ljava/lang/String;

.field private brx:[I

.field private bry:I

.field private brz:[Ljava/lang/String;

.field private final in:Ljava/io/Reader;

.field private limit:I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaqp;->bro:[C

    new-instance v0, Lcom/google/android/gms/internal/zzaqp$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaqp$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapu;->bph:Lcom/google/android/gms/internal/zzapu;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    const/16 v3, 0x20

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaqp;->brp:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    const/4 v2, 0x6

    aput v2, v0, v1

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brz:[Ljava/lang/String;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqp;->in:Ljava/io/Reader;

    return-void
.end method

.method private bD()I
    .locals 8

    const/4 v3, 0x7

    const/4 v7, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    iget v5, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-ne v4, v2, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    iget v6, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v6, v6, -0x1

    aput v1, v5, v6

    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaqp;->zzdi(Z)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bE()I

    move-result v0

    if-eqz v0, :cond_14

    :cond_2
    :goto_1
    return v0

    :cond_3
    if-ne v4, v1, :cond_4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaqp;->zzdi(Z)I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_1
    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    goto :goto_0

    :cond_4
    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    if-ne v4, v7, :cond_9

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    iget v5, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v3, v5

    if-ne v4, v7, :cond_6

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaqp;->zzdi(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_3
    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    move v0, v1

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    :cond_6
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaqp;->zzdi(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzc(C)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto :goto_1

    :sswitch_6
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto :goto_1

    :sswitch_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto :goto_1

    :sswitch_8
    if-eq v4, v7, :cond_7

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    move v0, v1

    goto :goto_1

    :cond_7
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    if-ne v4, v0, :cond_b

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    iget v6, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v5, v6

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaqp;->zzdi(Z)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_1
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    iget v5, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v6, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-lt v5, v6, :cond_a

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_a
    iget-object v5, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v6, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    aget-char v5, v5, v6

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x6

    if-ne v4, v5, :cond_d

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzaqp;->brp:Z

    if-eqz v5, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bL()V

    :cond_c
    iget-object v5, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    iget v6, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v6, v6, -0x1

    aput v3, v5, v6

    goto/16 :goto_0

    :cond_d
    if-ne v4, v3, :cond_f

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzaqp;->zzdi(Z)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_e

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    iget v5, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_9
    if-ne v4, v2, :cond_10

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto/16 :goto_1

    :cond_10
    :sswitch_a
    if-eq v4, v2, :cond_11

    if-ne v4, v1, :cond_12

    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iput v3, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    move v0, v3

    goto/16 :goto_1

    :cond_12
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto/16 :goto_1

    :sswitch_c
    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    if-ne v0, v2, :cond_13

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    :cond_13
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto/16 :goto_1

    :sswitch_d
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto/16 :goto_1

    :sswitch_e
    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    move v0, v2

    goto/16 :goto_1

    :cond_14
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bF()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzc(C)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bE()I
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v2, "true"

    const-string v1, "TRUE"

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v5, :cond_8

    iget v6, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v6

    if-nez v6, :cond_6

    move v0, v3

    :goto_2
    return v0

    :cond_1
    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v2, "false"

    const-string v1, "FALSE"

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_5

    :cond_4
    const-string v2, "null"

    const-string v1, "NULL"

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v7, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v1, v5

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-lt v1, v2, :cond_9

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaqp;->zzc(C)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v3

    goto :goto_2

    :cond_a
    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto :goto_2
.end method

.method private bF()I
    .locals 14

    iget-object v11, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    add-int v2, v1, v10

    if-ne v2, v0, :cond_4

    array-length v0, v11

    if-ne v10, v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v10, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x2

    if-ne v3, v0, :cond_16

    if-eqz v4, :cond_16

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    if-eqz v5, :cond_16

    :cond_2
    if-eqz v5, :cond_15

    :goto_2
    iput-wide v6, p0, Lcom/google/android/gms/internal/zzaqp;->bru:J

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    :cond_4
    add-int v2, v1, v10

    aget-char v2, v11, v2

    sparse-switch v2, :sswitch_data_0

    const/16 v8, 0x30

    if-lt v2, v8, :cond_5

    const/16 v8, 0x39

    if-le v2, v8, :cond_c

    :cond_5
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaqp;->zzc(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_0
    if-nez v3, :cond_6

    const/4 v3, 0x1

    const/4 v2, 0x1

    move v5, v3

    :goto_3
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move v3, v2

    goto :goto_0

    :cond_6
    const/4 v2, 0x5

    if-ne v3, v2, :cond_7

    const/4 v2, 0x6

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const/4 v2, 0x5

    if-ne v3, v2, :cond_8

    const/4 v2, 0x6

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const/4 v2, 0x2

    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_a

    :cond_9
    const/4 v2, 0x5

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const/4 v2, 0x2

    if-ne v3, v2, :cond_b

    const/4 v2, 0x3

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    :cond_c
    const/4 v8, 0x1

    if-eq v3, v8, :cond_d

    if-nez v3, :cond_e

    :cond_d
    add-int/lit8 v2, v2, -0x30

    neg-int v2, v2

    int-to-long v6, v2

    const/4 v2, 0x2

    goto :goto_3

    :cond_e
    const/4 v8, 0x2

    if-ne v3, v8, :cond_12

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_f

    const/4 v0, 0x0

    goto :goto_1

    :cond_f
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    sub-long/2addr v8, v12

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-gtz v2, :cond_10

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-nez v2, :cond_11

    cmp-long v2, v8, v6

    if-gez v2, :cond_11

    :cond_10
    const/4 v2, 0x1

    :goto_4
    and-int/2addr v4, v2

    move v2, v3

    move-wide v6, v8

    goto :goto_3

    :cond_11
    const/4 v2, 0x0

    goto :goto_4

    :cond_12
    const/4 v2, 0x3

    if-ne v3, v2, :cond_13

    const/4 v2, 0x4

    goto :goto_3

    :cond_13
    const/4 v2, 0x5

    if-eq v3, v2, :cond_14

    const/4 v2, 0x6

    if-ne v3, v2, :cond_19

    :cond_14
    const/4 v2, 0x7

    goto :goto_3

    :cond_15
    neg-long v6, v6

    goto/16 :goto_2

    :cond_16
    const/4 v0, 0x2

    if-eq v3, v0, :cond_17

    const/4 v0, 0x4

    if-eq v3, v0, :cond_17

    const/4 v0, 0x7

    if-ne v3, v0, :cond_18

    :cond_17
    iput v10, p0, Lcom/google/android/gms/internal/zzaqp;->brv:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    goto/16 :goto_1

    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_19
    move v2, v3

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private bG()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v4, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    :cond_0
    :goto_1
    :sswitch_1
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v4, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private bH()V
    .locals 3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    :sswitch_1
    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private bI()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqp;->brp:Z

    if-nez v0, :cond_0

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private bJ()V
    .locals 3

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private bK()C
    .locals 6

    const/4 v5, 0x4

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-le v0, v1, :cond_1

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v2, v1, 0x4

    :goto_1
    if-ge v1, v2, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    aget-char v3, v3, v1

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-gt v3, v4, :cond_3

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_4

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "\\u"

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v4, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    invoke-direct {v0, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_6
    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private bL()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzdi(Z)I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    sget-object v1, Lcom/google/android/gms/internal/zzaqp;->bro:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzaqp;->bro:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/zzaqp;->bro:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/zzaqp;->bro:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    sget-object v1, Lcom/google/android/gms/internal/zzaqp;->bro:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    goto :goto_0
.end method

.method private getColumnNumber()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getLineNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaqp;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    return p1
.end method

.method static synthetic zzag(Lcom/google/android/gms/internal/zzaqp;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    return v0
.end method

.method private zzagn(I)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v4, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brz:[Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaqp;->brz:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    aput p1, v0, v1

    return-void
.end method

.method private zzago(I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqp;->in:Ljava/io/Reader;

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    array-length v4, v1

    iget v5, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-lez v2, :cond_1

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-lt v2, p1, :cond_0

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    goto :goto_0
.end method

.method static synthetic zzah(Lcom/google/android/gms/internal/zzaqp;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    return v0
.end method

.method static synthetic zzai(Lcom/google/android/gms/internal/zzaqp;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v0

    return v0
.end method

.method static synthetic zzaj(Lcom/google/android/gms/internal/zzaqp;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method private zzc(C)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private zzd(C)Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    move v0, v2

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_4

    add-int/lit8 v3, v4, 0x1

    aget-char v2, v5, v4

    if-ne v2, p1, :cond_1

    iput v3, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    sub-int v1, v3, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v5, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_2

    iput v3, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    sub-int v1, v3, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v5, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bK()C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    move v0, v1

    move v3, v1

    :goto_1
    move v1, v2

    move v4, v3

    goto :goto_0

    :cond_2
    const/16 v4, 0xa

    if-ne v2, v4, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    iput v3, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    sub-int v1, v4, v0

    invoke-virtual {v6, v5, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v4, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private zzdi(Z)I
    .locals 6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    :goto_0
    if-ne v1, v0, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input at line "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v4, 0x20

    if-eq v1, v4, :cond_9

    const/16 v4, 0xd

    if-eq v1, v4, :cond_9

    const/16 v4, 0x9

    if-ne v1, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_6

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    if-ne v2, v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    return v0

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    aget-char v0, v3, v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    goto :goto_1

    :sswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    goto/16 :goto_0

    :sswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bJ()V

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x23

    if-ne v1, v0, :cond_7

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bI()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bJ()V

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    goto/16 :goto_0

    :cond_7
    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    move v0, v1

    goto :goto_1

    :cond_8
    const/4 v0, -0x1

    goto :goto_1

    :cond_9
    move v1, v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private zze(C)V
    .locals 5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    if-ne v2, p1, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    return-void

    :cond_1
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_3

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bK()C

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    :cond_2
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzuv(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private zzuu(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->limit:I

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzago(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brr:I

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brs:I

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private zzuv(Ljava/lang/String;)Ljava/io/IOException;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzaqs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " column "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaqs;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 8

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzagn(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4a

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzagn(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bq()Lcom/google/android/gms/internal/zzaqq;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/zzaqq;->brD:Lcom/google/android/gms/internal/zzaqq;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/zzaqq;->brE:Lcom/google/android/gms/internal/zzaqq;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/zzaqq;->brB:Lcom/google/android/gms/internal/zzaqq;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/zzaqq;->brC:Lcom/google/android/gms/internal/zzaqq;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/zzaqq;->brF:Lcom/google/android/gms/internal/zzaqq;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/zzaqq;->brI:Lcom/google/android/gms/internal/zzaqq;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/google/android/gms/internal/zzaqq;->brJ:Lcom/google/android/gms/internal/zzaqq;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/zzaqq;->brG:Lcom/google/android/gms/internal/zzaqq;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/google/android/gms/internal/zzaqq;->brH:Lcom/google/android/gms/internal/zzaqq;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/google/android/gms/internal/zzaqq;->brK:Lcom/google/android/gms/internal/zzaqq;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public close()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public endArray()V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x48

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected END_ARRAY but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brz:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x49

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected END_OBJECT but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brx:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brz:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqp;->brz:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLenient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqp;->brp:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v1

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x48

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a boolean but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .locals 8

    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iput v4, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaqp;->bru:J

    long-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->brv:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->brv:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    :cond_2
    :goto_1
    iput v5, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaqp;->brp:Z

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/zzaqs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x66

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "JSON forbids NaN and infinities: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzaqs;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-eq v0, v2, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzd(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    goto :goto_2

    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    if-eq v0, v5, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a double but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    iput v4, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public nextInt()I
    .locals 8

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaqp;->bru:J

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaqp;->bru:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/NumberFormatException;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaqp;->bru:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x59

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v6, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->brv:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->brv:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_7

    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eq v0, v2, :cond_4

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    :cond_4
    if-ne v0, v2, :cond_5

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzd(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x22

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_0
.end method

.method public nextLong()J
    .locals 8

    const/16 v2, 0x8

    const/4 v6, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iput v6, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaqp;->bru:J

    :goto_0
    return-wide v0

    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->brv:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->brv:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v0, v2

    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_6

    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a long but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eq v0, v2, :cond_3

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_3
    if-ne v0, v2, :cond_4

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzd(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x22

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a long but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public nextName()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bG()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brz:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzd(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzd(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a name but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextNull()V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x43

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected null but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bG()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzd(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqp;->zzd(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brw:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaqp;->bru:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqp;->brq:[C

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->brv:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->brv:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->bq()Lcom/google/android/gms/internal/zzaqq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqp;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a string but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaqp;->brp:Z

    return-void
.end method

.method public skipValue()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bD()I

    move-result v2

    :cond_1
    if-ne v2, v5, :cond_3

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzaqp;->zzagn(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/zzaqp;->brt:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brA:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqp;->brz:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    :cond_3
    if-ne v2, v4, :cond_4

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzaqp;->zzagn(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->bry:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    const/16 v3, 0xe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->bH()V

    goto :goto_0

    :cond_8
    const/16 v3, 0x8

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaqp;->zze(C)V

    goto :goto_0

    :cond_a
    const/16 v3, 0x9

    if-eq v2, v3, :cond_b

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaqp;->zze(C)V

    goto :goto_0

    :cond_c
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaqp;->brv:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzaqp;->pos:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getLineNumber()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqp;->getColumnNumber()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at line "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
