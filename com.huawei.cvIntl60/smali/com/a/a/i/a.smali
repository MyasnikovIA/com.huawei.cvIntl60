.class public final Lcom/a/a/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/h;


# static fields
.field private static final b:Lcom/a/a/i/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/a/a/i/a;

    invoke-direct {v0}, Lcom/a/a/i/a;-><init>()V

    sput-object v0, Lcom/a/a/i/a;->b:Lcom/a/a/i/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a()Lcom/a/a/i/a;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/a/a/i/a;->b:Lcom/a/a/i/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "EmptySignature"

    return-object v0
.end method
