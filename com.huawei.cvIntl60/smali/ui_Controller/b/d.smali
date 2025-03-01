.class public Lui_Controller/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui_Controller/b/d$a;
    }
.end annotation


# static fields
.field private static a:Lui_Controller/b/d;


# instance fields
.field private b:Lui_Controller/b/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lui_Controller/b/d;->a:Lui_Controller/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lui_Controller/b/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lui_Controller/b/d$a;-><init>(Lui_Controller/b/d;Lui_Controller/b/d$1;)V

    iput-object v0, p0, Lui_Controller/b/d;->b:Lui_Controller/b/d$a;

    return-void
.end method

.method public static a()Lui_Controller/b/d;
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lui_Controller/b/d;->a:Lui_Controller/b/d;

    if-nez v0, :cond_1

    .line 11
    const-class v1, Lui_Controller/b/d;

    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v0, Lui_Controller/b/d;->a:Lui_Controller/b/d;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lui_Controller/b/d;

    invoke-direct {v0}, Lui_Controller/b/d;-><init>()V

    sput-object v0, Lui_Controller/b/d;->a:Lui_Controller/b/d;

    .line 15
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_1
    sget-object v0, Lui_Controller/b/d;->a:Lui_Controller/b/d;

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lui_Controller/b/d;->b:Lui_Controller/b/d$a;

    iput p1, v0, Lui_Controller/b/d$a;->b:I

    .line 33
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lui_Controller/b/d;->b:Lui_Controller/b/d$a;

    iput-boolean p1, v0, Lui_Controller/b/d$a;->a:Z

    .line 23
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lui_Controller/b/d;->b:Lui_Controller/b/d$a;

    iget-boolean v0, v0, Lui_Controller/b/d$a;->a:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lui_Controller/b/d;->b:Lui_Controller/b/d$a;

    iget v0, v0, Lui_Controller/b/d$a;->b:I

    return v0
.end method
