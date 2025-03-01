.class public Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;
.super Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:I

.field private f:Landroid/widget/ImageView;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LGeneralFunction/e/d;IIZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/a;-><init>()V

    .line 25
    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->d:I

    .line 26
    iput v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->e:I

    .line 32
    iput-object p1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->b:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->c:Landroid/view/LayoutInflater;

    .line 34
    iput p3, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->d:I

    .line 35
    iput p4, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->e:I

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    .line 37
    iput-boolean p5, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->g:Z

    .line 38
    :goto_0
    invoke-virtual {p2}, LGeneralFunction/e/d;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 40
    new-instance v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;

    invoke-direct {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;-><init>()V

    .line 41
    invoke-virtual {p2, v0}, LGeneralFunction/e/d;->r(I)LGeneralFunction/e/a;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->a(LGeneralFunction/e/d;LGeneralFunction/e/a;)V

    .line 42
    iget-object v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public b(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;

    return-object v0
.end method

.method public synthetic c(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/a/c;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->d(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->d(I)Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 75
    .line 76
    if-nez p2, :cond_1

    .line 81
    new-instance v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;

    invoke-direct {v1}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;-><init>()V

    .line 82
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f04006f

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    const v0, 0x7f10015e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->d:I

    add-int/lit8 v2, v2, 0x0

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 88
    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->e:I

    add-int/lit8 v2, v2, 0x0

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 89
    iget-object v2, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 91
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->a:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    const v0, 0x7f10015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->c:Landroid/widget/ImageView;

    .line 96
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->d:I

    add-int/lit8 v2, v2, 0x0

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 98
    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->e:I

    add-int/lit8 v2, v2, 0x0

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 99
    iget-object v2, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 101
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    const v0, 0x7f100160

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->b:Landroid/widget/ImageView;

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget v2, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->d:I

    add-int/lit8 v2, v2, 0x0

    div-int/lit8 v2, v2, 0x9

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 108
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 109
    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 110
    iget-object v2, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->b:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 115
    const v0, 0x7f100161

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->f:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->f:Landroid/widget/ImageView;

    const v2, 0x7f02013e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->l()I

    .line 123
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;

    invoke-virtual {v0}, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/c;->l()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    :goto_1
    return-object p2

    .line 131
    :pswitch_0
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->b:Landroid/widget/ImageView;

    const v2, 0x7f020141

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    iget-boolean v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->g:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->b:Landroid/widget/ImageView;

    const v2, 0x7f020140

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :pswitch_3
    iget-object v0, v1, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;->b:Landroid/widget/ImageView;

    const v2, 0x7f02013f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/SingleHorizontalScrollView/b/b;

    goto :goto_1

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
