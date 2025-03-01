.class public Lui_Controller/CustomWidget/a/a/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui_Controller/CustomWidget/a/a/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:[I

.field private f:I

.field private g:I


# direct methods
.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lui_Controller/CustomWidget/a/a/d;->g:I

    if-ge p2, v0, :cond_0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f020102

    const/4 v7, 0x2

    const/4 v6, -0x1

    const v5, -0x777778

    const/4 v4, 0x0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainMenuAdapter getView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/d;->e:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/CustomWidget/a/a/d;->a(Ljava/lang/String;I)V

    .line 144
    if-nez p2, :cond_0

    .line 145
    new-instance v1, Lui_Controller/CustomWidget/a/a/d$a;

    invoke-direct {v1, p0}, Lui_Controller/CustomWidget/a/a/d$a;-><init>(Lui_Controller/CustomWidget/a/a/d;)V

    .line 146
    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/d;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f04006a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 147
    const v0, 0x7f100151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/d$a;->a:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f100152

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lui_Controller/CustomWidget/a/a/d$a;->b:Landroid/widget/ImageView;

    .line 149
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 157
    :goto_0
    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 158
    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/d;->a:Landroid/content/Context;

    iget v2, p0, Lui_Controller/CustomWidget/a/a/d;->d:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-static {v1, v2}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v1

    .line 159
    iget-object v2, v0, Lui_Controller/CustomWidget/a/a/d$a;->a:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 160
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lui_Controller/CustomWidget/a/a/d;->d:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 161
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->a:Landroid/widget/TextView;

    iget v2, p0, Lui_Controller/CustomWidget/a/a/d;->d:I

    div-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    iget v1, p0, Lui_Controller/CustomWidget/a/a/d;->f:I

    if-ne v1, v7, :cond_3

    .line 165
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->b:Landroid/widget/ImageView;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/d;->e:[I

    aget v1, v1, p1

    if-ne v1, v7, :cond_1

    .line 169
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    :goto_1
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lui_Controller/CustomWidget/a/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-object p2

    .line 152
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui_Controller/CustomWidget/a/a/d$a;

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/d;->e:[I

    aget v1, v1, p1

    if-nez v1, :cond_2

    .line 173
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 177
    :cond_2
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 182
    :cond_3
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/d;->e:[I

    aget v1, v1, p1

    if-ne v1, v7, :cond_4

    .line 186
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 190
    :cond_4
    iget-object v1, p0, Lui_Controller/CustomWidget/a/a/d;->e:[I

    aget v1, v1, p1

    if-nez v1, :cond_5

    .line 192
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->b:Landroid/widget/ImageView;

    const v2, 0x7f020103

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 197
    :cond_5
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v1, v0, Lui_Controller/CustomWidget/a/a/d$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
