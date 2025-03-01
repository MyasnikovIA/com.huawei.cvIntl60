.class public LGeneralFunction/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, LGeneralFunction/d/a;->a:I

    .line 15
    iput-object v1, p0, LGeneralFunction/d/a;->b:Ljava/lang/String;

    .line 16
    iput-object v1, p0, LGeneralFunction/d/a;->c:Ljava/lang/String;

    .line 17
    iput-object v1, p0, LGeneralFunction/d/a;->d:Ljava/lang/String;

    .line 18
    iput-object v1, p0, LGeneralFunction/d/a;->e:Ljava/lang/String;

    .line 19
    return-void
.end method
