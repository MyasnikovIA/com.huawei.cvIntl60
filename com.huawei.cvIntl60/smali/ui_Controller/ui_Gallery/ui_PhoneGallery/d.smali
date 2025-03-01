.class public Lui_Controller/ui_Gallery/ui_PhoneGallery/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected a:Z

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    .line 24
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    .line 25
    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    .line 26
    const v0, 0x7f02028f

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    .line 27
    iput-boolean v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->a:Z

    .line 28
    iput v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->g:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->h:I

    .line 45
    iput-object p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    .line 46
    iput p2, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->g:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    .line 50
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c()V

    .line 51
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v6, 0x7f0a00b4

    const v5, 0x7f0a0084

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 55
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->g:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    const v2, 0x7f0a00df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 97
    :pswitch_3
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 108
    :pswitch_4
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    const v2, 0x7f0a0190

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->d:Ljava/util/ArrayList;

    iget v1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->g:I

    .line 121
    invoke-direct {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c()V

    .line 123
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 135
    iput-boolean p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->a:Z

    .line 136
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->a:Z

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->notifyDataSetChanged()V

    .line 145
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->h:I

    .line 131
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 165
    .line 167
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 168
    const v0, 0x7f1003bf

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 169
    const v1, 0x7f1003c1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 170
    const v2, 0x7f1003c0

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 172
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 174
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 175
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 176
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 177
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    iget-object v6, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->b:Landroid/content/Context;

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x28

    int-to-float v0, v0

    invoke-static {v6, v0}, LGeneralFunction/k;->a(Landroid/content/Context;F)I

    move-result v0

    .line 181
    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 182
    iget-object v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->h:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 184
    iget v0, p0, Lui_Controller/ui_Gallery/ui_PhoneGallery/d;->h:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-object v3
.end method
