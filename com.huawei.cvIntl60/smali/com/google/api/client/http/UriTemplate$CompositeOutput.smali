.class final enum Lcom/google/api/client/http/UriTemplate$CompositeOutput;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/UriTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CompositeOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/client/http/UriTemplate$CompositeOutput;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum AMP:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum DOT:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum FORWARD_SLASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum HASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum PLUS:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum QUERY:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum SEMI_COLON:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

.field public static final enum SIMPLE:Lcom/google/api/client/http/UriTemplate$CompositeOutput;


# instance fields
.field private final explodeJoiner:Ljava/lang/String;

.field private final outputPrefix:Ljava/lang/String;

.field private final propertyPrefix:Ljava/lang/Character;

.field private final requiresVarAssignment:Z

.field private final reservedExpansion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 94
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "PLUS"

    const/4 v2, 0x0

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, ""

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->PLUS:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 97
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "HASH"

    const/4 v2, 0x1

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "#"

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->HASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 100
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "DOT"

    const/4 v2, 0x2

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "."

    const-string v5, "."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->DOT:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 103
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "FORWARD_SLASH"

    const/4 v2, 0x3

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "/"

    const-string v5, "/"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->FORWARD_SLASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 106
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "SEMI_COLON"

    const/4 v2, 0x4

    const/16 v3, 0x3b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, ";"

    const-string v5, ";"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->SEMI_COLON:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 109
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "QUERY"

    const/4 v2, 0x5

    const/16 v3, 0x3f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "?"

    const-string v5, "&"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->QUERY:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 112
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "AMP"

    const/4 v2, 0x6

    const/16 v3, 0x26

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "&"

    const-string v5, "&"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->AMP:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 115
    new-instance v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const-string v1, "SIMPLE"

    const/4 v2, 0x7

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->SIMPLE:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->PLUS:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->HASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->DOT:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->FORWARD_SLASH:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->SEMI_COLON:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->QUERY:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->AMP:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->SIMPLE:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->$VALUES:[Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput-object p3, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->propertyPrefix:Ljava/lang/Character;

    .line 136
    invoke-static {p4}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->outputPrefix:Ljava/lang/String;

    .line 137
    invoke-static {p5}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->explodeJoiner:Ljava/lang/String;

    .line 138
    iput-boolean p6, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment:Z

    .line 139
    iput-boolean p7, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->reservedExpansion:Z

    .line 140
    if-eqz p3, :cond_0

    .line 141
    sget-object v0, Lcom/google/api/client/http/UriTemplate;->COMPOSITE_PREFIXES:Ljava/util/Map;

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->$VALUES:[Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    invoke-virtual {v0}, [Lcom/google/api/client/http/UriTemplate$CompositeOutput;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    return-object v0
.end method


# virtual methods
.method getEncodedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->reservedExpansion:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p1}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getExplodeJoiner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->explodeJoiner:Ljava/lang/String;

    return-object v0
.end method

.method getOutputPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->outputPrefix:Ljava/lang/String;

    return-object v0
.end method

.method getReservedExpansion()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->reservedExpansion:Z

    return v0
.end method

.method getVarNameStartIndex()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->propertyPrefix:Ljava/lang/Character;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method requiresVarAssignment()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment:Z

    return v0
.end method
