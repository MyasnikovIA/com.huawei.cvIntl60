.class public Landroid/support/design/theme/MaterialComponentsViewInflater;
.super Landroid/support/v7/app/AppCompatViewInflater;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/g;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    new-instance v0, Landroid/support/design/b/a;

    invoke-direct {v0, p1, p2}, Landroid/support/design/b/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method
