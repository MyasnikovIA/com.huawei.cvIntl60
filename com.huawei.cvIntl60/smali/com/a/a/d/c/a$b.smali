.class public Lcom/a/a/d/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/a$a;
.implements Lcom/a/a/d/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/a$a",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/a/a/d/c/o",
        "<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/a/a/d/c/a$b;->a:Landroid/content/res/AssetManager;

    .line 94
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/a/a/d/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lcom/a/a/d/a/b",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/a/a/d/a/f;

    invoke-direct {v0, p1, p2}, Lcom/a/a/d/a/f;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/a/a/d/c/r;)Lcom/a/a/d/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/r;",
            ")",
            "Lcom/a/a/d/c/n",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/a/a/d/c/a;

    iget-object v1, p0, Lcom/a/a/d/c/a$b;->a:Landroid/content/res/AssetManager;

    invoke-direct {v0, v1, p0}, Lcom/a/a/d/c/a;-><init>(Landroid/content/res/AssetManager;Lcom/a/a/d/c/a$a;)V

    return-object v0
.end method
