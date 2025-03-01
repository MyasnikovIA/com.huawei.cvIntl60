.class Lui_Controller/CustomWidget/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/CustomWidget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/CustomWidget/a;

.field private b:Z

.field private c:Ljava/util/concurrent/Semaphore;

.field private d:Lui_Controller/CustomWidget/a$d;

.field private e:I

.field private f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lui_Controller/CustomWidget/a;Lui_Controller/CustomWidget/a$d;ILandroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 67
    iput-object p1, p0, Lui_Controller/CustomWidget/a$c;->a:Lui_Controller/CustomWidget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v2, p0, Lui_Controller/CustomWidget/a$c;->b:Z

    .line 62
    iput-object v0, p0, Lui_Controller/CustomWidget/a$c;->d:Lui_Controller/CustomWidget/a$d;

    .line 63
    iput v2, p0, Lui_Controller/CustomWidget/a$c;->e:I

    .line 64
    iput-object v0, p0, Lui_Controller/CustomWidget/a$c;->f:Landroid/graphics/Bitmap;

    .line 68
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lui_Controller/CustomWidget/a$c;->c:Ljava/util/concurrent/Semaphore;

    .line 69
    iput-object p2, p0, Lui_Controller/CustomWidget/a$c;->d:Lui_Controller/CustomWidget/a$d;

    .line 70
    iput p3, p0, Lui_Controller/CustomWidget/a$c;->e:I

    .line 71
    iput-object p4, p0, Lui_Controller/CustomWidget/a$c;->f:Landroid/graphics/Bitmap;

    .line 72
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lui_Controller/CustomWidget/a$c;->b:Z

    if-nez v0, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a$c;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/CustomWidget/a$c;->b:Z

    .line 84
    :cond_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lui_Controller/CustomWidget/a$c;->d:Lui_Controller/CustomWidget/a$d;

    iget v1, p0, Lui_Controller/CustomWidget/a$c;->e:I

    iget-object v2, p0, Lui_Controller/CustomWidget/a$c;->f:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lui_Controller/CustomWidget/a$d;->a(ILandroid/graphics/Bitmap;)V

    .line 89
    iget-object v0, p0, Lui_Controller/CustomWidget/a$c;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 90
    return-void
.end method
