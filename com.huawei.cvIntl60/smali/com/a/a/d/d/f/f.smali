.class public Lcom/a/a/d/d/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/d/f/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/d/f/d",
        "<TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/d/f/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/d/f/f",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/a/a/d/d/f/f;

    invoke-direct {v0}, Lcom/a/a/d/d/f/f;-><init>()V

    sput-object v0, Lcom/a/a/d/d/f/f;->a:Lcom/a/a/d/d/f/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/a/a/d/d/f/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/d/d/f/d",
            "<TZ;TZ;>;"
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/a/a/d/d/f/f;->a:Lcom/a/a/d/d/f/f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/s;Lcom/a/a/d/j;)Lcom/a/a/d/b/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/s",
            "<TZ;>;",
            "Lcom/a/a/d/j;",
            ")",
            "Lcom/a/a/d/b/s",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 21
    return-object p1
.end method
