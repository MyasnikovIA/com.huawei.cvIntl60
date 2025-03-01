.class public Lui_Controller/ui_Setting/UI_SettingMenuController$d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui_Controller/ui_Setting/UI_SettingMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Setting/UI_SettingMenuController;

.field private b:[I

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

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Z

.field private f:Z


# direct methods
.method public constructor <init>(Lui_Controller/ui_Setting/UI_SettingMenuController;Landroid/content/Context;[ILjava/util/List;[Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1047
    iput-object p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1048
    iput-object p4, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->c:Ljava/util/List;

    .line 1049
    iput-object p3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    .line 1050
    iput-object p6, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->d:Ljava/util/List;

    .line 1051
    iput-boolean p7, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->f:Z

    .line 1053
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->e:[Z

    .line 1055
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1057
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->e:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1067
    invoke-virtual {p0}, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->notifyDataSetChanged()V

    .line 1068
    return-void
.end method

.method public a(ILandroid/view/View;I)V
    .locals 2

    .prologue
    .line 1083
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1084
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    const v1, 0x7f0202ad

    aput v1, v0, p1

    .line 1090
    :goto_0
    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    const v1, 0x7f0202af

    aput v1, v0, p1

    goto :goto_0
.end method

.method public a(ILandroid/view/View;IZ)V
    .locals 2

    .prologue
    .line 1092
    if-eqz p4, :cond_1

    .line 1093
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1094
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    const v1, 0x7f0202af

    aput v1, v0, p1

    .line 1103
    :goto_0
    return-void

    .line 1097
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    const v1, 0x7f0202ad

    aput v1, v0, p1

    goto :goto_0

    .line 1101
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a(ILandroid/view/View;I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1063
    iput-boolean p1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->f:Z

    .line 1064
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const v3, 0x7f0202ad

    .line 1071
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 1072
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    const/4 v1, 0x7

    const v2, 0x7f0202af

    aput v2, v0, v1

    .line 1074
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 1079
    invoke-virtual {p0}, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->notifyDataSetChanged()V

    .line 1080
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1110
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->c:Ljava/util/List;

    invoke-virtual {p0, p1}, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0202b0

    const v7, 0x7f0202af

    const v6, 0x7f0202ae

    const v5, 0x7f0202ad

    const v4, 0x7f0f0098

    .line 1120
    .line 1121
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->m(Lui_Controller/ui_Setting/UI_SettingMenuController;)[Ljava/lang/Boolean;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1122
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1124
    const v0, 0x7f10010c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1125
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1126
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1128
    const v0, 0x7f10010d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1129
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1130
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1132
    const v0, 0x7f10010e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1133
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1134
    const v0, 0x7f1000f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1135
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->o(Lui_Controller/ui_Setting/UI_SettingMenuController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    const v1, 0x7f1000fc

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1137
    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->a(Lui_Controller/ui_Setting/UI_SettingMenuController;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    iget-boolean v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->f:Z

    if-nez v3, :cond_0

    .line 1141
    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->p(Lui_Controller/ui_Setting/UI_SettingMenuController;)[Ljava/lang/Boolean;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1142
    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1143
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0096

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    move-object v0, v2

    .line 1198
    :goto_1
    return-object v0

    .line 1146
    :cond_1
    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v3}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1147
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1152
    :cond_2
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v0}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1154
    const v0, 0x7f10010f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1155
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1156
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1158
    const v0, 0x7f100111

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1159
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1160
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->n(Lui_Controller/ui_Setting/UI_SettingMenuController;)I

    move-result v1

    iget-object v3, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget v3, v3, Lui_Controller/ui_Setting/UI_SettingMenuController;->b:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1162
    const v0, 0x7f1000f9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1163
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->o(Lui_Controller/ui_Setting/UI_SettingMenuController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-boolean v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->f:Z

    if-nez v1, :cond_3

    .line 1167
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-static {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->p(Lui_Controller/ui_Setting/UI_SettingMenuController;)[Ljava/lang/Boolean;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1169
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0091

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1170
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    aget v0, v0, p1

    if-ne v0, v8, :cond_5

    .line 1171
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    aput v7, v0, p1

    .line 1184
    :cond_3
    :goto_2
    const v0, 0x7f10010e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1185
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1187
    const/16 v0, 0xb

    if-ne p1, v0, :cond_9

    .line 1189
    const v0, 0x7f100110

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1190
    const v1, 0x7f0202a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1191
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v1, v1, Lui_Controller/b/f;->n:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    iget-object v1, v1, Lui_Controller/ui_Setting/UI_SettingMenuController;->d:Lui_Controller/b/f;

    iget-boolean v1, v1, Lui_Controller/b/f;->r:Z

    if-eqz v1, :cond_8

    .line 1192
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v0, v2

    goto/16 :goto_1

    .line 1172
    :cond_5
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    aget v0, v0, p1

    if-ne v0, v6, :cond_3

    .line 1173
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    aput v5, v0, p1

    goto :goto_2

    .line 1177
    :cond_6
    iget-object v1, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->a:Lui_Controller/ui_Setting/UI_SettingMenuController;

    invoke-virtual {v1}, Lui_Controller/ui_Setting/UI_SettingMenuController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1178
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    aget v0, v0, p1

    if-ne v0, v7, :cond_7

    .line 1179
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    aput v8, v0, p1

    goto :goto_2

    .line 1180
    :cond_7
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    aget v0, v0, p1

    if-ne v0, v5, :cond_3

    .line 1181
    iget-object v0, p0, Lui_Controller/ui_Setting/UI_SettingMenuController$d;->b:[I

    aput v6, v0, p1

    goto :goto_2

    .line 1194
    :cond_8
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    move-object v0, v2

    goto/16 :goto_1
.end method
