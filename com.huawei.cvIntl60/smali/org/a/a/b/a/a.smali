.class abstract Lorg/a/a/b/a/a;
.super Lorg/a/a/b/a/d;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/a/a/a;


# instance fields
.field a:[Ljava/lang/Class;

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/Class;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/b/a/d;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    .line 28
    iput-object p4, p0, Lorg/a/a/b/a/a;->a:[Ljava/lang/Class;

    .line 29
    iput-object p5, p0, Lorg/a/a/b/a/a;->b:[Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lorg/a/a/b/a/a;->c:[Ljava/lang/Class;

    .line 31
    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/a/a/b/a/a;->a:[Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/a/a/b/a/f;->d(I)[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/b/a/a;->a:[Ljava/lang/Class;

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/a/a/b/a/a;->a:[Ljava/lang/Class;

    return-object v0
.end method

.method public b()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/a/a/b/a/a;->c:[Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/a/a/b/a/f;->d(I)[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/b/a/a;->c:[Ljava/lang/Class;

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/a/a/b/a/a;->c:[Ljava/lang/Class;

    return-object v0
.end method
