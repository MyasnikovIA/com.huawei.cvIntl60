.class public LGeneralFunction/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/database/Cursor;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LGeneralFunction/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "LGeneralFunction/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:LGeneralFunction/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/e/d;->c:I

    .line 43
    new-instance v0, LGeneralFunction/j;

    invoke-direct {v0}, LGeneralFunction/j;-><init>()V

    iput-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    .line 105
    return-void
.end method

.method private A(I)J
    .locals 3

    .prologue
    .line 274
    .line 275
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetFileSize lPosition Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 277
    const-wide/16 v0, -0x1

    .line 281
    :goto_0
    return-wide v0

    .line 279
    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v2, "FileSize"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private B(I)J
    .locals 3

    .prologue
    .line 322
    .line 323
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCaptureTime lPosition Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 325
    const-wide/16 v0, -0x1

    .line 329
    :goto_0
    return-wide v0

    .line 327
    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v2, "CaptureTime"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private C(I)J
    .locals 3

    .prologue
    .line 349
    .line 350
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetDownloadTime lPosition Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 352
    const-wide/16 v0, -0x1

    .line 356
    :goto_0
    return-wide v0

    .line 354
    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v2, "DownloadTime"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private D(I)Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method private E(I)Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method private F(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 456
    .line 457
    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is360File lPosition Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 463
    :cond_0
    :goto_0
    return v0

    .line 461
    :cond_1
    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v2, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v3, "Is360File"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private G(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 483
    .line 484
    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have360Stitch lPosition Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 488
    :cond_1
    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v2, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v3, "Have360Stitch"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private H(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 522
    .line 523
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->w(I)I

    move-result v2

    .line 524
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 544
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 531
    :pswitch_2
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->N(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 536
    goto :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private I(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 606
    .line 607
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->w(I)I

    move-result v2

    .line 608
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 628
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 614
    :pswitch_2
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->N(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 615
    goto :goto_0

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private J(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 684
    iget v1, p0, LGeneralFunction/e/d;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 685
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->K(I)Ljava/lang/String;

    move-result-object v0

    .line 703
    :cond_0
    :goto_0
    return-object v0

    .line 687
    :cond_1
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->D(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->M(I)Ljava/lang/String;

    move-result-object v1

    .line 689
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->L(I)Ljava/lang/String;

    move-result-object v2

    .line 691
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 694
    const-string v0, "DCIM/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lui_Controller/a/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->I(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thm"

    invoke-static {v2, v1}, LGeneralFunction/g/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 701
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private K(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 741
    iget v1, p0, LGeneralFunction/e/d;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 742
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->I(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 743
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->M(I)Ljava/lang/String;

    move-result-object v1

    .line 745
    if-nez v1, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-object v0

    .line 748
    :cond_1
    invoke-static {v1}, LGeneralFunction/g/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 750
    :cond_2
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->M(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 753
    :cond_3
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->I(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 754
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->J(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 756
    :cond_4
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->E(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->M(I)Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->L(I)Ljava/lang/String;

    move-result-object v2

    .line 760
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 763
    const-string v0, "DCIM/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lui_Controller/a/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private L(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 844
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetFileName lPosition Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 846
    const/4 v0, 0x0

    .line 849
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v2, "FileName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private M(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 869
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetFullPath lPosition Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 871
    const/4 v0, 0x0

    .line 875
    :goto_0
    return-object v0

    .line 873
    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v2, "FilePath"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 874
    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v2, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v3, "FileName"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private N(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 895
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->L(I)Ljava/lang/String;

    move-result-object v0

    .line 896
    if-eqz v0, :cond_0

    .line 897
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 899
    :cond_0
    return-object v0
.end method

.method private O(I)I
    .locals 1

    .prologue
    .line 977
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->P(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    const/4 v0, -0x1

    .line 981
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v0, v0, LGeneralFunction/e/a;->a:I

    goto :goto_0
.end method

.method private P(I)Z
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1089
    :cond_0
    const-string v0, "Error: LinkTable Over Size"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 1090
    const/4 v0, 0x1

    .line 1092
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method private j(II)I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 953
    invoke-virtual {p0, p1}, LGeneralFunction/e/d;->v(I)I

    move-result v0

    .line 955
    if-ne v0, v3, :cond_0

    move v0, v3

    .line 973
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 961
    :goto_1
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 962
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v0, v0, LGeneralFunction/e/a;->b:I

    if-ne v0, p1, :cond_2

    .line 963
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget-object v4, v0, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    .line 965
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 966
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 967
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v0, v0, LGeneralFunction/e/a;->a:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 965
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 961
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 972
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Not Found In Table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    move v0, v3

    .line 973
    goto :goto_0
.end method

.method private w(I)I
    .locals 3

    .prologue
    .line 139
    .line 140
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetFileType lPosition Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 142
    const/4 v0, -0x1

    .line 146
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v2, "FileType"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private x(I)I
    .locals 3

    .prologue
    .line 193
    .line 194
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetWidth lPosition Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 196
    const/4 v0, -0x1

    .line 200
    :goto_0
    return v0

    .line 198
    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v2, "Width"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private y(I)I
    .locals 3

    .prologue
    .line 220
    .line 221
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetHeight lPosition Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 223
    const/4 v0, -0x1

    .line 227
    :goto_0
    return v0

    .line 225
    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v2, "Height"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private z(I)I
    .locals 3

    .prologue
    .line 247
    .line 248
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetVideoDurationTime lPosition Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 250
    const/4 v0, -0x1

    .line 254
    :goto_0
    return v0

    .line 252
    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v2, "VideoDurationTime"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 159
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 160
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->w(I)I

    move-result v0

    .line 161
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 162
    return v0
.end method

.method public a(II)I
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 151
    invoke-direct {p0, p1, p2}, LGeneralFunction/e/d;->j(II)I

    move-result v0

    .line 152
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->w(I)I

    move-result v0

    .line 153
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 154
    return v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public a(Landroid/database/Cursor;LGeneralFunction/e/b;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 120
    iput-object p1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    .line 122
    invoke-virtual {p2}, LGeneralFunction/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/b;

    .line 123
    iget-object v1, v0, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    iput-object v1, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    .line 124
    iget-object v0, v0, LGeneralFunction/e/b;->b:Ljava/util/HashMap;

    iput-object v0, p0, LGeneralFunction/e/d;->d:Ljava/util/HashMap;

    .line 126
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 127
    return-void
.end method

.method public a(Landroid/database/Cursor;LGeneralFunction/e/b;I)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 109
    iput-object p1, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    .line 110
    invoke-virtual {p2}, LGeneralFunction/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/b;

    .line 111
    iget-object v1, v0, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    iput-object v1, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    .line 112
    iget-object v0, v0, LGeneralFunction/e/b;->b:Ljava/util/HashMap;

    iput-object v0, p0, LGeneralFunction/e/d;->d:Ljava/util/HashMap;

    .line 113
    iput p3, p0, LGeneralFunction/e/d;->c:I

    .line 115
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 116
    return-void
.end method

.method public b(I)I
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 213
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 214
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->x(I)I

    move-result v0

    .line 215
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 216
    return v0
.end method

.method public b(II)I
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 205
    invoke-direct {p0, p1, p2}, LGeneralFunction/e/d;->j(II)I

    move-result v0

    .line 206
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->x(I)I

    move-result v0

    .line 207
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 208
    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public c(I)I
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 240
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 241
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->y(I)I

    move-result v0

    .line 242
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 243
    return v0
.end method

.method public c(II)I
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 232
    invoke-direct {p0, p1, p2}, LGeneralFunction/e/d;->j(II)I

    move-result v0

    .line 233
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->y(I)I

    move-result v0

    .line 234
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 235
    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public d(I)I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 267
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 268
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->z(I)I

    move-result v0

    .line 269
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 270
    return v0
.end method

.method public d(II)I
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 259
    invoke-direct {p0, p1, p2}, LGeneralFunction/e/d;->j(II)I

    move-result v0

    .line 260
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->z(I)I

    move-result v0

    .line 261
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 262
    return v0
.end method

.method public d()LGeneralFunction/e/b;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 131
    new-instance v0, LGeneralFunction/e/b;

    invoke-direct {v0}, LGeneralFunction/e/b;-><init>()V

    .line 132
    iget-object v1, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    iput-object v1, v0, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    .line 133
    iget-object v1, p0, LGeneralFunction/e/d;->d:Ljava/util/HashMap;

    iput-object v1, v0, LGeneralFunction/e/b;->b:Ljava/util/HashMap;

    .line 134
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 135
    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public e(I)J
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 294
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 295
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->A(I)J

    move-result-wide v0

    .line 296
    iget-object v2, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->b()V

    .line 297
    return-wide v0
.end method

.method public e(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 709
    invoke-direct {p0, p1, p2}, LGeneralFunction/e/d;->j(II)I

    move-result v0

    .line 710
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->J(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 712
    return-object v0
.end method

.method public f(I)J
    .locals 6

    .prologue
    .line 301
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 303
    const-wide/16 v2, 0x0

    .line 305
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget-object v0, v0, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 306
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v0, v0, LGeneralFunction/e/a;->a:I

    add-int/2addr v0, v1

    .line 308
    iget-object v4, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetGroupTotalSize lPosition Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 310
    const-wide/16 v2, -0x1

    .line 317
    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 318
    return-wide v2

    .line 314
    :cond_1
    iget-object v0, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    iget-object v4, p0, LGeneralFunction/e/d;->a:Landroid/database/Cursor;

    const-string v5, "FileSize"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 305
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public f(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 775
    invoke-direct {p0, p1, p2}, LGeneralFunction/e/d;->j(II)I

    move-result v0

    .line 776
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->K(I)Ljava/lang/String;

    move-result-object v0

    .line 777
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 778
    return-object v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LGeneralFunction/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()I
    .locals 3

    .prologue
    .line 992
    const/4 v2, -0x1

    .line 994
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 995
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v0, v0, LGeneralFunction/e/a;->b:I

    if-le v0, v2, :cond_0

    .line 996
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v2, v0, LGeneralFunction/e/a;->b:I

    .line 994
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 999
    :cond_1
    return v2
.end method

.method public g(I)J
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 342
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 343
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->B(I)J

    move-result-wide v0

    .line 344
    iget-object v2, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->b()V

    .line 345
    return-wide v0
.end method

.method public g(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 854
    invoke-direct {p0, p1, p2}, LGeneralFunction/e/d;->j(II)I

    move-result v0

    .line 855
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->L(I)Ljava/lang/String;

    move-result-object v0

    .line 856
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 857
    return-object v0
.end method

.method public h(I)J
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 369
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 370
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->C(I)J

    move-result-wide v0

    .line 371
    iget-object v2, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->b()V

    .line 372
    return-wide v0
.end method

.method public h(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 880
    invoke-direct {p0, p1, p2}, LGeneralFunction/e/d;->j(II)I

    move-result v0

    .line 881
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->M(I)Ljava/lang/String;

    move-result-object v0

    .line 882
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 883
    return-object v0
.end method

.method public i(II)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1013
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->P(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return v0

    .line 1017
    :cond_1
    invoke-virtual {p0, p1}, LGeneralFunction/e/d;->q(I)I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 1020
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget-object v0, v0, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public i(I)Z
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 476
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 477
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->F(I)Z

    move-result v0

    .line 478
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 479
    return v0
.end method

.method public j(I)Z
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 503
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 504
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->G(I)Z

    move-result v0

    .line 505
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 506
    return v0
.end method

.method public k(I)Z
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 557
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 558
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->H(I)Z

    move-result v0

    .line 559
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 560
    return v0
.end method

.method public l(I)Z
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 641
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 642
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->I(I)Z

    move-result v0

    .line 643
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 644
    return v0
.end method

.method public m(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 717
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 718
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->J(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 720
    return-object v0
.end method

.method public n(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 862
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 863
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->L(I)Ljava/lang/String;

    move-result-object v0

    .line 864
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 865
    return-object v0
.end method

.method public o(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 888
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->O(I)I

    move-result v0

    .line 889
    invoke-direct {p0, v0}, LGeneralFunction/e/d;->M(I)Ljava/lang/String;

    move-result-object v0

    .line 890
    iget-object v1, p0, LGeneralFunction/e/d;->e:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 891
    return-object v0
.end method

.method public p(I)Z
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 927
    :cond_0
    const/4 v0, 0x0

    .line 929
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public q(I)I
    .locals 1

    .prologue
    .line 933
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->P(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    const/4 v0, -0x1

    .line 937
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget-object v0, v0, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public r(I)LGeneralFunction/e/a;
    .locals 1

    .prologue
    .line 945
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->P(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    const/4 v0, 0x0

    .line 949
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    goto :goto_0
.end method

.method public s(I)I
    .locals 1

    .prologue
    .line 985
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->P(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    const/4 v0, -0x1

    .line 988
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v0, v0, LGeneralFunction/e/a;->b:I

    goto :goto_0
.end method

.method public t(I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1003
    invoke-direct {p0, p1}, LGeneralFunction/e/d;->P(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1009
    :goto_0
    return v0

    .line 1006
    :cond_0
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget-object v0, v0, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1007
    goto :goto_0

    .line 1009
    :cond_1
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget-object v0, v0, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public u(I)I
    .locals 2

    .prologue
    .line 1053
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1054
    iget-object v0, p0, LGeneralFunction/e/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v0, v0, LGeneralFunction/e/a;->b:I

    if-ne v0, p1, :cond_0

    .line 1060
    :goto_1
    return v1

    .line 1053
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1059
    :cond_1
    const-string v0, "LinkTable_GetLinkIndex error"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 1060
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public v(I)I
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, LGeneralFunction/e/d;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/c;

    .line 1098
    if-nez v0, :cond_0

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: GroupIndexMap_GetLinkIndex no mapping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/d;->a(Ljava/lang/String;I)V

    .line 1100
    const/4 v0, -0x1

    .line 1102
    :goto_0
    return v0

    :cond_0
    iget v0, v0, LGeneralFunction/e/c;->a:I

    goto :goto_0
.end method
