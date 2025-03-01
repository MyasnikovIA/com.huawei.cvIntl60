.class LGeneralFunction/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Z

.field private d:Landroid/content/DialogInterface$OnClickListener;

.field private e:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, LGeneralFunction/h$b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(LGeneralFunction/h$1;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, LGeneralFunction/h$b;-><init>()V

    return-void
.end method

.method static synthetic a(LGeneralFunction/h$b;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, LGeneralFunction/h$b;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic a(LGeneralFunction/h$b;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, LGeneralFunction/h$b;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic a(LGeneralFunction/h$b;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, LGeneralFunction/h$b;->a:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic b(LGeneralFunction/h$b;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, LGeneralFunction/h$b;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic b(LGeneralFunction/h$b;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, LGeneralFunction/h$b;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic b(LGeneralFunction/h$b;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, LGeneralFunction/h$b;->b:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic c(LGeneralFunction/h$b;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, LGeneralFunction/h$b;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic d(LGeneralFunction/h$b;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, LGeneralFunction/h$b;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic e(LGeneralFunction/h$b;)Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, LGeneralFunction/h$b;->c:Z

    return v0
.end method
