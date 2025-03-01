.class La/a/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/a/a/a;


# direct methods
.method constructor <init>(La/a/a/a;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, La/a/a/a$1;->a:La/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 395
    packed-switch p1, :pswitch_data_0

    .line 420
    :goto_0
    return v2

    .line 397
    :pswitch_0
    const-string v0, "Event: Device Attached"

    invoke-static {v0, v3}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 398
    iget-object v0, p0, La/a/a/a$1;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->a(La/a/a/a;)La/a/a/a$a;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a$a;->a()V

    goto :goto_0

    .line 402
    :pswitch_1
    const-string v0, "Event: Device Detached"

    invoke-static {v0, v3}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 403
    iget-object v0, p0, La/a/a/a$1;->a:La/a/a/a;

    invoke-static {v0, v2}, La/a/a/a;->a(La/a/a/a;I)I

    .line 404
    iget-object v0, p0, La/a/a/a$1;->a:La/a/a/a;

    invoke-static {v0, v2}, La/a/a/a;->b(La/a/a/a;I)V

    .line 405
    iget-object v0, p0, La/a/a/a$1;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->b(La/a/a/a;)V

    .line 406
    iget-object v0, p0, La/a/a/a$1;->a:La/a/a/a;

    invoke-static {v0}, La/a/a/a;->a(La/a/a/a;)La/a/a/a$a;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a$a;->b()V

    goto :goto_0

    .line 410
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event: Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, La/a/a/a;->a(Ljava/lang/String;I)V

    .line 411
    if-nez p2, :cond_0

    .line 412
    iget-object v0, p0, La/a/a/a$1;->a:La/a/a/a;

    const/4 v1, 0x3

    invoke-static {v0, v1}, La/a/a/a;->c(La/a/a/a;I)I

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, La/a/a/a$1;->a:La/a/a/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, La/a/a/a;->c(La/a/a/a;I)I

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
