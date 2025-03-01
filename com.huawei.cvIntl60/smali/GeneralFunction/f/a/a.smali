.class public LGeneralFunction/f/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/f/a/a$b;,
        LGeneralFunction/f/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:J

.field private d:LGeneralFunction/f/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, LGeneralFunction/f/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LGeneralFunction/f/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/f/a/a;->b:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LGeneralFunction/f/a/a;->c:J

    .line 39
    new-instance v0, LGeneralFunction/f/a/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LGeneralFunction/f/a/a$b;-><init>(LGeneralFunction/f/a/a;LGeneralFunction/f/a/a$1;)V

    iput-object v0, p0, LGeneralFunction/f/a/a;->d:LGeneralFunction/f/a/a$b;

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "user cancel"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, LGeneralFunction/f/a/a;->a(Ljava/lang/String;I)V

    .line 59
    iget-object v0, p0, LGeneralFunction/f/a/a;->d:LGeneralFunction/f/a/a$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LGeneralFunction/f/a/a$b;->a(LGeneralFunction/f/a/a$b;Z)Z

    .line 60
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, LGeneralFunction/f/a/a;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    return-void
.end method
