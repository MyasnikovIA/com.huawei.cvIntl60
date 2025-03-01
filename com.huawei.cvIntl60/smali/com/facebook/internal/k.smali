.class public final Lcom/facebook/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/k$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/t;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/k$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/facebook/internal/g;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Lorg/json/JSONArray;

.field private p:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/g;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/t;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/k$a;",
            ">;>;Z",
            "Lcom/facebook/internal/g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Lcom/facebook/internal/k;->a:Z

    .line 72
    iput-object p2, p0, Lcom/facebook/internal/k;->b:Ljava/lang/String;

    .line 73
    iput-boolean p3, p0, Lcom/facebook/internal/k;->c:Z

    .line 74
    iput-boolean p4, p0, Lcom/facebook/internal/k;->d:Z

    .line 75
    iput-object p7, p0, Lcom/facebook/internal/k;->g:Ljava/util/Map;

    .line 76
    iput-object p9, p0, Lcom/facebook/internal/k;->i:Lcom/facebook/internal/g;

    .line 77
    iput p5, p0, Lcom/facebook/internal/k;->e:I

    .line 78
    iput-boolean p8, p0, Lcom/facebook/internal/k;->h:Z

    .line 79
    iput-object p6, p0, Lcom/facebook/internal/k;->f:Ljava/util/EnumSet;

    .line 80
    iput-object p10, p0, Lcom/facebook/internal/k;->j:Ljava/lang/String;

    .line 81
    iput-object p11, p0, Lcom/facebook/internal/k;->k:Ljava/lang/String;

    .line 82
    iput-boolean p12, p0, Lcom/facebook/internal/k;->l:Z

    .line 83
    iput-boolean p13, p0, Lcom/facebook/internal/k;->m:Z

    .line 84
    iput-object p14, p0, Lcom/facebook/internal/k;->o:Lorg/json/JSONArray;

    .line 85
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/internal/k;->n:Ljava/lang/String;

    .line 86
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/facebook/internal/k;->p:Z

    .line 87
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/facebook/internal/k;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/facebook/internal/k;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/facebook/internal/k;->e:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/facebook/internal/k;->h:Z

    return v0
.end method

.method public e()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/internal/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/internal/k;->f:Ljava/util/EnumSet;

    return-object v0
.end method

.method public f()Lcom/facebook/internal/g;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/internal/k;->i:Lcom/facebook/internal/g;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/facebook/internal/k;->l:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/facebook/internal/k;->m:Z

    return v0
.end method

.method public i()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/internal/k;->o:Lorg/json/JSONArray;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/internal/k;->n:Ljava/lang/String;

    return-object v0
.end method
