.class Landroid/support/design/widget/BaseTransientBottomBar$e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/BaseTransientBottomBar$e;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar$e;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$e$1;->a:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$e$1;->a:Landroid/support/design/widget/BaseTransientBottomBar$e;

    invoke-static {v0, p1}, Landroid/support/design/widget/BaseTransientBottomBar$e;->a(Landroid/support/design/widget/BaseTransientBottomBar$e;Z)V

    .line 735
    return-void
.end method
