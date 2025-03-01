.class Lorg/a/a/b/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/a/a/a/d;

.field c:Lorg/a/a/a/a/d;

.field private d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/a/a/a/d;Lorg/a/a/a/a/d;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lorg/a/a/b/a/c$a;->a:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lorg/a/a/b/a/c$a;->b:Lorg/a/a/a/d;

    .line 32
    iput-object p4, p0, Lorg/a/a/b/a/c$a;->c:Lorg/a/a/a/a/d;

    .line 33
    iput p1, p0, Lorg/a/a/b/a/c$a;->d:I

    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/a/a/b/a/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Lorg/a/a/b/a/h;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    invoke-virtual {p0}, Lorg/a/a/b/a/c$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/a/a/b/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {p0}, Lorg/a/a/b/a/c$a;->b()Lorg/a/a/a/d;

    move-result-object v0

    check-cast v0, Lorg/a/a/b/a/f;

    invoke-virtual {v0, p1}, Lorg/a/a/b/a/f;->b(Lorg/a/a/b/a/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/a/a/a/d;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/a/a/b/a/c$a;->b:Lorg/a/a/a/d;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/a/a/b/a/h;->k:Lorg/a/a/b/a/h;

    invoke-virtual {p0, v0}, Lorg/a/a/b/a/c$a;->a(Lorg/a/a/b/a/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
