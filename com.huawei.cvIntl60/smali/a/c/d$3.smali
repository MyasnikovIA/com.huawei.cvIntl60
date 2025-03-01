.class La/c/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/c/d;


# direct methods
.method constructor <init>(La/c/d;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, La/c/d$3;->a:La/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, La/c/d$3;->a:La/c/d;

    const-string v1, "Notify: USB device Attached"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, La/c/d;->a(La/c/d;Ljava/lang/String;I)V

    .line 455
    iget-object v0, p0, La/c/d$3;->a:La/c/d;

    new-instance v1, La/c/a;

    const/16 v2, 0x4804

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-static {v0, v1}, La/c/d;->a(La/c/d;La/c/a;)V

    .line 456
    return-void
.end method

.method public a(La/c/a;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-virtual {p1}, La/c/a;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 449
    :goto_0
    iget-object v0, p0, La/c/d$3;->a:La/c/d;

    invoke-static {v0, p1}, La/c/d;->a(La/c/d;La/c/a;)V

    .line 450
    :goto_1
    return-void

    .line 416
    :pswitch_0
    iget-object v0, p0, La/c/d$3;->a:La/c/d;

    invoke-static {v0}, La/c/d;->b(La/c/d;)La/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    iget-object v0, p0, La/c/d$3;->a:La/c/d;

    invoke-static {v0}, La/c/d;->b(La/c/d;)La/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a;->a()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 417
    iget-object v0, p0, La/c/d$3;->a:La/c/d;

    const-string v2, "Enable live view first"

    invoke-static {v0, v2, v1}, La/c/d;->a(La/c/d;Ljava/lang/String;I)V

    goto :goto_1

    .line 420
    :cond_0
    const-string v0, "result"

    invoke-virtual {p1, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 421
    new-instance v2, La/c/a;

    const/16 v0, 0x4700

    invoke-direct {v2, v0}, La/c/a;-><init>(I)V

    .line 422
    const-string v0, "LiveViewFrame"

    invoke-virtual {p1, v0}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/d;

    .line 423
    iget-object v3, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    iget v3, v3, LGeneralFunction/c/d;->a:I

    .line 424
    new-array v4, v3, [B

    .line 425
    iget-object v5, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v5}, LGeneralFunction/c/d;->a()[B

    move-result-object v5

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object v3, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    invoke-virtual {v3}, LGeneralFunction/c/d;->d()V

    .line 428
    new-instance v3, LGeneralFunction/c/d;

    invoke-direct {v3, v4}, LGeneralFunction/c/d;-><init>([B)V

    .line 429
    iget-object v4, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    iget-wide v4, v4, LGeneralFunction/c/d;->b:J

    iput-wide v4, v3, LGeneralFunction/c/d;->b:J

    .line 430
    iget-object v4, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    iget-wide v4, v4, LGeneralFunction/c/d;->c:J

    iput-wide v4, v3, LGeneralFunction/c/d;->c:J

    .line 431
    iput-object v3, v0, La/a/a/d;->a:LGeneralFunction/c/d;

    .line 432
    const-string v3, "LiveViewFrame"

    new-instance v4, La/c/a$a;

    invoke-direct {v4, v0}, La/c/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, La/c/a;->a(Ljava/lang/String;La/c/a$a;)V

    .line 433
    iget-object v0, p0, La/c/d$3;->a:La/c/d;

    invoke-static {v0, v2}, La/c/d;->a(La/c/d;La/c/a;)V

    .line 434
    iget-object v0, p0, La/c/d$3;->a:La/c/d;

    invoke-static {v0, v1}, La/c/d;->a(La/c/d;I)I

    move v0, v1

    .line 445
    :cond_1
    :goto_2
    iget-object v1, p0, La/c/d$3;->a:La/c/d;

    new-instance v2, La/c/a;

    const/16 v3, 0x4820

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, La/c/d;->a(La/c/a;J)V

    goto/16 :goto_0

    .line 436
    :cond_2
    const-string v0, "result"

    invoke-virtual {p1, v0}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 437
    const/4 v0, 0x5

    .line 438
    iget-object v2, p0, La/c/d$3;->a:La/c/d;

    invoke-static {v2}, La/c/d;->c(La/c/d;)I

    .line 439
    iget-object v2, p0, La/c/d$3;->a:La/c/d;

    invoke-static {v2}, La/c/d;->d(La/c/d;)I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_1

    .line 440
    iget-object v2, p0, La/c/d$3;->a:La/c/d;

    const-string v3, "Get live view frame busy over 1000 times"

    invoke-static {v2, v3, v1}, La/c/d;->a(La/c/d;Ljava/lang/String;I)V

    .line 441
    iget-object v2, p0, La/c/d$3;->a:La/c/d;

    invoke-static {v2, v1}, La/c/d;->a(La/c/d;I)I

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x4820
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, La/c/d$3;->a:La/c/d;

    const-string v1, "Notify: USB device Detached"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, La/c/d;->a(La/c/d;Ljava/lang/String;I)V

    .line 461
    iget-object v0, p0, La/c/d$3;->a:La/c/d;

    invoke-static {v0}, La/c/d;->a(La/c/d;)La/c/c;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, La/c/c;->c:I

    .line 463
    iget-object v0, p0, La/c/d$3;->a:La/c/d;

    new-instance v1, La/c/a;

    const/16 v2, 0x4803

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-static {v0, v1}, La/c/d;->a(La/c/d;La/c/a;)V

    .line 464
    return-void
.end method
