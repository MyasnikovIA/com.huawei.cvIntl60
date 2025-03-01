.class LGeneralFunction/f/a/b$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/f/a/b;


# direct methods
.method private constructor <init>(LGeneralFunction/f/a/b;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, LGeneralFunction/f/a/b$a;->a:LGeneralFunction/f/a/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LGeneralFunction/f/a/b;LGeneralFunction/f/a/b$1;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1}, LGeneralFunction/f/a/b$a;-><init>(LGeneralFunction/f/a/b;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 331
    iget-object v1, p0, LGeneralFunction/f/a/b$a;->a:LGeneralFunction/f/a/b;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, LGeneralFunction/f/a/b$d;

    iget-object v2, v0, LGeneralFunction/f/a/b$d;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, LGeneralFunction/f/a/b;->a(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v1

    .line 332
    aget-object v0, p1, v3

    if-eqz v0, :cond_0

    .line 333
    aget-object v0, p1, v3

    check-cast v0, LGeneralFunction/f/a/b$b;

    invoke-interface {v0, v1}, LGeneralFunction/f/a/b$b;->a(I)V

    .line 335
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
