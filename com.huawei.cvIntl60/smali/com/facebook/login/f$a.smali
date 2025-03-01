.class Lcom/facebook/login/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/login/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    iput-object p1, p0, Lcom/facebook/login/f$a;->a:Landroid/app/Activity;

    .line 872
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/facebook/login/f$a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/facebook/login/f$a;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 877
    return-void
.end method
