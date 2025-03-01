.class Lui_Controller/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:I

.field final synthetic c:Lui_Controller/b/d;


# direct methods
.method private constructor <init>(Lui_Controller/b/d;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lui_Controller/b/d$a;->c:Lui_Controller/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lui_Controller/b/d$a;->a:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/b/d$a;->b:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lui_Controller/b/d;Lui_Controller/b/d$1;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lui_Controller/b/d$a;-><init>(Lui_Controller/b/d;)V

    return-void
.end method
