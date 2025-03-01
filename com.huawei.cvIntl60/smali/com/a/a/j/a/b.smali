.class public abstract Lcom/a/a/j/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/j/a/b$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/j/a/b$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/a/a/j/a/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/a/a/j/a/b;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/a/a/j/a/b$a;

    invoke-direct {v0}, Lcom/a/a/j/a/b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract a(Z)V
.end method

.method public abstract b()V
.end method
