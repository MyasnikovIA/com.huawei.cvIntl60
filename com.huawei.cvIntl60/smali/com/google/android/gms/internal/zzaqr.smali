.class public Lcom/google/android/gms/internal/zzaqr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final brM:[Ljava/lang/String;

.field private static final brN:[Ljava/lang/String;


# instance fields
.field private boe:Z

.field private bof:Z

.field private brO:Ljava/lang/String;

.field private brP:Ljava/lang/String;

.field private brp:Z

.field private brx:[I

.field private bry:I

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzaqr;->brM:[Ljava/lang/String;

    move v0, v1

    :goto_0
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/zzaqr;->brM:[Ljava/lang/String;

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brM:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brM:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brM:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brM:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brM:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brM:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brM:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brM:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzaqr;->brN:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brN:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brN:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brN:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brN:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brN:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brx:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqr;->zzagn(I)V

    const-string v0, ":"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->separator:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaqr;->boe:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    return-void
.end method

.method private bO()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brx:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private bP()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brP:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqr;->zzuw(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brP:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private bQ()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brO:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaqr;->brO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private bR()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bO()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bQ()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqr;->zzagp(I)V

    return-void

    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zzagn(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqr;->brx:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqr;->brx:[I

    iget v2, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brx:[I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brx:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    aput p1, v0, v1

    return-void
.end method

.method private zzagp(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brx:[I

    iget v1, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method private zzc(IILjava/lang/String;)Lcom/google/android/gms/internal/zzaqr;
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bO()I

    move-result v0

    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqr;->brP:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Dangling name: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brP:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    if-ne v0, p2, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bQ()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private zzdl(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bO()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqr;->brp:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqr;->brp:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqr;->zzagp(I)V

    :goto_0
    return-void

    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqr;->zzagp(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bQ()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bQ()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqr;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqr;->zzagp(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private zzp(ILjava/lang/String;)Lcom/google/android/gms/internal/zzaqr;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqr;->zzdl(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaqr;->zzagn(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private zzuw(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqr;->bof:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brN:[Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v2

    move v1, v2

    :goto_1
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x80

    if-ge v2, v5, :cond_2

    aget-object v2, v0, v2

    if-nez v2, :cond_3

    :cond_0
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzaqr;->brM:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v5, 0x2028

    if-ne v2, v5, :cond_5

    const-string v2, "\\u2028"

    :cond_3
    :goto_3
    if-ge v1, v3, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    sub-int v6, v3, v1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    :cond_5
    const/16 v5, 0x2029

    if-ne v2, v5, :cond_0

    const-string v2, "\\u2029"

    goto :goto_3

    :cond_6
    if-ge v1, v4, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    sub-int v2, v4, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bA()Lcom/google/android/gms/internal/zzaqr;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brP:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqr;->boe:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bP()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqr;->zzdl(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brP:Ljava/lang/String;

    goto :goto_0
.end method

.method public final bM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqr;->bof:Z

    return v0
.end method

.method public final bN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqr;->boe:Z

    return v0
.end method

.method public bw()Lcom/google/android/gms/internal/zzaqr;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bP()V

    const/4 v0, 0x1

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzaqr;->zzp(ILjava/lang/String;)Lcom/google/android/gms/internal/zzaqr;

    move-result-object v0

    return-object v0
.end method

.method public bx()Lcom/google/android/gms/internal/zzaqr;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzaqr;->zzc(IILjava/lang/String;)Lcom/google/android/gms/internal/zzaqr;

    move-result-object v0

    return-object v0
.end method

.method public by()Lcom/google/android/gms/internal/zzaqr;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bP()V

    const/4 v0, 0x3

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzaqr;->zzp(ILjava/lang/String;)Lcom/google/android/gms/internal/zzaqr;

    move-result-object v0

    return-object v0
.end method

.method public bz()Lcom/google/android/gms/internal/zzaqr;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzaqr;->zzc(IILjava/lang/String;)Lcom/google/android/gms/internal/zzaqr;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget v0, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    if-gt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqr;->brx:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    return-void
.end method

.method public flush()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public isLenient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqr;->brp:Z

    return v0
.end method

.method public final setIndent(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brO:Ljava/lang/String;

    const-string v0, ":"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->separator:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqr;->brO:Ljava/lang/String;

    const-string v0, ": "

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaqr;->brp:Z

    return-void
.end method

.method public zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzaqr;
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqr;->bA()Lcom/google/android/gms/internal/zzaqr;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bP()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaqr;->brp:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaqr;->zzdl(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method public zzcs(J)Lcom/google/android/gms/internal/zzaqr;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bP()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqr;->zzdl(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public zzdh(Z)Lcom/google/android/gms/internal/zzaqr;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bP()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqr;->zzdl(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqr;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public final zzdj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaqr;->bof:Z

    return-void
.end method

.method public final zzdk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaqr;->boe:Z

    return-void
.end method

.method public zzus(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqr;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqr;->brP:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzaqr;->bry:I

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqr;->brP:Ljava/lang/String;

    return-object p0
.end method

.method public zzut(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaqr;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaqr;->bA()Lcom/google/android/gms/internal/zzaqr;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqr;->bP()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqr;->zzdl(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaqr;->zzuw(Ljava/lang/String;)V

    goto :goto_0
.end method
