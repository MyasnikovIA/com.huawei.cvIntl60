.class final Landroid/support/transition/l$1;
.super Landroid/support/transition/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/support/transition/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFF)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 173
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 174
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 175
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    return-object v0
.end method
