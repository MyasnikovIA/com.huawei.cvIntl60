.class public Lui_Controller/ui_StartMode/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:LGeneralFunction/a/a;

.field public d:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/ui_StartMode/a;->a:I

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/ui_StartMode/a;->b:I

    .line 12
    iput-object v1, p0, Lui_Controller/ui_StartMode/a;->c:LGeneralFunction/a/a;

    .line 13
    iput-object v1, p0, Lui_Controller/ui_StartMode/a;->d:Landroid/content/Intent;

    .line 18
    return-void
.end method
