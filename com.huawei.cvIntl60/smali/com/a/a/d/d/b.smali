.class public final Lcom/a/a/d/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/m",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final b:Lcom/a/a/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/m",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/a/a/d/d/b;

    invoke-direct {v0}, Lcom/a/a/d/d/b;-><init>()V

    sput-object v0, Lcom/a/a/d/d/b;->b:Lcom/a/a/d/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static a()Lcom/a/a/d/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/d/d/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/a/a/d/d/b;->b:Lcom/a/a/d/m;

    check-cast v0, Lcom/a/a/d/d/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/a/a/d/b/s;II)Lcom/a/a/d/b/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/a/a/d/b/s",
            "<TT;>;II)",
            "Lcom/a/a/d/b/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    return-object p2
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
