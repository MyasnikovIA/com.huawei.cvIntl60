.class public Lcom/a/a/d/c/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/o;
.implements Lcom/a/a/d/c/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/o",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/a/a/d/c/w$b",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/a/a/d/c/w$c;->a:Landroid/content/ContentResolver;

    .line 72
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/a/a/d/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/a/a/d/a/b",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/a/a/d/a/l;

    iget-object v1, p0, Lcom/a/a/d/c/w$c;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lcom/a/a/d/a/l;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public a(Lcom/a/a/d/c/r;)Lcom/a/a/d/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/r;",
            ")",
            "Lcom/a/a/d/c/n",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/a/a/d/c/w;

    invoke-direct {v0, p0}, Lcom/a/a/d/c/w;-><init>(Lcom/a/a/d/c/w$b;)V

    return-object v0
.end method
