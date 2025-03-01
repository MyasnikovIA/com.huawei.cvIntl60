.class Lui_Controller/ui_Gallery/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Gallery/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Gallery/b;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lui_Controller/ui_Gallery/b;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object p1, p0, Lui_Controller/ui_Gallery/b$d;->a:Lui_Controller/ui_Gallery/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lui_Controller/ui_Gallery/b$d;->b:I

    .line 50
    iput v0, p0, Lui_Controller/ui_Gallery/b$d;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lui_Controller/ui_Gallery/b;Lui_Controller/ui_Gallery/b$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lui_Controller/ui_Gallery/b$d;-><init>(Lui_Controller/ui_Gallery/b;)V

    return-void
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/b$d;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lui_Controller/ui_Gallery/b$d;->b:I

    return v0
.end method

.method static synthetic a(Lui_Controller/ui_Gallery/b$d;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lui_Controller/ui_Gallery/b$d;->b:I

    return p1
.end method

.method static synthetic b(Lui_Controller/ui_Gallery/b$d;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lui_Controller/ui_Gallery/b$d;->c:I

    return v0
.end method

.method static synthetic b(Lui_Controller/ui_Gallery/b$d;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lui_Controller/ui_Gallery/b$d;->c:I

    return p1
.end method
