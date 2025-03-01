.class public Lcom/b/a/a/d;
.super Lcom/c/a/c;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lorg/a/a/a/a$a;

.field private static final m:Lorg/a/a/a/a$a;

.field private static final n:Lorg/a/a/a/a$a;

.field private static final o:Lorg/a/a/a/a$a;

.field private static final p:Lorg/a/a/a/a$a;

.field private static final q:Lorg/a/a/a/a$a;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private i:J

.field private j:Z

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/b/a/a/d;->i()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string v1, "odsm"

    const-string v2, "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "crsm"

    const-string v2, "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "sdsm"

    const-string v2, "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "m7sm"

    const-string v2, "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "ocsm"

    const-string v2, "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "ipsm"

    const-string v2, "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "mjsm"

    const-string v2, "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "mdir"

    const-string v2, "Apple Meta Data iTunes Reader"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "mp7b"

    const-string v2, "MPEG-7 binary XML"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "mp7t"

    const-string v2, "MPEG-7 XML"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "vide"

    const-string v2, "Video Track"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "soun"

    const-string v2, "Sound Track"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "hint"

    const-string v2, "Hint Track"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "appl"

    const-string v2, "Apple specific"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "meta"

    const-string v2, "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/d;->a:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "hdlr"

    invoke-direct {p0, v0}, Lcom/c/a/c;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/d;->f:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/d;->j:Z

    .line 76
    return-void
.end method

.method private static i()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/a/a/b/a/b;

    const-string v1, "HandlerBox.java"

    const-class v2, Lcom/b/a/a/d;

    invoke-direct {v0, v1, v2}, Lorg/a/a/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getHandlerType"

    const-string v3, "com.coremedia.iso.boxes.HandlerBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v1

    sput-object v1, Lcom/b/a/a/d;->l:Lorg/a/a/a/a$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setName"

    const-string v3, "com.coremedia.iso.boxes.HandlerBox"

    const-string v4, "java.lang.String"

    const-string v5, "name"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x57

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v1

    sput-object v1, Lcom/b/a/a/d;->m:Lorg/a/a/a/a$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setHandlerType"

    const-string v3, "com.coremedia.iso.boxes.HandlerBox"

    const-string v4, "java.lang.String"

    const-string v5, "handlerType"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v1

    sput-object v1, Lcom/b/a/a/d;->n:Lorg/a/a/a/a$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getName"

    const-string v3, "com.coremedia.iso.boxes.HandlerBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v1

    sput-object v1, Lcom/b/a/a/d;->o:Lorg/a/a/a/a$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getHumanReadableTrackType"

    const-string v3, "com.coremedia.iso.boxes.HandlerBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x63

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v1

    sput-object v1, Lcom/b/a/a/d;->p:Lorg/a/a/a/a$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.coremedia.iso.boxes.HandlerBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/a/a/a/a/c;

    move-result-object v1

    const/16 v2, 0x95

    invoke-virtual {v0, v8, v1, v2}, Lorg/a/a/b/a/b;->a(Ljava/lang/String;Lorg/a/a/a/d;I)Lorg/a/a/a/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/d;->q:Lorg/a/a/a/a$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0, p1}, Lcom/b/a/a/d;->c(Ljava/nio/ByteBuffer;)J

    .line 115
    invoke-static {p1}, Lcom/b/a/d;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/d;->k:J

    .line 116
    invoke-static {p1}, Lcom/b/a/d;->e(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/d;->e:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/b/a/d;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/d;->g:J

    .line 118
    invoke-static {p1}, Lcom/b/a/d;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/d;->h:J

    .line 119
    invoke-static {p1}, Lcom/b/a/d;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/d;->i:J

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p1, v0}, Lcom/b/a/d;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/d;->f:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/b/a/a/d;->f:Ljava/lang/String;

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/b/a/a/d;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/b/a/a/d;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/d;->f:Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/d;->j:Z

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_0
    iput-boolean v2, p0, Lcom/b/a/a/d;->j:Z

    goto :goto_0

    .line 129
    :cond_1
    iput-boolean v2, p0, Lcom/b/a/a/d;->j:Z

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/b/a/a/d;->l:Lorg/a/a/a/a$a;

    invoke-static {v0, p0, p0}, Lorg/a/a/b/a/b;->a(Lorg/a/a/a/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/a/a/a/a;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/c/a/f;->a()Lcom/c/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/f;->a(Lorg/a/a/a/a;)V

    iget-object v0, p0, Lcom/b/a/a/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/b/a/a/d;->d(Ljava/nio/ByteBuffer;)V

    .line 136
    iget-wide v0, p0, Lcom/b/a/a/d;->k:J

    invoke-static {p1, v0, v1}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;J)V

    .line 137
    iget-object v0, p0, Lcom/b/a/a/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 138
    iget-wide v0, p0, Lcom/b/a/a/d;->g:J

    invoke-static {p1, v0, v1}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;J)V

    .line 139
    iget-wide v0, p0, Lcom/b/a/a/d;->h:J

    invoke-static {p1, v0, v1}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;J)V

    .line 140
    iget-wide v0, p0, Lcom/b/a/a/d;->i:J

    invoke-static {p1, v0, v1}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;J)V

    .line 141
    iget-object v0, p0, Lcom/b/a/a/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/b/a/a/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/a/d;->j:Z

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 147
    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/b/a/a/d;->o:Lorg/a/a/a/a$a;

    invoke-static {v0, p0, p0}, Lorg/a/a/b/a/b;->a(Lorg/a/a/a/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/a/a/a/a;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/c/a/f;->a()Lcom/c/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/f;->a(Lorg/a/a/a/a;)V

    iget-object v0, p0, Lcom/b/a/a/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected d()J
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/b/a/a/d;->j:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/b/a/a/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/f;->b(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    int-to-long v0, v0

    .line 107
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/f;->b(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/b/a/a/d;->q:Lorg/a/a/a/a$a;

    invoke-static {v0, p0, p0}, Lorg/a/a/b/a/b;->a(Lorg/a/a/a/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/a/a/a/a;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/c/a/f;->a()Lcom/c/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/c/a/f;->a(Lorg/a/a/a/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HandlerBox[handlerType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/b/a/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
