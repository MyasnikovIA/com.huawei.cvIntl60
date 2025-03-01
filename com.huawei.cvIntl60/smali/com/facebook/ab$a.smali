.class Lcom/facebook/ab$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Boolean;

.field d:Z

.field e:J


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-boolean p1, p0, Lcom/facebook/ab$a;->d:Z

    .line 260
    iput-object p2, p0, Lcom/facebook/ab$a;->a:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/facebook/ab$a;->b:Ljava/lang/String;

    .line 262
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/ab$a;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ab$a;->d:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ab$a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
