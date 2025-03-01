.class public Lui_Controller/CustomWidget/a/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui_Controller/CustomWidget/a/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/tonicartos/widget/stickygridheaders/d;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Z

.field private E:I

.field private F:I

.field private G:Lui_Controller/CustomWidget/a$d;

.field public a:LGeneralFunction/e/d;

.field final b:LGeneralFunction/j;

.field private c:Lui_Controller/CustomWidget/a/a/a$a;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/LayoutInflater;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lui_Controller/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lui_Controller/CustomWidget/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lui_Controller/CustomWidget/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lui_Controller/CustomWidget/a/a/b;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lui_Controller/CustomWidget/a;

.field private k:I

.field private l:I

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;LGeneralFunction/e/d;IIZLui_Controller/CustomWidget/a;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->d:Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lui_Controller/CustomWidget/a/a/a;->m:Z

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->n:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->o:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->p:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->q:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->r:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->s:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->t:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->u:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->v:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->w:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->x:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->y:I

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->z:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->A:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->B:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->C:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lui_Controller/CustomWidget/a/a/a;->D:Z

    .line 94
    const/high16 v0, -0x41000000    # -0.5f

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->E:I

    .line 96
    new-instance v0, LGeneralFunction/j;

    invoke-direct {v0}, LGeneralFunction/j;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->b:LGeneralFunction/j;

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->F:I

    .line 308
    new-instance v0, Lui_Controller/CustomWidget/a/a/a$1;

    invoke-direct {v0, p0}, Lui_Controller/CustomWidget/a/a/a$1;-><init>(Lui_Controller/CustomWidget/a/a/a;)V

    iput-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->G:Lui_Controller/CustomWidget/a$d;

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->e:Landroid/view/LayoutInflater;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, LGeneralFunction/e/d;->e()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 119
    if-eqz p5, :cond_0

    .line 120
    new-instance v1, Lui_Controller/b/c;

    invoke-virtual {p2, v0}, LGeneralFunction/e/d;->s(I)I

    move-result v3

    invoke-virtual {p2, v0}, LGeneralFunction/e/d;->t(I)I

    move-result v4

    invoke-virtual {p2, v0}, LGeneralFunction/e/d;->h(I)J

    move-result-wide v6

    invoke-direct {v1, v3, v4, v6, v7}, Lui_Controller/b/c;-><init>(IIJ)V

    .line 123
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    new-instance v1, Lui_Controller/b/c;

    invoke-virtual {p2, v0}, LGeneralFunction/e/d;->s(I)I

    move-result v3

    invoke-virtual {p2, v0}, LGeneralFunction/e/d;->t(I)I

    move-result v4

    invoke-virtual {p2, v0}, LGeneralFunction/e/d;->g(I)J

    move-result-wide v6

    invoke-direct {v1, v3, v4, v6, v7}, Lui_Controller/b/c;-><init>(IIJ)V

    goto :goto_1

    .line 126
    :cond_1
    invoke-direct {p0, v2}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/util/List;)V

    .line 127
    iput-object p1, p0, Lui_Controller/CustomWidget/a/a/a;->d:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lui_Controller/CustomWidget/a/a/a;->a:LGeneralFunction/e/d;

    .line 129
    iput-object v2, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    .line 130
    iput p3, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    .line 132
    iput-boolean p5, p0, Lui_Controller/CustomWidget/a/a/a;->m:Z

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->i:Ljava/util/HashMap;

    .line 135
    iput-object p6, p0, Lui_Controller/CustomWidget/a/a/a;->j:Lui_Controller/CustomWidget/a;

    .line 136
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->j:Lui_Controller/CustomWidget/a;

    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/a;->G:Lui_Controller/CustomWidget/a$d;

    invoke-virtual {v0, v1}, Lui_Controller/CustomWidget/a;->a(Lui_Controller/CustomWidget/a$d;)V

    .line 138
    iput p4, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    .line 139
    const v0, 0x7f020121

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->n:I

    .line 140
    const v0, 0x7f02011f

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->o:I

    .line 141
    const v0, 0x7f020122

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->p:I

    .line 142
    const v0, 0x7f020120

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->q:I

    .line 143
    const v0, 0x7f02011c

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->r:I

    .line 144
    const v0, 0x7f02011d

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->s:I

    .line 146
    const v0, 0x7f020124

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->t:I

    .line 147
    const v0, 0x7f020118

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->u:I

    .line 148
    const v0, 0x7f020119

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->v:I

    .line 149
    const v0, 0x7f0200ff

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->w:I

    .line 150
    const v0, 0x7f02011b

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->x:I

    .line 151
    const v0, 0x7f020124

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->A:I

    .line 152
    const v0, 0x7f02011c

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->B:I

    .line 153
    const v0, 0x7f02011d

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->C:I

    .line 154
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->h()V

    .line 155
    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/a/a/a;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(ILui_Controller/CustomWidget/a/a/b;)V
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 619
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lui_Controller/CustomWidget/a/a/b;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entry.getKey(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 624
    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :cond_1
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_2
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 648
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->b:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadThumbnail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 650
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 652
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->b:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 726
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_1

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 658
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->b:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    goto :goto_0

    .line 662
    :cond_1
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/b;

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadViewHolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 666
    if-eqz v0, :cond_3

    .line 668
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->h:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 669
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 670
    :cond_2
    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/a;->i:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    if-nez p1, :cond_a

    .line 673
    invoke-virtual {p0, p2, v6}, Lui_Controller/CustomWidget/a/a/a;->a(II)V

    .line 674
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 675
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 676
    iget-boolean v1, p0, Lui_Controller/CustomWidget/a/a/a;->m:Z

    if-eqz v1, :cond_7

    .line 678
    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    if-ne v1, v6, :cond_4

    .line 679
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v4}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    .line 683
    :goto_1
    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    if-ne v1, v7, :cond_5

    .line 684
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v4}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    .line 688
    :goto_2
    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->y:I

    if-ne v1, v3, :cond_6

    .line 689
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    iget v2, p0, Lui_Controller/CustomWidget/a/a/a;->r:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 693
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imageLoaded, local_loadViewHolder.ivImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 725
    :cond_3
    :goto_4
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->b:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    goto/16 :goto_0

    .line 681
    :cond_4
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto :goto_1

    .line 686
    :cond_5
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto :goto_2

    .line 691
    :cond_6
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    iget v2, p0, Lui_Controller/CustomWidget/a/a/a;->s:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 697
    :cond_7
    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    if-ne v1, v3, :cond_8

    .line 698
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v4}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    .line 703
    :goto_5
    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->y:I

    if-ne v1, v3, :cond_9

    .line 704
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    iget v2, p0, Lui_Controller/CustomWidget/a/a/a;->r:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 708
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imageLoaded, loadViewHolder.ivImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    goto :goto_4

    .line 700
    :cond_8
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v5}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto :goto_5

    .line 706
    :cond_9
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    iget v2, p0, Lui_Controller/CustomWidget/a/a/a;->s:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 711
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    if-lt v1, v3, :cond_b

    .line 712
    invoke-virtual {p0, p2, v4}, Lui_Controller/CustomWidget/a/a/a;->a(II)V

    .line 713
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 714
    iget-object v0, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 719
    :cond_b
    invoke-virtual {p0, p2, v4}, Lui_Controller/CustomWidget/a/a/a;->a(II)V

    .line 720
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 722
    iget-object v0, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4
.end method

.method private a(Landroid/widget/ImageView;Z)V
    .locals 1

    .prologue
    .line 640
    if-eqz p2, :cond_0

    .line 641
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->E:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 644
    :goto_0
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->F:I

    if-gt p2, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lui_Controller/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->g:Ljava/util/ArrayList;

    .line 740
    const/4 v1, -0x1

    .line 741
    const-wide/16 v4, -0x1

    .line 746
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 747
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 748
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    .line 750
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 752
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    .line 754
    invoke-virtual {v0}, Lui_Controller/b/c;->d()J

    move-result-wide v2

    int-to-long v8, v7

    add-long/2addr v2, v8

    const-wide/32 v8, 0x5265c00

    div-long/2addr v2, v8

    .line 755
    cmp-long v8, v2, v4

    if-eqz v8, :cond_1

    .line 757
    iget-object v4, p0, Lui_Controller/CustomWidget/a/a/a;->g:Ljava/util/ArrayList;

    new-instance v5, Lui_Controller/CustomWidget/a/a/e;

    invoke-direct {v5}, Lui_Controller/CustomWidget/a/a/e;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    add-int/lit8 v1, v1, 0x1

    .line 761
    :goto_1
    invoke-virtual {v0, v1}, Lui_Controller/b/c;->a(I)V

    .line 750
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v4, v2

    goto :goto_0

    .line 763
    :cond_0
    return-void

    :cond_1
    move-wide v2, v4

    goto :goto_1
.end method

.method static synthetic a(Lui_Controller/CustomWidget/a/a/a;Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic a(Lui_Controller/CustomWidget/a/a/a;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->c()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x4016000000000000L    # 5.5

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHeaderView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 1128
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1129
    const/4 p2, 0x0

    .line 1236
    :goto_0
    return-object p2

    .line 1131
    :cond_0
    if-nez p2, :cond_1

    .line 1133
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1134
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v2, v0, 0x5

    .line 1135
    new-instance v1, Lui_Controller/CustomWidget/a/a/c;

    invoke-direct {v1}, Lui_Controller/CustomWidget/a/a/c;-><init>()V

    .line 1136
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f040066

    invoke-virtual {v0, v3, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1137
    const v0, 0x7f100146

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->a:Landroid/widget/ImageView;

    .line 1138
    const v0, 0x7f100145

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->b:Landroid/widget/TextView;

    .line 1139
    const v0, 0x7f100144

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->c:Landroid/widget/LinearLayout;

    .line 1141
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lui_Controller/CustomWidget/a/a/a;->d:Landroid/content/Context;

    div-int/lit8 v4, v2, 0x9

    int-to-float v4, v4

    invoke-static {v3, v4}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1142
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-double v4, v2

    div-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1143
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-double v4, v2

    div-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1144
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1146
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->c:Landroid/widget/LinearLayout;

    new-instance v2, Lui_Controller/CustomWidget/a/a/a$3;

    invoke-direct {v2, p0}, Lui_Controller/CustomWidget/a/a/a$3;-><init>(Lui_Controller/CustomWidget/a/a/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1153
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1160
    :goto_1
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->c()I

    move-result v2

    .line 1162
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    if-nez v0, :cond_2

    .line 1164
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1182
    :goto_2
    invoke-static {}, LGeneralFunction/d;->a()I

    move-result v3

    .line 1188
    const/16 v0, 0xa

    if-ne v3, v0, :cond_4

    .line 1189
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "MMM dd,yyyy"

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1202
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1204
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->d()J

    move-result-wide v6

    .line 1205
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_5

    .line 1206
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->b:Landroid/widget/TextView;

    const v1, 0x7f0a00e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1157
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/c;

    move-object v1, v0

    goto :goto_1

    .line 1168
    :cond_2
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/e;

    iget-boolean v0, v0, Lui_Controller/CustomWidget/a/a/e;->a:Z

    if-ne v0, v9, :cond_3

    .line 1171
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->a:Landroid/widget/ImageView;

    const v3, 0x7f020117

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1173
    :cond_3
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/c;->a:Landroid/widget/ImageView;

    const v3, 0x7f020116

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1192
    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    goto :goto_3

    .line 1210
    :cond_5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1215
    iget-object v5, p0, Lui_Controller/CustomWidget/a/a/a;->d:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 1216
    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1223
    if-nez v3, :cond_7

    .line 1225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u5e74"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1233
    :cond_6
    :goto_4
    iget-object v1, v1, Lui_Controller/CustomWidget/a/a/c;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lui_Controller/CustomWidget/a/a/a;->e(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1230
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x106000d

    .line 166
    const-string v0, "GridViewAdapter Deinit"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 167
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    if-eqz v0, :cond_4

    .line 173
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 186
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    .line 188
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    .line 190
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/b;

    .line 193
    iget-object v5, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 195
    iget-object v5, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 197
    :cond_1
    iget-object v5, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    iget-object v5, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v5, v0, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v5, v0, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v5, v0, Lui_Controller/CustomWidget/a/a/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v5, v0, Lui_Controller/CustomWidget/a/a/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v5, v0, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object v5, v0, Lui_Controller/CustomWidget/a/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v5, v0, Lui_Controller/CustomWidget/a/a/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v0, v0, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 211
    :cond_3
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->j:Lui_Controller/CustomWidget/a;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/a;->a()V

    .line 214
    iput-object v7, p0, Lui_Controller/CustomWidget/a/a/a;->j:Lui_Controller/CustomWidget/a;

    .line 216
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 218
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 219
    :cond_4
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0, p2}, Lui_Controller/b/c;->b(I)V

    .line 551
    return-void
.end method

.method public a(III)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0, p2, p3}, Lui_Controller/b/c;->a(II)V

    .line 305
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 306
    return-void
.end method

.method public a(IZ)V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->c()I

    move-result v1

    .line 421
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0, p2}, Lui_Controller/b/c;->a(Z)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSelectStatus "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 425
    invoke-virtual {p0, v1}, Lui_Controller/CustomWidget/a/a/a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lui_Controller/CustomWidget/a/a/e;->a:Z

    .line 429
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lui_Controller/CustomWidget/a/a/e;->a:Z

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LGeneralFunction/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 271
    move v1, v2

    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 273
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->a()I

    move-result v3

    .line 274
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->b()I

    move-result v4

    .line 276
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_0

    .line 278
    invoke-virtual {p0, v1}, Lui_Controller/CustomWidget/a/a/a;->d(I)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v0, v0, LGeneralFunction/e/a;->b:I

    if-ne v3, v0, :cond_2

    .line 282
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v3, v0, LGeneralFunction/e/a;->b:I

    .line 283
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget-object v0, v0, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 285
    if-ne v4, v0, :cond_1

    .line 287
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p0, v1, v3, v0}, Lui_Controller/CustomWidget/a/a/a;->a(III)V

    .line 292
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {p0, v1}, Lui_Controller/CustomWidget/a/a/a;->d(I)V

    goto :goto_0

    .line 300
    :cond_3
    return-void
.end method

.method public a(Lui_Controller/CustomWidget/a/a/a$a;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lui_Controller/CustomWidget/a/a/a;->c:Lui_Controller/CustomWidget/a/a/a$a;

    .line 773
    return-void
.end method

.method public a(IJZZ)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 492
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/e;

    iget-boolean v0, v0, Lui_Controller/CustomWidget/a/a/e;->a:Z

    if-nez v0, :cond_2

    move v7, v6

    .line 493
    :goto_0
    const-wide/16 v0, 0x0

    .line 495
    if-eqz v7, :cond_0

    .line 496
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->f()J

    move-result-wide v0

    :cond_0
    move v2, v3

    move-wide v4, v0

    .line 498
    :goto_1
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 500
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->c()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 502
    if-eqz v7, :cond_7

    .line 504
    if-nez p4, :cond_3

    .line 506
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    invoke-virtual {p0, v2, v3}, Lui_Controller/CustomWidget/a/a/a;->a(IZ)V

    .line 498
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v7, v3

    .line 492
    goto :goto_0

    .line 513
    :cond_3
    if-nez p5, :cond_4

    .line 515
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->f()Z

    move-result v0

    if-nez v0, :cond_4

    .line 517
    invoke-virtual {p0, v2, v3}, Lui_Controller/CustomWidget/a/a/a;->a(IZ)V

    goto :goto_2

    .line 522
    :cond_4
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_5

    .line 524
    invoke-virtual {p0, v2, v6}, Lui_Controller/CustomWidget/a/a/a;->a(IZ)V

    goto :goto_2

    .line 528
    :cond_5
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->a:LGeneralFunction/e/d;

    invoke-virtual {v0, v2}, LGeneralFunction/e/d;->f(I)J

    move-result-wide v0

    add-long/2addr v4, v0

    .line 530
    cmp-long v0, v4, p2

    if-lez v0, :cond_6

    .line 532
    const-string v0, "Select All Over Size Limit"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 533
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 545
    :goto_3
    return v3

    .line 536
    :cond_6
    invoke-virtual {p0, v2, v6}, Lui_Controller/CustomWidget/a/a/a;->a(IZ)V

    goto :goto_2

    .line 540
    :cond_7
    invoke-virtual {p0, v2, v3}, Lui_Controller/CustomWidget/a/a/a;->a(IZ)V

    goto :goto_2

    .line 543
    :cond_8
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/e;

    iput-boolean v7, v0, Lui_Controller/CustomWidget/a/a/e;->a:Z

    .line 544
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    move v3, v6

    .line 545
    goto :goto_3
.end method

.method public a(ZJZZ)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 438
    const-wide/16 v0, 0x0

    .line 440
    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->f()J

    move-result-wide v0

    :cond_0
    move v2, v3

    move-wide v4, v0

    .line 443
    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 445
    if-eqz p1, :cond_5

    .line 447
    if-nez p4, :cond_1

    .line 449
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {p0, v2, v3}, Lui_Controller/CustomWidget/a/a/a;->a(IZ)V

    .line 443
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 456
    :cond_1
    if-nez p5, :cond_2

    .line 458
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    invoke-virtual {p0, v2, v3}, Lui_Controller/CustomWidget/a/a/a;->a(IZ)V

    goto :goto_1

    .line 465
    :cond_2
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    .line 467
    invoke-virtual {p0, v2, v6}, Lui_Controller/CustomWidget/a/a/a;->a(IZ)V

    goto :goto_1

    .line 471
    :cond_3
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->a:LGeneralFunction/e/d;

    invoke-virtual {v0, v2}, LGeneralFunction/e/d;->f(I)J

    move-result-wide v0

    add-long/2addr v4, v0

    .line 473
    cmp-long v0, v4, p2

    if-lez v0, :cond_4

    .line 475
    const-string v0, "Select All Over Size Limit"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 476
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 487
    :goto_2
    return v3

    .line 479
    :cond_4
    invoke-virtual {p0, v2, v6}, Lui_Controller/CustomWidget/a/a/a;->a(IZ)V

    goto :goto_1

    .line 483
    :cond_5
    invoke-virtual {p0, v2, v3}, Lui_Controller/CustomWidget/a/a/a;->a(IZ)V

    goto :goto_1

    .line 486
    :cond_6
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    move v3, v6

    .line 487
    goto :goto_2
.end method

.method public a(ZZ)Z
    .locals 6

    .prologue
    .line 433
    const-wide/16 v2, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lui_Controller/CustomWidget/a/a/a;->a(ZJZZ)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->notifyDataSetChanged()V

    .line 227
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/CustomWidget/a/a/a;->z:I

    .line 161
    iput p1, p0, Lui_Controller/CustomWidget/a/a/a;->y:I

    .line 162
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 348
    move v1, v2

    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 350
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0, v2}, Lui_Controller/b/c;->a(Z)V

    .line 348
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 352
    :goto_1
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 354
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/e;

    iput-boolean v2, v0, Lui_Controller/CustomWidget/a/a/e;->a:Z

    .line 352
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 356
    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    .line 223
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 224
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x106000d

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteGridViewItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 233
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/b;

    .line 234
    if-eqz v0, :cond_1

    .line 236
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 240
    :cond_0
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v0, v0, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_1
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-direct {p0, v0}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/util/List;)V

    .line 258
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->j:Lui_Controller/CustomWidget/a;

    invoke-virtual {v0, p1}, Lui_Controller/CustomWidget/a;->a(I)V

    .line 261
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->b()V

    .line 262
    return-void
.end method

.method public e()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 378
    move v1, v0

    move v2, v0

    .line 380
    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 382
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    add-int/lit8 v2, v2, 0x1

    .line 380
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 385
    :cond_1
    return v2
.end method

.method public e(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 390
    move v1, v0

    move v2, v0

    .line 392
    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 394
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->c()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 395
    add-int/lit8 v2, v2, 0x1

    .line 392
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 398
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetHeaderMemberNum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 399
    return v2
.end method

.method public f()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    .line 404
    const-wide/16 v2, 0x0

    .line 406
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 408
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->a:LGeneralFunction/e/d;

    invoke-virtual {v0, v1}, LGeneralFunction/e/d;->f(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 406
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 414
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetTotalSelectFileSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v4, v2, v6

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 415
    return-wide v2
.end method

.method public f(I)Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->e()Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, Lui_Controller/CustomWidget/a/a/a;->e()I

    move-result v0

    .line 605
    if-nez v0, :cond_0

    .line 606
    const/4 v0, 0x0

    .line 610
    :goto_0
    return v0

    .line 607
    :cond_0
    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 608
    const/4 v0, 0x2

    goto :goto_0

    .line 610
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 560
    move v1, v2

    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 562
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->c()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    :goto_1
    return v2

    .line 560
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 565
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 789
    const/4 v0, 0x0

    .line 793
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 804
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getView, position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent.getChildCount():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 815
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->a:LGeneralFunction/e/d;

    invoke-virtual {v0, p1}, LGeneralFunction/e/d;->m(I)Ljava/lang/String;

    move-result-object v2

    .line 816
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->a:LGeneralFunction/e/d;

    invoke-virtual {v0, p1}, LGeneralFunction/e/d;->o(I)Ljava/lang/String;

    move-result-object v3

    .line 817
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->a:LGeneralFunction/e/d;

    invoke-virtual {v0, p1}, LGeneralFunction/e/d;->b(I)I

    move-result v4

    .line 818
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->a:LGeneralFunction/e/d;

    invoke-virtual {v0, p1}, LGeneralFunction/e/d;->c(I)I

    move-result v5

    .line 819
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->a:LGeneralFunction/e/d;

    invoke-virtual {v0, p1}, LGeneralFunction/e/d;->a(I)I

    move-result v8

    .line 821
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 822
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/CustomWidget/a/a/a;->D:Z

    .line 824
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "test path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 825
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->b:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 826
    if-nez p2, :cond_3

    .line 827
    new-instance v1, Lui_Controller/CustomWidget/a/a/b;

    invoke-direct {v1}, Lui_Controller/CustomWidget/a/a/b;-><init>()V

    .line 828
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->e:Landroid/view/LayoutInflater;

    const v6, 0x7f040065

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 829
    const v0, 0x7f10013a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    .line 830
    const v0, 0x7f10013b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    .line 831
    const v0, 0x7f10013e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    .line 832
    const v0, 0x7f10013f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->e:Landroid/widget/ImageView;

    .line 833
    const v0, 0x7f100140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->f:Landroid/widget/ImageView;

    .line 834
    const v0, 0x7f100141

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    .line 836
    const v0, 0x7f100142

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->c:Landroid/widget/ImageView;

    .line 837
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 838
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 839
    const v0, 0x7f100143

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->h:Landroid/widget/LinearLayout;

    .line 840
    const v0, 0x7f10013c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->i:Landroid/widget/ImageView;

    .line 841
    const v0, 0x7f10013d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    .line 842
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    iget-object v6, p0, Lui_Controller/CustomWidget/a/a/a;->d:Landroid/content/Context;

    iget v7, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    div-int/lit8 v7, v7, 0xa

    int-to-float v7, v7

    invoke-static {v6, v7}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 843
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->y:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_2

    .line 844
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->h:Landroid/widget/LinearLayout;

    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->B:I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 848
    :goto_0
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 849
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 850
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    const/16 v6, 0x53

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 852
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0x32

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 853
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0x32

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 854
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    div-int/lit8 v6, v6, 0x20

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    div-int/lit8 v10, v10, 0x20

    invoke-virtual {v0, v6, v7, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 856
    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->e:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->f:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0x19

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 860
    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    const/16 v6, 0x53

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 863
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    mul-int/lit8 v6, v6, 0xa

    div-int/lit8 v6, v6, 0x32

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 864
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    mul-int/lit8 v6, v6, 0xa

    div-int/lit8 v6, v6, 0x32

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 865
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    div-int/lit8 v6, v6, 0xf

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    div-int/lit8 v10, v10, 0x4

    invoke-virtual {v0, v6, v7, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 866
    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    const/16 v6, 0x33

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 869
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    mul-int/lit8 v6, v6, 0xb

    div-int/lit8 v6, v6, 0x32

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 870
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    mul-int/lit8 v6, v6, 0xb

    div-int/lit8 v6, v6, 0x32

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 871
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    div-int/lit8 v6, v6, 0x20

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v7, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 872
    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    const/16 v6, 0x11

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 875
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0x19

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 876
    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->l:I

    mul-int/lit8 v6, v6, 0x9

    div-int/lit8 v6, v6, 0x19

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 877
    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->i:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 878
    const/4 v0, -0x1

    iput v0, v1, Lui_Controller/CustomWidget/a/a/b;->k:I

    .line 880
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 882
    invoke-direct {p0, p1, v1}, Lui_Controller/CustomWidget/a/a/a;->a(ILui_Controller/CustomWidget/a/a/b;)V

    .line 883
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->i:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getView, convertView is null, viewList position:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", viewList viewHolder.ivImage.hashCode():"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x5

    invoke-direct {p0, v0, v6}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    move-object v7, v1

    .line 892
    :goto_1
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->b:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 894
    iget-boolean v0, p0, Lui_Controller/CustomWidget/a/a/a;->D:Z

    if-eqz v0, :cond_4

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 897
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 898
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->c:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1120
    :goto_2
    return-object p2

    .line 846
    :cond_2
    iget-object v0, v1, Lui_Controller/CustomWidget/a/a/b;->h:Landroid/widget/LinearLayout;

    iget v6, p0, Lui_Controller/CustomWidget/a/a/a;->C:I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 888
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/b;

    .line 889
    invoke-direct {p0, p1, v0}, Lui_Controller/CustomWidget/a/a/a;->a(ILui_Controller/CustomWidget/a/a/b;)V

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getView, convertView is not null, viewList position:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", viewList viewHolder.ivImage.hashCode():"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x5

    invoke-direct {p0, v1, v6}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    move-object v7, v0

    goto :goto_1

    .line 902
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    .line 904
    const/4 v1, 0x0

    .line 906
    :goto_3
    if-eqz v1, :cond_8

    .line 908
    iget v0, v7, Lui_Controller/CustomWidget/a/a/b;->k:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 909
    iput p1, v7, Lui_Controller/CustomWidget/a/a/b;->k:I

    .line 910
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 915
    :cond_5
    :goto_4
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->j:Lui_Controller/CustomWidget/a;

    new-instance v6, Lui_Controller/CustomWidget/a/a/a$2;

    invoke-direct {v6, p0}, Lui_Controller/CustomWidget/a/a/a$2;-><init>(Lui_Controller/CustomWidget/a/a/a;)V

    move v2, p1

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lui_Controller/CustomWidget/a;->b(Ljava/lang/String;IIIILui_Controller/CustomWidget/a$a;)V

    .line 928
    :goto_5
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/a/a/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 930
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 931
    iget-boolean v0, p0, Lui_Controller/CustomWidget/a/a/a;->m:Z

    if-eqz v0, :cond_a

    .line 933
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->y:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 934
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 937
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFileError, local_ViewHolder.ivImage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 949
    :cond_6
    :goto_7
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    .line 951
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/a/a/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 953
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    .line 1014
    :goto_8
    packed-switch v8, :pswitch_data_0

    .line 1083
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1084
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->e:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1085
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1086
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->f:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1087
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1088
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->i:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1089
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    :goto_9
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    if-lez v0, :cond_17

    .line 1096
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1100
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->y:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 1101
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->c:Landroid/widget/ImageView;

    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 911
    :cond_7
    iget v0, v7, Lui_Controller/CustomWidget/a/a/b;->k:I

    if-eq v0, p1, :cond_5

    .line 912
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 913
    iput p1, v7, Lui_Controller/CustomWidget/a/a/b;->k:I

    goto/16 :goto_4

    .line 925
    :cond_8
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/a/a/a;->i(I)V

    goto/16 :goto_5

    .line 936
    :cond_9
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 941
    :cond_a
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    .line 942
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->y:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 943
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 946
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFileError, ViewHolder.ivImage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 945
    :cond_b
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 957
    :cond_c
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto/16 :goto_8

    .line 960
    :cond_d
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 962
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/a/a/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 964
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto/16 :goto_8

    .line 968
    :cond_e
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto/16 :goto_8

    .line 971
    :cond_f
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 973
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/a/a/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 975
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto/16 :goto_8

    .line 979
    :cond_10
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto/16 :goto_8

    .line 982
    :cond_11
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 984
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/a/a/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 986
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto/16 :goto_8

    .line 990
    :cond_12
    packed-switch v8, :pswitch_data_1

    .line 1003
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto/16 :goto_8

    .line 994
    :pswitch_0
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto/16 :goto_8

    .line 1010
    :cond_13
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/a;->a(Landroid/widget/ImageView;Z)V

    goto/16 :goto_8

    .line 1017
    :pswitch_1
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1018
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->e:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1019
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1020
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->f:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1021
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1022
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->i:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1023
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1026
    :pswitch_2
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1027
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->e:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1029
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->f:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1031
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1032
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->i:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1033
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1036
    :pswitch_3
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1038
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->e:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1039
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1040
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->f:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1041
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1042
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->i:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1043
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1047
    :pswitch_4
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1049
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->e:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1050
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1051
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->f:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1052
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1054
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->i:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1055
    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/a;->a:LGeneralFunction/e/d;

    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->a()I

    move-result v2

    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    .line 1056
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->b()I

    move-result v0

    .line 1055
    invoke-virtual {v1, v2, v0}, LGeneralFunction/e/d;->d(II)I

    move-result v0

    .line 1057
    div-int/lit8 v1, v0, 0x3c

    .line 1058
    rem-int/lit8 v0, v0, 0x3c

    .line 1059
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    iget-object v1, v7, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1063
    :pswitch_5
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1064
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->e:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1065
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1067
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->f:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1068
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1069
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->i:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1070
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1073
    :pswitch_6
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->b:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1074
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->e:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1075
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->d:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1076
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->f:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1077
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->g:Landroid/widget/ImageView;

    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1078
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->i:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1079
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1103
    :cond_14
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->c:Landroid/widget/ImageView;

    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1108
    :cond_15
    iget v0, p0, Lui_Controller/CustomWidget/a/a/a;->y:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 1109
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->c:Landroid/widget/ImageView;

    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1111
    :cond_16
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->c:Landroid/widget/ImageView;

    iget v1, p0, Lui_Controller/CustomWidget/a/a/a;->q:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 1116
    :cond_17
    iget-object v0, v7, Lui_Controller/CustomWidget/a/a/b;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_18
    move-object v1, v2

    goto/16 :goto_3

    .line 1014
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 990
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 730
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]======="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lui_Controller/CustomWidget/a/a/a;->a(Ljava/lang/String;I)V

    .line 730
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 735
    :cond_0
    return-void
.end method

.method public h(I)Z
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/b/c;

    invoke-virtual {v0}, Lui_Controller/b/c;->g()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->c:Lui_Controller/CustomWidget/a/a/a$a;

    invoke-interface {v0}, Lui_Controller/CustomWidget/a/a/a$a;->a()V

    .line 778
    return-void
.end method

.method public i(I)V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/a;->c:Lui_Controller/CustomWidget/a/a/a$a;

    invoke-interface {v0, p1}, Lui_Controller/CustomWidget/a/a/a$a;->a(I)V

    .line 783
    return-void
.end method
