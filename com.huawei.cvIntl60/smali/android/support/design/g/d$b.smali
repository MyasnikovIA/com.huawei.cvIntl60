.class public Landroid/support/design/g/d$b;
.super Landroid/support/design/g/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/support/design/g/d$c;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/design/g/d$b;F)F
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Landroid/support/design/g/d$b;->a:F

    return p1
.end method

.method static synthetic b(Landroid/support/design/g/d$b;F)F
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Landroid/support/design/g/d$b;->b:F

    return p1
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/design/g/d$b;->g:Landroid/graphics/Matrix;

    .line 143
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 144
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 145
    iget v0, p0, Landroid/support/design/g/d$b;->a:F

    iget v1, p0, Landroid/support/design/g/d$b;->b:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 147
    return-void
.end method
