.class public LGeneralFunction/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/f$a;,
        LGeneralFunction/f$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:LGeneralFunction/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, LGeneralFunction/f;->b:Ljava/lang/String;

    .line 26
    iput-object p1, p0, LGeneralFunction/f;->a:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic a(LGeneralFunction/f;)LGeneralFunction/f$b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, LGeneralFunction/f;->c:LGeneralFunction/f$b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)LGeneralFunction/f;
    .locals 1

    .prologue
    .line 30
    new-instance v0, LGeneralFunction/f;

    invoke-direct {v0, p0}, LGeneralFunction/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a(I)LGeneralFunction/f;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LGeneralFunction/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LGeneralFunction/f;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/f;->b:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public a(LGeneralFunction/f$b;)LGeneralFunction/f;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, LGeneralFunction/f;->c:LGeneralFunction/f$b;

    .line 91
    return-object p0
.end method

.method public a(Z)Landroid/text/SpannableStringBuilder;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, LGeneralFunction/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 72
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 73
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 76
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 77
    new-instance v6, LGeneralFunction/f$a;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, p1}, LGeneralFunction/f$a;-><init>(LGeneralFunction/f;Ljava/lang/String;Z)V

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 78
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/16 v8, 0x21

    .line 77
    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-object v3
.end method
