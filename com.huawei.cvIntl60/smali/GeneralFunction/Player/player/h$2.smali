.class LGeneralFunction/Player/player/h$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/Player/player/h;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/h;


# direct methods
.method constructor <init>(LGeneralFunction/Player/player/h;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, LGeneralFunction/Player/player/h$2;->a:LGeneralFunction/Player/player/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, LGeneralFunction/Player/player/h$2;->a:LGeneralFunction/Player/player/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, LGeneralFunction/Player/player/h;->B:Z

    .line 879
    return-void
.end method
