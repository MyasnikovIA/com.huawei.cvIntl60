.class public Lui_Controller/ui_Gallery/ui_PhoneGallery/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

.field private b:LGeneralFunction/q/a$b;


# direct methods
.method public constructor <init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 1525
    new-instance v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e$1;

    invoke-direct {v0, p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e$1;-><init>(Lui_Controller/ui_Gallery/ui_PhoneGallery/e;)V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->b:LGeneralFunction/q/a$b;

    .line 58
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 59
    return-void
.end method

.method private a(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1591
    .line 1592
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 1594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 1601
    :goto_0
    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 1604
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1605
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1607
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1609
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1610
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1598
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 1612
    :cond_1
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1619
    :goto_2
    return-object v1

    .line 1616
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1617
    const-string v0, "android.intent.extra.STREAM"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 52
    const-string v0, "UI_PhoneGallerySingleHandler"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1577
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-boolean v3, v0, Lui_Controller/b/e;->r:Z

    .line 1579
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v0}, LGeneralFunction/e/d;->d()LGeneralFunction/e/b;

    move-result-object v0

    .line 1580
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 1582
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->t:I

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v1}, LGeneralFunction/e/d;->e()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1583
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->t:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lui_Controller/b/e;->s:I

    .line 1587
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v3, v0, Lui_Controller/b/e;->t:I

    .line 1588
    return-void

    .line 1585
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->t:I

    iput v1, v0, Lui_Controller/b/e;->s:I

    goto :goto_0
.end method

.method private b(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1678
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->N:I

    if-eqz v1, :cond_1

    .line 1686
    :cond_0
    :goto_0
    return v0

    .line 1684
    :cond_1
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v1, p1}, LGeneralFunction/e/d;->i(I)Z

    move-result v1

    .line 1685
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v2, p1}, LGeneralFunction/e/d;->j(I)Z

    move-result v2

    .line 1686
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 1639
    .line 1640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1642
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v2, v2, Lui_Controller/b/e;->r:Z

    if-eqz v2, :cond_1

    .line 1644
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->s(I)I

    move-result v2

    .line 1645
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v4, v4, Lui_Controller/b/e;->s:I

    invoke-virtual {v3, v4, v0}, LGeneralFunction/e/d;->i(II)I

    move-result v0

    .line 1646
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1648
    new-instance v0, Lui_Controller/b/a;

    invoke-direct {v0, v2, v3, v6, v5}, Lui_Controller/b/a;-><init>(ILjava/util/ArrayList;II)V

    .line 1649
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    :goto_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/util/ArrayList;)V

    .line 1664
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(I)V

    .line 1665
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->s:I

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v1}, LGeneralFunction/e/d;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 1667
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v0, Lui_Controller/b/e;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lui_Controller/b/e;->s:I

    .line 1669
    :cond_0
    return-void

    .line 1653
    :cond_1
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->r(I)LGeneralFunction/e/a;

    move-result-object v2

    .line 1654
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1656
    :goto_1
    iget-object v4, v2, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1658
    iget-object v4, v2, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1660
    :cond_2
    new-instance v0, Lui_Controller/b/a;

    iget v2, v2, LGeneralFunction/e/a;->b:I

    invoke-direct {v0, v2, v3, v6, v5}, Lui_Controller/b/a;-><init>(ILjava/util/ArrayList;II)V

    .line 1661
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 1673
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->s:I

    invoke-direct {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->b(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 1762
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, LGeneralFunction/e/d;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(I)V

    .line 1763
    return-void
.end method

.method protected a(I)V
    .locals 2

    .prologue
    .line 1767
    if-nez p1, :cond_0

    .line 1769
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v1, 0x1

    iput v1, v0, Lui_Controller/b/e;->O:I

    .line 1775
    :goto_0
    return-void

    .line 1773
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v1, 0x4

    iput v1, v0, Lui_Controller/b/e;->O:I

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 221
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 67
    :sswitch_0
    const-string v0, "ACTIVITY_CONFIGURATION_CHANGED"

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 70
    :sswitch_1
    const-string v0, "ACTIVITY_RESUME"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aC()V

    .line 72
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    .line 75
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-boolean v0, v0, Lui_Controller/b/j;->d:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->i()V

    .line 77
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-boolean v2, v0, Lui_Controller/b/j;->d:Z

    .line 79
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Z)V

    .line 81
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ah()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 83
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->F()V

    goto :goto_0

    .line 87
    :sswitch_2
    const-string v0, "ACTIVITY_PAUSE"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 88
    invoke-static {v1}, LGeneralFunction/m/a;->a(Z)V

    .line 89
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Z)V

    .line 90
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->t(Z)V

    .line 94
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    .line 103
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->N:I

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v3}, LGeneralFunction/e/d;->a(I)I

    move-result v0

    .line 107
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v4, 0x6

    iput v4, v3, Lui_Controller/b/e;->O:I

    .line 108
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->d()Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IZ)V

    .line 109
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1, v2, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto/16 :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->A:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->O:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->O:I

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    .line 122
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v3}, LGeneralFunction/e/d;->i(I)Z

    move-result v0

    .line 123
    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v4, v4, Lui_Controller/b/e;->s:I

    invoke-virtual {v3, v4}, LGeneralFunction/e/d;->a(I)I

    move-result v3

    .line 125
    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v4, v3, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IZ)V

    .line 126
    if-eqz v0, :cond_6

    .line 128
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    goto/16 :goto_0

    .line 134
    :cond_4
    if-nez v3, :cond_5

    .line 135
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1, v1, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto/16 :goto_0

    .line 138
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1, v2, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 139
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x(Z)V

    goto/16 :goto_0

    .line 145
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1, v2, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto/16 :goto_0

    .line 151
    :sswitch_3
    const-string v0, "ACTIVITY_STOP"

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 154
    :sswitch_4
    const-string v0, "ACTIVITY_DESTROY"

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 158
    :sswitch_5
    const-string v0, "MSG_UI_GALLERY_SINGLE_UPDATE_CURRENT_IMAGE"

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 160
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 161
    const-string v1, "update index"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v1

    .line 162
    const-string v2, "update bitmap"

    invoke-virtual {v0, v2}, La/c/a;->f(Ljava/lang/String;)La/c/a$a;

    move-result-object v0

    invoke-virtual {v0}, La/c/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 164
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    if-ne v1, v2, :cond_0

    .line 166
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->S:Lui_Controller/b/e$a;

    iput v1, v2, Lui_Controller/b/e$a;->b:I

    .line 167
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->S:Lui_Controller/b/e$a;

    iput-object v0, v1, Lui_Controller/b/e$a;->a:Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->O:I

    if-ne v0, v4, :cond_0

    .line 172
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x238a

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 179
    :sswitch_6
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 180
    const-string v1, "update index"

    invoke-virtual {v0, v1}, La/c/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 181
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v1, v0}, LGeneralFunction/e/d;->a(I)I

    move-result v1

    .line 183
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v0, v2, Lui_Controller/b/e;->s:I

    .line 184
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IZ)V

    goto/16 :goto_0

    .line 189
    :sswitch_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0091

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f00

    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 194
    :sswitch_8
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, La/b/b/a;->b(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v8, :cond_7

    .line 196
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 197
    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 198
    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 199
    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a0092

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move v2, v1

    .line 196
    invoke-static/range {v0 .. v6}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 204
    :cond_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x230f

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 209
    :sswitch_9
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->p()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->A:Z

    if-nez v0, :cond_8

    .line 212
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 214
    :cond_8
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->B(Z)V

    .line 215
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    .line 216
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Z)V

    goto/16 :goto_0

    .line 224
    :pswitch_1
    invoke-virtual {p0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->b(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 228
    :pswitch_2
    invoke-virtual {p0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->c(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 231
    :pswitch_3
    invoke-virtual {p0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->d(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 234
    :pswitch_4
    invoke-virtual {p0, p1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->e(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x2310 -> :sswitch_8
        0x238b -> :sswitch_5
        0x238c -> :sswitch_6
        0x2f02 -> :sswitch_1
        0x2f03 -> :sswitch_2
        0x2f04 -> :sswitch_3
        0x2f05 -> :sswitch_4
        0x2f06 -> :sswitch_0
        0x2f0a -> :sswitch_7
        0xf005 -> :sswitch_9
    .end sparse-switch

    .line 221
    :pswitch_data_0
    .packed-switch 0x420
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 199
    :array_0
    .array-data 4
        0x2f07
        0x230f
    .end array-data
.end method

.method public b(Landroid/os/Message;)V
    .locals 9

    .prologue
    const-wide/32 v6, 0xfffffff

    const/4 v5, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 395
    :goto_0
    :sswitch_0
    return-void

    .line 247
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v0, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    iput v2, v0, Lui_Controller/b/h;->a:I

    goto :goto_0

    .line 250
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_KEY_BACK "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v3, v3, Lui_Controller/b/e;->r:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 252
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->S:Lui_Controller/b/e$a;

    const/4 v3, -0x1

    iput v3, v0, Lui_Controller/b/e$a;->b:I

    .line 253
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->S:Lui_Controller/b/e$a;

    const/4 v3, 0x0

    iput-object v3, v0, Lui_Controller/b/e$a;->a:Landroid/graphics/Bitmap;

    .line 255
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->r:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->P()V

    .line 258
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->b()V

    .line 259
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->h(I)V

    .line 272
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->t(Z)V

    .line 263
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1, v2, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto :goto_1

    .line 267
    :cond_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2306

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    .line 268
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->C(Z)V

    .line 269
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->E(Z)V

    .line 270
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->B(Z)V

    goto :goto_1

    .line 275
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 278
    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UI_GALLERY_SINGLE_DELETE_PRESS wFileCountInGroup"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v4, v4, Lui_Controller/b/e;->s:I

    invoke-virtual {v3, v4}, LGeneralFunction/e/d;->q(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 279
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 280
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 282
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->r:Z

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 285
    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a008e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    const v8, 0x7f0f0102

    move v2, v1

    move v7, v1

    .line 284
    invoke-static/range {v0 .. v8}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    goto/16 :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v3}, LGeneralFunction/e/d;->q(I)I

    move-result v0

    if-le v0, v1, :cond_3

    .line 291
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 292
    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a008e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    const v8, 0x7f0f0102

    move v2, v1

    move v7, v1

    .line 291
    invoke-static/range {v0 .. v8}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    goto/16 :goto_0

    .line 298
    :cond_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 299
    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0a008e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_2

    const v8, 0x7f0f0102

    move v2, v1

    move v7, v1

    .line 298
    invoke-static/range {v0 .. v8}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    goto/16 :goto_0

    .line 305
    :sswitch_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x421

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 306
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2382

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 309
    :sswitch_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    .line 310
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 315
    :sswitch_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v4, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v4, v4, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v4}, LGeneralFunction/e/d;->r(I)LGeneralFunction/e/a;

    move-result-object v4

    .line 318
    iget v5, v4, LGeneralFunction/e/a;->b:I

    .line 320
    :goto_2
    iget-object v0, v4, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 322
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v6, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v0, v4, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v5, v0}, LGeneralFunction/e/d;->h(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 325
    :cond_4
    invoke-direct {p0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 326
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 332
    :sswitch_8
    const-string v0, "MSG_UI_GALLERY_VIEW_CLICK"

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 333
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->v:Z

    if-nez v0, :cond_6

    .line 334
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->K()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 336
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->B(Z)V

    goto/16 :goto_0

    .line 339
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1, v2, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto/16 :goto_0

    .line 343
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2, v2, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto/16 :goto_0

    .line 350
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2301

    if-ne v0, v1, :cond_8

    .line 351
    const-string v0, "MSG_UI_GALLERY_VIEW_TOUCH_ZOOM"

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 356
    :cond_7
    :goto_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2, v2, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto/16 :goto_0

    .line 352
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2304

    if-ne v0, v1, :cond_9

    .line 353
    const-string v0, "MSG_UI_GALLERY_VIEW_DOUBLE_CLICK"

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto :goto_3

    .line 354
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xf004

    if-ne v0, v1, :cond_7

    .line 355
    const-string v0, "MSG_UI_GALLERY_SINGLE_HIDE_INFO"

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto :goto_3

    .line 364
    :sswitch_a
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2394

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 368
    :sswitch_b
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 369
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->N()V

    goto/16 :goto_0

    .line 372
    :sswitch_c
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 373
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->O()V

    goto/16 :goto_0

    .line 376
    :sswitch_d
    const-string v0, "MSG_UI_GALLERY_SINGLE_DELETE_ERROR_FILE"

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 378
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->f:I

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    .line 381
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "break by select mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 385
    :cond_b
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ay()V

    .line 386
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2306

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 390
    :sswitch_e
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, LGeneralFunction/e/d;->a(I)I

    .line 391
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c(IZ)V

    goto/16 :goto_0

    .line 244
    :sswitch_data_0
    .sparse-switch
        0x2300 -> :sswitch_0
        0x2301 -> :sswitch_9
        0x2302 -> :sswitch_8
        0x2303 -> :sswitch_0
        0x2304 -> :sswitch_9
        0x2308 -> :sswitch_3
        0x2380 -> :sswitch_4
        0x2381 -> :sswitch_7
        0x2382 -> :sswitch_5
        0x2383 -> :sswitch_6
        0x2393 -> :sswitch_a
        0x23a4 -> :sswitch_b
        0x23a6 -> :sswitch_c
        0x23b3 -> :sswitch_d
        0x23b9 -> :sswitch_e
        0x2f07 -> :sswitch_1
        0x8000 -> :sswitch_2
        0xf004 -> :sswitch_9
    .end sparse-switch

    .line 285
    :array_0
    .array-data 4
        0x2383
        0x2382
    .end array-data

    .line 292
    :array_1
    .array-data 4
        0x2383
        0x2382
    .end array-data

    .line 299
    :array_2
    .array-data 4
        0x2383
        0x2382
    .end array-data
.end method

.method public c(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const-wide/32 v6, 0xfffffff

    const/4 v2, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 399
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 400
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 507
    :goto_0
    return-void

    .line 403
    :sswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-boolean v2, v0, Lui_Controller/b/e;->z:Z

    .line 404
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->S:Lui_Controller/b/e$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lui_Controller/b/e$a;->a:Landroid/graphics/Bitmap;

    .line 405
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->S:Lui_Controller/b/e$a;

    iput v5, v0, Lui_Controller/b/e$a;->b:I

    .line 406
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->c()V

    goto :goto_0

    .line 412
    :sswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x424

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x423

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 417
    :goto_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    .line 419
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x420

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    goto :goto_1

    .line 423
    :sswitch_2
    const-string v1, "MSG_FILE_PHONE_DELETE_A_FILE_DONE"

    invoke-direct {p0, v1, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 424
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v1}, Lui_Controller/CustomWidget/a/a/a;->h()V

    .line 425
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v1}, LGeneralFunction/e/d;->b()V

    .line 427
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v1}, LGeneralFunction/e/d;->d()LGeneralFunction/e/b;

    move-result-object v1

    .line 428
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    iget-object v3, v1, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/util/ArrayList;)V

    .line 430
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v2, v2, Lui_Controller/b/e;->r:Z

    if-eqz v2, :cond_2

    .line 431
    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->t:I

    .line 432
    const-string v3, "delete group"

    invoke-virtual {v0, v3}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 435
    if-eqz v0, :cond_1

    .line 436
    new-instance v0, LGeneralFunction/e/b;

    invoke-direct {v0}, LGeneralFunction/e/b;-><init>()V

    .line 440
    :goto_2
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 445
    :goto_3
    const-string v0, "New GridView List"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 446
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a/a/a;->h()V

    goto/16 :goto_0

    .line 438
    :cond_1
    iget-object v0, v1, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    invoke-static {v0, v2}, LGeneralFunction/e/e;->a(Ljava/util/ArrayList;I)LGeneralFunction/e/b;

    move-result-object v0

    goto :goto_2

    .line 442
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    goto :goto_3

    .line 451
    :sswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-boolean v3, v0, Lui_Controller/b/e;->W:Z

    .line 453
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a()I

    move-result v0

    const/16 v1, 0x424

    if-ne v0, v1, :cond_5

    .line 454
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x423

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 456
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->s:I

    .line 457
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v1, v1, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v1}, LGeneralFunction/e/d;->e()I

    move-result v1

    .line 459
    if-ge v0, v1, :cond_3

    if-gez v0, :cond_4

    .line 460
    :cond_3
    const-string v0, "360 Delete: No File To Update"

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 461
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/16 v1, 0x8

    iput v1, v0, Lui_Controller/b/e;->O:I

    .line 469
    :goto_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v0}, LGeneralFunction/o;->b(Landroid/content/Context;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_FILE_PHONE_DELETE_ALL_COMPLETE 1 ulBrowseIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " objActivity.sLocalGallery.ulBrowseSingleIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 472
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->s:I

    if-gez v0, :cond_9

    .line 473
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->r:Z

    if-eqz v0, :cond_8

    .line 474
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->P()V

    .line 475
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->b()V

    .line 478
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->s:I

    if-ne v0, v5, :cond_6

    .line 479
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v3, v0, Lui_Controller/b/e;->s:I

    .line 480
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2306

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 463
    :cond_4
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a()V

    .line 464
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    goto :goto_4

    .line 467
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v1, 0x420

    invoke-virtual {v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    goto :goto_4

    .line 483
    :cond_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->h(I)V

    .line 484
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 499
    :cond_7
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_FILE_PHONE_DELETE_ALL_COMPLETE 2 ulBrowseIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " objActivity.sLocalGallery.ulBrowseSingleIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 500
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, LGeneralFunction/e/d;->a(I)I

    move-result v0

    .line 501
    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->d()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IZ)V

    .line 503
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-boolean v3, v0, Lui_Controller/b/e;->z:Z

    goto/16 :goto_0

    .line 487
    :cond_8
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v3, v0, Lui_Controller/b/e;->s:I

    .line 488
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x2306

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 492
    :cond_9
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v0, v6, v7}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 493
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 495
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2, v3, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto :goto_5

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x2382 -> :sswitch_0
        0x2383 -> :sswitch_1
        0x3023 -> :sswitch_2
        0x3024 -> :sswitch_3
    .end sparse-switch
.end method

.method public d(Landroid/os/Message;)V
    .locals 30

    .prologue
    .line 512
    new-instance v2, La/c/a;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 513
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1452
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    .line 515
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_KEY_BACK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v3, v3, Lui_Controller/b/e;->r:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->r()Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->k(Z)V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->m(Z)V

    .line 539
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto :goto_0

    .line 530
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->t(Z)V

    goto :goto_1

    .line 536
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23a9

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto :goto_1

    .line 542
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->z()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->v(Z)V

    .line 547
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->W()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 562
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 549
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->t(Z)V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x2302

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->a(I)I

    move-result v2

    .line 553
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x(Z)V

    goto :goto_2

    .line 556
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->K()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->B(Z)V

    goto :goto_2

    .line 560
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x2306

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto :goto_2

    .line 567
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    iget-object v2, v2, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    const/4 v3, 0x0

    iput v3, v2, Lui_Controller/b/h;->a:I

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v2, v2, Lui_Controller/b/e;->A:Z

    if-nez v2, :cond_0

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    goto/16 :goto_0

    .line 575
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 579
    :sswitch_4
    const-string v2, "MSG_UI_GALLERY_VIEW_CLICK 360"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->p()Z

    move-result v2

    if-nez v2, :cond_0

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v2, v2, Lui_Controller/b/e;->v:Z

    if-nez v2, :cond_f

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->a(I)I

    move-result v2

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->O:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->O:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_b

    .line 591
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->K()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->B(Z)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x(Z)V

    goto/16 :goto_0

    .line 595
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x(Z)V

    goto/16 :goto_0

    .line 598
    :cond_b
    if-nez v2, :cond_d

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->K()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->B(Z)V

    goto/16 :goto_0

    .line 602
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto/16 :goto_0

    .line 606
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->K()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->B(Z)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    goto/16 :goto_0

    .line 610
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x(Z)V

    goto/16 :goto_0

    .line 615
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x(Z)V

    goto/16 :goto_0

    .line 621
    :sswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UI_GALLERY_SINGLE_DELETE_PRESS wFileCountInGroup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v4, v4, Lui_Controller/b/e;->s:I

    invoke-virtual {v3, v4}, LGeneralFunction/e/d;->q(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v2, v2, Lui_Controller/b/e;->r:Z

    if-eqz v2, :cond_10

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0087

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 627
    invoke-virtual {v9}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a008b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v9}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a008e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    const/4 v9, 0x1

    const v10, 0x7f0f0102

    .line 626
    invoke-static/range {v2 .. v10}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    goto/16 :goto_0

    .line 630
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->q(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_11

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0086

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 632
    invoke-virtual {v9}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a008b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v9}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a008e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    const/4 v9, 0x1

    const v10, 0x7f0f0102

    .line 631
    invoke-static/range {v2 .. v10}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    goto/16 :goto_0

    .line 636
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0087

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 637
    invoke-virtual {v9}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a008b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v9}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a008e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_2

    const/4 v9, 0x1

    const v10, 0x7f0f0102

    .line 636
    invoke-static/range {v2 .. v10}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    goto/16 :goto_0

    .line 643
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->Z()V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x424

    invoke-virtual {v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x2382

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 648
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 652
    :sswitch_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->r(I)LGeneralFunction/e/a;

    move-result-object v5

    .line 655
    iget v6, v5, LGeneralFunction/e/a;->b:I

    .line 657
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    iget-object v2, v5, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_12

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v7, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    iget-object v2, v5, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v6, v2}, LGeneralFunction/e/d;->h(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 661
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 667
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ac()Z

    move-result v2

    if-nez v2, :cond_13

    .line 669
    const-string v2, "MSG_UI_GALLERY_SINGLE_360_PRESS_PREVIOUS denied"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 672
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lui_Controller/b/e;->W:Z

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    .line 676
    invoke-static {v2, v3}, Lui_Controller/ui_Gallery/a;->b(LGeneralFunction/e/d;I)I

    move-result v2

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_UI_GALLERY_SINGLE_360_PRESS_PREVIOUS lPrevious360FileIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 679
    const/4 v4, -0x1

    if-ne v2, v4, :cond_14

    .line 680
    const-string v2, "Can Not Press Previous Key"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 683
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v4, v4, Lui_Controller/b/e;->O:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_15

    .line 684
    const-string v2, "Can\'t Press Previous: Waitting For Image Load"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 686
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v4, v4, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v4, v2}, LGeneralFunction/e/d;->i(I)Z

    move-result v4

    .line 687
    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v5, v5, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v5, v2}, LGeneralFunction/e/d;->j(I)Z

    move-result v5

    .line 688
    move-object/from16 v0, p0

    iget-object v6, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v6, v6, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v6, v6, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v6, v3}, LGeneralFunction/e/d;->a(I)I

    move-result v3

    .line 689
    move-object/from16 v0, p0

    iget-object v6, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v6, v6, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v6, v6, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v6, v2}, LGeneralFunction/e/d;->a(I)I

    move-result v2

    .line 691
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 693
    if-nez v3, :cond_16

    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 699
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(I)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->Z()V

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23bf

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 696
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto :goto_4

    .line 711
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ac()Z

    move-result v2

    if-nez v2, :cond_17

    .line 713
    const-string v2, "MSG_UI_GALLERY_SINGLE_360_PRESS_NEXT denied"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 716
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lui_Controller/b/e;->W:Z

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    .line 720
    invoke-static {v2, v3}, Lui_Controller/ui_Gallery/a;->a(LGeneralFunction/e/d;I)I

    move-result v2

    .line 722
    const/4 v4, -0x1

    if-ne v2, v4, :cond_18

    .line 723
    const-string v2, "Can Not Press Previous Key"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 726
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v4, v4, Lui_Controller/b/e;->O:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_19

    .line 727
    const-string v2, "Can\'t Press Next: Waitting For Image Load"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 729
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v4, v4, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v4, v2}, LGeneralFunction/e/d;->i(I)Z

    move-result v4

    .line 730
    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v5, v5, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v5, v2}, LGeneralFunction/e/d;->j(I)Z

    move-result v5

    .line 731
    move-object/from16 v0, p0

    iget-object v6, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v6, v6, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v6, v6, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v6, v3}, LGeneralFunction/e/d;->a(I)I

    move-result v3

    .line 732
    move-object/from16 v0, p0

    iget-object v6, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v6, v6, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v6, v6, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v6, v2}, LGeneralFunction/e/d;->a(I)I

    move-result v2

    .line 734
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 736
    if-nez v3, :cond_1a

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 742
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->Z()V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23be

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 739
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto :goto_5

    .line 752
    :sswitch_b
    const-string v2, "MSG_UI_GALLERY_SINGLE_TO_PREVIOUS_FILE"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ab()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    .line 757
    invoke-static {v2, v3}, Lui_Controller/ui_Gallery/a;->b(LGeneralFunction/e/d;I)I

    move-result v2

    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TO_PREVIOUS_FILE Release_Done:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->k(I)V

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v2, v3, Lui_Controller/b/e;->s:I

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 764
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23bf

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 770
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ab()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    .line 774
    invoke-static {v2, v3}, Lui_Controller/ui_Gallery/a;->a(LGeneralFunction/e/d;I)I

    move-result v2

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TO_NEXT_FILE Release_Done:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->k(I)V

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v2, v3, Lui_Controller/b/e;->s:I

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 783
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23be

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 789
    :sswitch_d
    const-string v2, "MSG_UI_GALLERY_SINGLE_TO_VIDEO_CUT"

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ab()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 793
    const-string v2, "TO_VIDEO_CUT Release_Done"

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 794
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const-class v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_VideoCutController;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v4, 0xd00

    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3, v4, v5, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 800
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23bd

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 808
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->a(I)I

    move-result v2

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v4, 0x4

    iput v4, v3, Lui_Controller/b/e;->O:I

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct/range {p0 .. p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->d()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IZ)V

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->L()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 819
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x2389

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    goto/16 :goto_0

    .line 816
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x(Z)V

    goto :goto_6

    .line 824
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->a(I)I

    move-result v2

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v4, 0x1

    iput v4, v3, Lui_Controller/b/e;->O:I

    .line 827
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct/range {p0 .. p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->d()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IZ)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    goto/16 :goto_0

    .line 833
    :sswitch_10
    const-string v3, "360PlayerStatus"

    invoke-virtual {v2, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->O:I

    .line 835
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v4, v4, Lui_Controller/b/e;->s:I

    .line 836
    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v5, v5, Lui_Controller/b/e;->P:I

    .line 837
    move-object/from16 v0, p0

    iget-object v6, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v6, v6, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v6, v6, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v7, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v7, v7, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v7, v7, Lui_Controller/b/e;->s:I

    invoke-virtual {v6, v7}, LGeneralFunction/e/d;->a(I)I

    move-result v6

    .line 839
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_UI_GALLERY_SINGLE_360_PLAYER_STATUS_UPDATE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 840
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 842
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 845
    :pswitch_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 846
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->Y()V

    .line 857
    :cond_1f
    :goto_7
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ad()V

    goto/16 :goto_0

    .line 847
    :cond_20
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    .line 848
    const/4 v3, 0x1

    if-ne v6, v3, :cond_21

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v4, 0x2387

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto :goto_7

    .line 852
    :cond_21
    if-nez v6, :cond_1f

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v4, 0x238a

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto :goto_7

    .line 863
    :pswitch_2
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 868
    invoke-virtual/range {p0 .. p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a()V

    goto/16 :goto_0

    .line 873
    :pswitch_3
    if-nez v2, :cond_0

    .line 876
    invoke-virtual/range {p0 .. p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a()V

    goto/16 :goto_0

    .line 881
    :pswitch_4
    const/4 v3, 0x1

    if-eq v2, v3, :cond_22

    if-nez v2, :cond_24

    .line 883
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v3, v4}, LGeneralFunction/e/d;->o(I)Ljava/lang/String;

    move-result-object v3

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v4, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Ljava/lang/String;)V

    .line 914
    :cond_23
    :goto_8
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ad()V

    goto/16 :goto_0

    .line 886
    :cond_24
    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->m()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 892
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v3, v3, Lui_Controller/b/e;->W:Z

    if-eqz v3, :cond_27

    .line 894
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v4, 0x23b0

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v4, v6, v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    .line 898
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v4, 0x5

    iput v4, v3, Lui_Controller/b/e;->O:I

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v3, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->L()Z

    move-result v3

    if-nez v3, :cond_26

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v3, v3, Lui_Controller/b/e;->A:Z

    if-nez v3, :cond_26

    .line 904
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(ZZZ)V

    .line 905
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x(Z)V

    .line 909
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->q()Z

    move-result v3

    if-nez v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v3, v3, Lui_Controller/b/e;->A:Z

    if-nez v3, :cond_23

    .line 911
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    goto/16 :goto_8

    .line 896
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->B()V

    goto :goto_9

    .line 920
    :pswitch_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_28

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, LGeneralFunction/d;->a(Landroid/content/Context;Z)Z

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->av()V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    if-nez v2, :cond_0

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lui_Controller/b/e;->W:Z

    goto/16 :goto_0

    .line 927
    :cond_28
    const/4 v3, 0x3

    if-ne v2, v3, :cond_29

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x5

    iput v3, v2, Lui_Controller/b/e;->O:I

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->C()V

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->B()V

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->au()V

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput v3, v2, Lui_Controller/b/e;->V:I

    goto/16 :goto_0

    .line 940
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a()V

    goto/16 :goto_0

    .line 944
    :pswitch_6
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->af()V

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x420

    invoke-virtual {v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto/16 :goto_0

    .line 951
    :pswitch_7
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->S:Lui_Controller/b/e$a;

    const/4 v3, -0x1

    iput v3, v2, Lui_Controller/b/e$a;->b:I

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->S:Lui_Controller/b/e$a;

    const/4 v3, 0x0

    iput-object v3, v2, Lui_Controller/b/e$a;->a:Landroid/graphics/Bitmap;

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->af()V

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x420

    invoke-virtual {v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const v3, 0x8000

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 965
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->x(Z)V

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ao()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D()V

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->C()V

    goto/16 :goto_0

    .line 973
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->G()V

    goto/16 :goto_0

    .line 979
    :sswitch_12
    const-string v2, "MSG_UI_GALLERY_SINGLE_360_PLAYER_PHOTO_UPDATE"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->S:Lui_Controller/b/e$a;

    iget-object v2, v2, Lui_Controller/b/e$a;->a:Landroid/graphics/Bitmap;

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->S:Lui_Controller/b/e$a;

    iget v3, v3, Lui_Controller/b/e$a;->b:I

    .line 982
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ah()I

    move-result v4

    .line 984
    const/4 v5, 0x2

    if-eq v4, v5, :cond_2c

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Photo Update Player Status Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 1008
    :cond_2b
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v2, v2, Lui_Controller/b/e;->A:Z

    if-nez v2, :cond_0

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    goto/16 :goto_0

    .line 987
    :cond_2c
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 988
    :cond_2d
    if-nez v2, :cond_2e

    .line 989
    const-string v2, "Photo Update Bitmap Null"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 992
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x3

    iput v3, v2, Lui_Controller/b/e;->O:I

    goto :goto_a

    .line 991
    :cond_2e
    const-string v2, "Photo Update Bitmap Is Recycled"

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto :goto_b

    .line 994
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v4, v4, Lui_Controller/b/e;->s:I

    if-eq v3, v4, :cond_30

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Photo Update Index Fault "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x3

    iput v3, v2, Lui_Controller/b/e;->O:I

    goto/16 :goto_a

    .line 998
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Photo Update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v4, v4, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v4, v3}, LGeneralFunction/e/d;->b(I)I

    move-result v4

    .line 1001
    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v5, v5, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v5, v3}, LGeneralFunction/e/d;->c(I)I

    move-result v3

    .line 1003
    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v5, v5, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v6, 0x2

    iput v6, v5, Lui_Controller/b/e;->O:I

    .line 1004
    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v5, v2, v4, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Landroid/graphics/Bitmap;II)Z

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->m()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    goto/16 :goto_a

    .line 1016
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->F(Z)V

    goto/16 :goto_0

    .line 1020
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 1021
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->G(Z)V

    goto/16 :goto_0

    .line 1024
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->S()V

    goto/16 :goto_0

    .line 1028
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lui_Controller/b/e;->Z:Z

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/16 v3, 0x8

    iput v3, v2, Lui_Controller/b/e;->O:I

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->P()V

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput-object v3, v2, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23bd

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->as()V

    goto/16 :goto_0

    .line 1039
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    new-instance v3, LGeneralFunction/Player/player/h;

    invoke-direct {v3}, LGeneralFunction/Player/player/h;-><init>()V

    iput-object v3, v2, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ag()LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->m:I

    iput v3, v2, LGeneralFunction/Player/player/h;->m:I

    .line 1041
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ag()LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->l:F

    iput v3, v2, LGeneralFunction/Player/player/h;->l:F

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ag()LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->a:I

    iput v3, v2, LGeneralFunction/Player/player/h;->a:I

    .line 1043
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ag()LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->q:F

    iput v3, v2, LGeneralFunction/Player/player/h;->q:F

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ag()LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->r:F

    iput v3, v2, LGeneralFunction/Player/player/h;->r:F

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ag()LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->e:F

    iput v3, v2, LGeneralFunction/Player/player/h;->e:F

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ag()LGeneralFunction/Player/player/h;

    move-result-object v3

    iget v3, v3, LGeneralFunction/Player/player/h;->s:I

    iput v3, v2, LGeneralFunction/Player/player/h;->s:I

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ag()LGeneralFunction/Player/player/h;

    move-result-object v2

    iget-object v2, v2, LGeneralFunction/Player/player/h;->z:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v4, v4, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    iget-object v4, v4, LGeneralFunction/Player/player/h;->z:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v6}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ag()LGeneralFunction/Player/player/h;

    move-result-object v6

    iget-object v6, v6, LGeneralFunction/Player/player/h;->z:[F

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->al()V

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lui_Controller/b/e;->Z:Z

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/16 v3, 0x8

    iput v3, v2, Lui_Controller/b/e;->O:I

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->P()V

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23bb

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 1060
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ab()Z

    move-result v2

    if-nez v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    .line 1063
    :cond_31
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const-class v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_GifMakingController;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v4, 0xe00

    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3, v4, v5, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 1069
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23bb

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 1075
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lui_Controller/b/e;->Z:Z

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/16 v3, 0x8

    iput v3, v2, Lui_Controller/b/e;->O:I

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->P()V

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput-object v3, v2, Lui_Controller/b/e;->X:LGeneralFunction/Player/player/h;

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23bc

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->as()V

    goto/16 :goto_0

    .line 1088
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ab()Z

    move-result v2

    if-nez v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_34

    .line 1091
    :cond_33
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const-class v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_NormalPicMakingController;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v4, 0xf00

    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3, v4, v5, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(J)V

    goto/16 :goto_0

    .line 1097
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23bc

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 1103
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->T()V

    goto/16 :goto_0

    .line 1109
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->G(Z)V

    goto/16 :goto_0

    .line 1115
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->F(Z)V

    goto/16 :goto_0

    .line 1121
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->U()V

    goto/16 :goto_0

    .line 1127
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Landroid/graphics/Bitmap;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->U()V

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ao()Z

    move-result v3

    iput-boolean v3, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D:Z

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D:Z

    if-eqz v2, :cond_0

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D()V

    goto/16 :goto_0

    .line 1140
    :sswitch_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1141
    const-string v3, "jpg"

    invoke-static {v2, v3}, LGeneralFunction/g/a;->a(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lui_Controller/a/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LGeneralFunction/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1143
    new-instance v3, La/c/a;

    const/16 v4, 0x5016

    invoke-direct {v3, v4}, La/c/a;-><init>(I)V

    .line 1144
    const-string v4, "FilePath"

    invoke-virtual {v3, v4, v2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(La/c/a;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->p(Z)V

    goto/16 :goto_0

    .line 1152
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->X()V

    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o()V

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23ab

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 1162
    :sswitch_22
    const-string v3, "bSuccess"

    invoke-virtual {v2, v3}, La/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    .line 1164
    const-string v3, "FilePath"

    invoke-virtual {v2, v3}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput-object v2, v3, Lui_Controller/b/e;->B:Ljava/lang/String;

    .line 1166
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->c()I

    move-result v18

    .line 1168
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1169
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1170
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v2}, LGeneralFunction/b;->a(Ljava/lang/String;)I

    move-result v10

    invoke-static {v2}, LGeneralFunction/b;->b(Ljava/lang/String;)I

    move-result v11

    const-wide/16 v12, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    add-int/lit8 v18, v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v3 .. v28}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZZZ)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->x()I

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-static {v3, v2}, LGeneralFunction/g/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lui_Controller/b/e;->ae:J

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->p(Z)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->l(Z)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->n(Z)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lui_Controller/b/e;->A:Z

    goto/16 :goto_0

    .line 1184
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->h(Z)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->p(Z)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D:Z

    if-eqz v2, :cond_0

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->G()V

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D:Z

    goto/16 :goto_0

    .line 1196
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->h(Z)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D:Z

    if-eqz v2, :cond_0

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->E()V

    .line 1200
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D:Z

    goto/16 :goto_0

    .line 1204
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x6

    iput v3, v2, Lui_Controller/b/e;->f:I

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D()V

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->C()V

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->an()V

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->Z()V

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aj()V

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Landroid/graphics/Bitmap;)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Z)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x500c

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(I)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(I)V

    goto/16 :goto_0

    .line 1216
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x6

    iput v3, v2, Lui_Controller/b/e;->f:I

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D()V

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->C()V

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->an()V

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->Z()V

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aj()V

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(Landroid/graphics/Bitmap;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Z)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x500f

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(I)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(I)V

    goto/16 :goto_0

    .line 1229
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput v3, v2, Lui_Controller/b/e;->f:I

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Z)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o()V

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lui_Controller/b/e;->W:Z

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-boolean v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o:Z

    if-nez v2, :cond_36

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aD()V

    goto/16 :goto_0

    .line 1241
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const v4, 0x7f0a00e0

    invoke-virtual {v3, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c(Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v2, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    invoke-virtual {v2, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 1256
    :cond_37
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v2}, Lui_Controller/CustomWidget/a/a/a;->h()V

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v2}, LGeneralFunction/e/d;->b()V

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v2}, LGeneralFunction/e/d;->d()LGeneralFunction/e/b;

    move-result-object v2

    .line 1260
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    iget-object v2, v2, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/util/ArrayList;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    .line 1264
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    invoke-virtual {v3}, LGeneralFunction/e/d;->e()I

    move-result v3

    .line 1266
    if-ge v2, v3, :cond_38

    if-gez v2, :cond_3b

    .line 1268
    :cond_38
    const-string v2, "360 Move done: No File To Update"

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/16 v4, 0x8

    iput v4, v2, Lui_Controller/b/e;->O:I

    .line 1277
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UI_GALLERY_SINGLE_PRESS_MOVE_FILE_DONE 0 ulBrowseIndex:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v4, v4, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " LinkTable_GetSize "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    if-lt v2, v3, :cond_39

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v2, Lui_Controller/b/e;->s:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lui_Controller/b/e;->s:I

    .line 1284
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UI_GALLERY_SINGLE_PRESS_MOVE_FILE_DONE 1 ulBrowseIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " objActivity.sLocalGallery.ulBrowseSingleIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    if-gez v2, :cond_3e

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-boolean v2, v2, Lui_Controller/b/e;->r:Z

    if-eqz v2, :cond_3d

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->P()V

    .line 1288
    invoke-direct/range {p0 .. p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->b()V

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->s:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3c

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput v3, v2, Lui_Controller/b/e;->s:I

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x2306

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 1248
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const v4, 0x7f0a00df

    invoke-virtual {v3, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c(Ljava/lang/String;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    invoke-virtual {v2, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v3}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    invoke-virtual {v2, v3, v4}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    goto/16 :goto_c

    .line 1273
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a()V

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aa()V

    goto/16 :goto_d

    .line 1295
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->h(I)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    .line 1308
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UI_GALLERY_SINGLE_PRESS_MOVE_FILE_DONE 2 ulBrowseIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " objActivity.sLocalGallery.ulBrowseSingleIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->a(I)I

    move-result v2

    .line 1310
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct/range {p0 .. p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->d()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IZ)V

    goto/16 :goto_0

    .line 1299
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput v3, v2, Lui_Controller/b/e;->s:I

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x2306

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto/16 :goto_0

    .line 1304
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a()V

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const-wide/32 v4, 0xfffffff

    invoke-virtual {v2, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(J)V

    goto :goto_e

    .line 1315
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput v3, v2, Lui_Controller/b/e;->f:I

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i(Z)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o()V

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Z)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->w(Z)V

    goto/16 :goto_0

    .line 1323
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o(Z)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->o()V

    .line 1325
    const/4 v6, 0x0

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->d:I

    packed-switch v2, :pswitch_data_1

    .line 1334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lLocalDatabaseSelectMode Wrong!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 1337
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 1338
    invoke-virtual {v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a00da

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    .line 1340
    invoke-virtual {v7}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0091

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x23af

    const/4 v9, 0x1

    .line 1337
    invoke-static/range {v2 .. v9}, LGeneralFunction/o;->a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1328
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a010a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    .line 1331
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    .line 1346
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->V:I

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(I)V

    goto/16 :goto_0

    .line 1350
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->I()V

    goto/16 :goto_0

    .line 1353
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->J()V

    goto/16 :goto_0

    .line 1356
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->V()V

    goto/16 :goto_0

    .line 1360
    :sswitch_2d
    const-string v2, "MSG_UI_GALLERY_SINGLE_DELETE_ERROR_FILE"

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->f:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v2, v2, Lui_Controller/b/e;->f:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_40

    .line 1365
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "break by select mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1369
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->o(I)Ljava/lang/String;

    move-result-object v2

    .line 1370
    invoke-static {v2}, LGeneralFunction/g/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1372
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_42

    .line 1375
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1377
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1380
    const-string v4, "recreate thm"

    const/4 v5, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 1381
    invoke-static {v2, v3}, LGeneralFunction/g/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->g(Z)V

    goto/16 :goto_0

    .line 1387
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ay()V

    .line 1388
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x2306

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 1393
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ay()V

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x2306

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 1400
    :sswitch_2e
    const-string v3, "state"

    invoke-virtual {v2, v3}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    .line 1401
    packed-switch v2, :pswitch_data_2

    goto/16 :goto_0

    .line 1405
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->ao()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->D()V

    .line 1408
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->C()V

    .line 1409
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->an()V

    goto/16 :goto_0

    .line 1426
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->a(I)I

    move-result v2

    .line 1428
    const/4 v3, 0x1

    if-ne v2, v3, :cond_43

    .line 1430
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->s(I)V

    goto/16 :goto_0

    .line 1432
    :cond_43
    if-nez v2, :cond_0

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c(IZ)V

    goto/16 :goto_0

    .line 1440
    :sswitch_30
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->B:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1443
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1445
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2}, LGeneralFunction/e/e;->c()I

    move-result v2

    .line 1446
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, LGeneralFunction/e/e;->a(II)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->x()I

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v3, 0x23a9

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto/16 :goto_0

    .line 513
    nop

    :sswitch_data_0
    .sparse-switch
        0x2111 -> :sswitch_16
        0x2112 -> :sswitch_17
        0x2113 -> :sswitch_19
        0x2302 -> :sswitch_4
        0x2303 -> :sswitch_0
        0x2308 -> :sswitch_3
        0x2311 -> :sswitch_4
        0x2380 -> :sswitch_5
        0x2381 -> :sswitch_8
        0x2382 -> :sswitch_6
        0x2383 -> :sswitch_7
        0x2384 -> :sswitch_30
        0x2385 -> :sswitch_9
        0x2386 -> :sswitch_a
        0x2387 -> :sswitch_e
        0x2388 -> :sswitch_f
        0x2389 -> :sswitch_10
        0x238a -> :sswitch_12
        0x239e -> :sswitch_15
        0x239f -> :sswitch_1b
        0x23a0 -> :sswitch_14
        0x23a1 -> :sswitch_1c
        0x23a2 -> :sswitch_13
        0x23a3 -> :sswitch_1d
        0x23a5 -> :sswitch_2c
        0x23a7 -> :sswitch_1f
        0x23a8 -> :sswitch_20
        0x23a9 -> :sswitch_21
        0x23aa -> :sswitch_22
        0x23ab -> :sswitch_23
        0x23ac -> :sswitch_24
        0x23ad -> :sswitch_25
        0x23ae -> :sswitch_26
        0x23af -> :sswitch_27
        0x23b0 -> :sswitch_29
        0x23b1 -> :sswitch_2a
        0x23b2 -> :sswitch_2b
        0x23b3 -> :sswitch_2d
        0x23b7 -> :sswitch_28
        0x23b8 -> :sswitch_1e
        0x23b9 -> :sswitch_2f
        0x23bb -> :sswitch_18
        0x23bc -> :sswitch_1a
        0x23bd -> :sswitch_d
        0x23be -> :sswitch_c
        0x23bf -> :sswitch_b
        0x2f07 -> :sswitch_2
        0x2f13 -> :sswitch_2e
        0x8000 -> :sswitch_1
        0x8001 -> :sswitch_11
    .end sparse-switch

    .line 627
    :array_0
    .array-data 4
        0x2383
        0x2382
    .end array-data

    .line 632
    :array_1
    .array-data 4
        0x2383
        0x2382
    .end array-data

    .line 637
    :array_2
    .array-data 4
        0x2383
        0x2382
    .end array-data

    .line 842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1326
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1401
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroid/os/Message;)V
    .locals 27

    .prologue
    .line 1456
    new-instance v2, La/c/a;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 1457
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1523
    :goto_0
    return-void

    .line 1461
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->T:LGeneralFunction/q/a;

    invoke-virtual {v2}, LGeneralFunction/q/a;->a()V

    goto :goto_0

    .line 1466
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x420

    invoke-virtual {v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    goto :goto_0

    .line 1471
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v11, v2, Lui_Controller/b/e;->U:Ljava/lang/String;

    .line 1474
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    const/4 v3, 0x0

    iput-object v3, v2, Lui_Controller/b/e;->U:Ljava/lang/String;

    .line 1475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add video:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, LGeneralFunction/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, LGeneralFunction/b;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 1476
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1477
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1478
    const-wide/16 v14, 0x0

    .line 1480
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 1485
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v2}, LGeneralFunction/e/d;->g()I

    move-result v2

    .line 1486
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v11, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1487
    const-string v3, "/"

    invoke-virtual {v11, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1488
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1490
    invoke-static {v11}, LGeneralFunction/b;->a(Ljava/lang/String;)I

    move-result v10

    invoke-static {v11}, LGeneralFunction/b;->b(Ljava/lang/String;)I

    move-result v11

    const-wide/16 v12, 0x0

    add-int/lit8 v18, v2, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-wide/from16 v16, v14

    .line 1488
    invoke-virtual/range {v3 .. v26}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZ)V

    goto/16 :goto_0

    .line 1481
    :catch_0
    move-exception v2

    .line 1482
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 1501
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    invoke-virtual {v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->x()I

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    .line 1503
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v4}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v3}, LGeneralFunction/e/d;->g()I

    move-result v3

    .line 1505
    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v4, v4, Lui_Controller/b/e;->a:LGeneralFunction/e/d;

    invoke-virtual {v4, v3}, LGeneralFunction/e/d;->u(I)I

    move-result v4

    .line 1506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LeaveVideoMakingGroup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iput v4, v3, Lui_Controller/b/e;->s:I

    .line 1510
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->P()V

    .line 1511
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v3}, Lui_Controller/CustomWidget/a/a/a;->a()V

    .line 1512
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v3, v3, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v4, v4, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->d:Lui_Controller/b/b;

    iget-object v4, v4, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v4}, LGeneralFunction/e/e;->a()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, LGeneralFunction/e/d;->a(Landroid/database/Cursor;LGeneralFunction/e/b;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->i()V

    .line 1514
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->m:Lui_Controller/CustomWidget/a/a/a;

    invoke-virtual {v2}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->h(I)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v2, v2, Lui_Controller/b/e;->b:LGeneralFunction/e/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v3, v3, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v3, v3, Lui_Controller/b/e;->s:I

    invoke-virtual {v2, v3}, LGeneralFunction/e/d;->a(I)I

    move-result v2

    .line 1517
    move-object/from16 v0, p0

    iget-object v3, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct/range {p0 .. p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->d()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IZ)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v2, v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->c:Lui_Controller/ui_StartMode/UI_ModeMain;

    const/16 v3, 0x420

    invoke-virtual {v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(I)V

    goto/16 :goto_0

    .line 1457
    nop

    :pswitch_data_0
    .packed-switch 0x238f
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected f(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/16 v4, 0x23b7

    const/16 v2, 0x23ae

    const/4 v3, 0x2

    .line 1692
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 1693
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1758
    :goto_0
    :pswitch_0
    return-void

    .line 1696
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->m(I)V

    .line 1697
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aN()V

    goto :goto_0

    .line 1700
    :pswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1701
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto :goto_0

    .line 1705
    :pswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1707
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto :goto_0

    .line 1710
    :pswitch_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v1, v1, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v1, v1, Lui_Controller/b/e;->s:I

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->m(I)V

    .line 1711
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aL()V

    goto :goto_0

    .line 1715
    :pswitch_5
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1717
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto :goto_0

    .line 1721
    :pswitch_6
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget-object v0, v0, Lui_Controller/b/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1723
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v4}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(I)V

    goto :goto_0

    .line 1726
    :pswitch_7
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->aj()V

    .line 1727
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    const/16 v1, 0x23a7

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(IJ)V

    goto :goto_0

    .line 1730
    :pswitch_8
    const-string v1, "FilePath"

    invoke-virtual {v0, v1}, La/c/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1732
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->O:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->O:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->O:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    iget-object v0, v0, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->e:Lui_Controller/b/e;

    iget v0, v0, Lui_Controller/b/e;->O:I

    if-ne v0, v3, :cond_1

    .line 1737
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v1}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1752
    :goto_1
    new-instance v2, La/c/a;

    const/16 v3, 0x23aa

    invoke-direct {v2, v3}, La/c/a;-><init>(I)V

    .line 1753
    const-string v3, "FilePath"

    invoke-virtual {v2, v3, v1}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const-string v1, "bSuccess"

    invoke-virtual {v2, v1, v0}, La/c/a;->a(Ljava/lang/String;Z)V

    .line 1755
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a:Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-virtual {v0, v2}, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;->a(La/c/a;)V

    goto/16 :goto_0

    .line 1739
    :cond_1
    const-string v0, "Get snapshot fail: 360 Player not ready!"

    invoke-direct {p0, v0, v3}, Lui_Controller/ui_Gallery/ui_PhoneGallery/e;->a(Ljava/lang/String;I)V

    .line 1740
    const/4 v0, 0x0

    goto :goto_1

    .line 1693
    nop

    :pswitch_data_0
    .packed-switch 0x500c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
