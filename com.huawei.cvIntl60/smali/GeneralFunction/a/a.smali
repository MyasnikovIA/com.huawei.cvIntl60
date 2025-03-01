.class public LGeneralFunction/a/a;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Locale;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, LGeneralFunction/a/a;->a:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/a/a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, LGeneralFunction/a/a;->b:I

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, LGeneralFunction/a/a;->a(IJ)V

    .line 60
    return-void
.end method

.method public a(IJ)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public a(La/c/a;)V
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, LGeneralFunction/a/a;->a(La/c/a;J)V

    .line 70
    return-void
.end method

.method public a(La/c/a;J)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, LGeneralFunction/a/a;->b(IJ)V

    .line 90
    return-void
.end method

.method public b(IJ)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public b(La/c/a;)V
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, LGeneralFunction/a/a;->b(La/c/a;J)V

    .line 100
    return-void
.end method

.method public b(La/c/a;J)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LGeneralFunction/a/a;->b:I

    .line 49
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, LGeneralFunction/a/a;->b:I

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/a/a;->b:I

    .line 31
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, LGeneralFunction/a/a;->b:I

    .line 43
    return-void
.end method
