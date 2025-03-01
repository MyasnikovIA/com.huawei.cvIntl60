.class public Lui_Controller/CustomWidget/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/CustomWidget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/CustomWidget/a$b;->a:Ljava/lang/String;

    .line 42
    iput v1, p0, Lui_Controller/CustomWidget/a$b;->b:I

    .line 43
    iput v1, p0, Lui_Controller/CustomWidget/a$b;->c:I

    .line 44
    iput v1, p0, Lui_Controller/CustomWidget/a$b;->d:I

    .line 45
    iput v1, p0, Lui_Controller/CustomWidget/a$b;->e:I

    .line 46
    iput-boolean v2, p0, Lui_Controller/CustomWidget/a$b;->f:Z

    .line 47
    iput-boolean v2, p0, Lui_Controller/CustomWidget/a$b;->g:Z

    .line 48
    iput-boolean v2, p0, Lui_Controller/CustomWidget/a$b;->h:Z

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lui_Controller/CustomWidget/a$b;->i:I

    .line 50
    iput v1, p0, Lui_Controller/CustomWidget/a$b;->j:I

    .line 55
    return-void
.end method
