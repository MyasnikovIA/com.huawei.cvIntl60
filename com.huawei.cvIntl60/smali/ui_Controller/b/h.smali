.class public Lui_Controller/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/b/h;->f:I

    .line 15
    iput v1, p0, Lui_Controller/b/h;->a:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/b/h;->b:Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/b/h;->d:Z

    .line 18
    iput-boolean v1, p0, Lui_Controller/b/h;->e:Z

    .line 19
    return-void
.end method
