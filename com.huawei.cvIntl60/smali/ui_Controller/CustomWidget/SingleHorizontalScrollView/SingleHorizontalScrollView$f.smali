.class public Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

.field public b:Lui_Controller/CustomWidget/a;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->a:Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;

    .line 47
    iput-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->b:Lui_Controller/CustomWidget/a;

    .line 48
    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->c:I

    .line 49
    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->d:I

    .line 50
    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/SingleHorizontalScrollView$f;->e:I

    .line 55
    return-void
.end method
