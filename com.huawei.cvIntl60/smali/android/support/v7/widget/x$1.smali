.class Landroid/support/v7/widget/x$1;
.super Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/x;->a(Landroid/content/Context;Landroid/support/v7/widget/bk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Landroid/support/v7/widget/x;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/x;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Landroid/support/v7/widget/x$1;->b:Landroid/support/v7/widget/x;

    iput-object p2, p0, Landroid/support/v7/widget/x$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/x$1;->b:Landroid/support/v7/widget/x;

    iget-object v1, p0, Landroid/support/v7/widget/x$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/x;->a(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    .line 256
    return-void
.end method
