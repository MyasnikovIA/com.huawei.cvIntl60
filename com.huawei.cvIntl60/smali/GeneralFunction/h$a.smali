.class public LGeneralFunction/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:LGeneralFunction/h$b;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, LGeneralFunction/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LGeneralFunction/h$b;-><init>(LGeneralFunction/h$1;)V

    iput-object v0, p0, LGeneralFunction/h$a;->a:LGeneralFunction/h$b;

    .line 135
    iput-object p1, p0, LGeneralFunction/h$a;->b:Landroid/content/Context;

    .line 136
    return-void
.end method


# virtual methods
.method public a(ILandroid/content/DialogInterface$OnClickListener;)LGeneralFunction/h$a;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 139
    iget-object v0, p0, LGeneralFunction/h$a;->a:LGeneralFunction/h$b;

    invoke-static {v0, p2}, LGeneralFunction/h$b;->a(LGeneralFunction/h$b;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 140
    iget-object v0, p0, LGeneralFunction/h$a;->a:LGeneralFunction/h$b;

    iget-object v1, p0, LGeneralFunction/h$a;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LGeneralFunction/h$b;->a(LGeneralFunction/h$b;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 141
    return-object p0
.end method

.method public a()LGeneralFunction/h;
    .locals 2

    .prologue
    .line 156
    new-instance v0, LGeneralFunction/h;

    invoke-direct {v0}, LGeneralFunction/h;-><init>()V

    .line 157
    iget-object v1, p0, LGeneralFunction/h$a;->a:LGeneralFunction/h$b;

    invoke-static {v0, v1}, LGeneralFunction/h;->a(LGeneralFunction/h;LGeneralFunction/h$b;)V

    .line 158
    return-object v0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)LGeneralFunction/h$a;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 145
    iget-object v0, p0, LGeneralFunction/h$a;->a:LGeneralFunction/h$b;

    iget-object v1, p0, LGeneralFunction/h$a;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LGeneralFunction/h$b;->b(LGeneralFunction/h$b;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 146
    iget-object v0, p0, LGeneralFunction/h$a;->a:LGeneralFunction/h$b;

    invoke-static {v0, p2}, LGeneralFunction/h$b;->b(LGeneralFunction/h$b;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    .line 147
    return-object p0
.end method
