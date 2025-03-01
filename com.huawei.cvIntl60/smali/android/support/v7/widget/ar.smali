.class public Landroid/support/v7/widget/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ar$c;,
        Landroid/support/v7/widget/ar$d;,
        Landroid/support/v7/widget/ar$e;,
        Landroid/support/v7/widget/ar$a;,
        Landroid/support/v7/widget/ar$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/widget/AdapterView$OnItemClickListener;

.field private C:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final D:Landroid/support/v7/widget/ar$d;

.field private final E:Landroid/support/v7/widget/ar$c;

.field private final F:Landroid/support/v7/widget/ar$a;

.field private G:Ljava/lang/Runnable;

.field private final H:Landroid/graphics/Rect;

.field private I:Landroid/graphics/Rect;

.field private J:Z

.field c:Landroid/support/v7/widget/ak;

.field d:I

.field final e:Landroid/support/v7/widget/ar$e;

.field final f:Landroid/os/Handler;

.field g:Landroid/widget/PopupWindow;

.field private i:Landroid/content/Context;

.field private j:Landroid/widget/ListAdapter;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Landroid/view/View;

.field private x:I

.field private y:Landroid/database/DataSetObserver;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 84
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ar;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "getMaxAvailableHeight"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ar;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :goto_1
    :try_start_2
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setEpicenterBounds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ar;->h:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    :goto_2
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    :catch_2
    move-exception v0

    .line 100
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 218
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/ar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/ar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput v0, p0, Landroid/support/v7/widget/ar;->k:I

    .line 109
    iput v0, p0, Landroid/support/v7/widget/ar;->l:I

    .line 112
    const/16 v0, 0x3ea

    iput v0, p0, Landroid/support/v7/widget/ar;->o:I

    .line 114
    iput-boolean v3, p0, Landroid/support/v7/widget/ar;->q:Z

    .line 118
    iput v2, p0, Landroid/support/v7/widget/ar;->t:I

    .line 120
    iput-boolean v2, p0, Landroid/support/v7/widget/ar;->u:Z

    .line 121
    iput-boolean v2, p0, Landroid/support/v7/widget/ar;->v:Z

    .line 122
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/ar;->d:I

    .line 125
    iput v2, p0, Landroid/support/v7/widget/ar;->x:I

    .line 136
    new-instance v0, Landroid/support/v7/widget/ar$e;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ar$e;-><init>(Landroid/support/v7/widget/ar;)V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->e:Landroid/support/v7/widget/ar$e;

    .line 137
    new-instance v0, Landroid/support/v7/widget/ar$d;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ar$d;-><init>(Landroid/support/v7/widget/ar;)V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->D:Landroid/support/v7/widget/ar$d;

    .line 138
    new-instance v0, Landroid/support/v7/widget/ar$c;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ar$c;-><init>(Landroid/support/v7/widget/ar;)V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->E:Landroid/support/v7/widget/ar$c;

    .line 139
    new-instance v0, Landroid/support/v7/widget/ar$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ar$a;-><init>(Landroid/support/v7/widget/ar;)V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->F:Landroid/support/v7/widget/ar$a;

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    .line 256
    iput-object p1, p0, Landroid/support/v7/widget/ar;->i:Landroid/content/Context;

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->f:Landroid/os/Handler;

    .line 259
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 261
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ar;->m:I

    .line 263
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ar;->n:I

    .line 265
    iget v1, p0, Landroid/support/v7/widget/ar;->n:I

    if-eqz v1, :cond_0

    .line 266
    iput-boolean v3, p0, Landroid/support/v7/widget/ar;->p:Z

    .line 268
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    new-instance v0, Landroid/support/v7/widget/q;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    .line 271
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 272
    return-void
.end method

.method private a(Landroid/view/View;IZ)I
    .locals 5

    .prologue
    .line 1421
    sget-object v0, Landroid/support/v7/widget/ar;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1423
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/ar;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 1424
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1423
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1430
    :goto_0
    return v0

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Landroid/support/v7/widget/ar;->w:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Landroid/support/v7/widget/ar;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 771
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 772
    check-cast v0, Landroid/view/ViewGroup;

    .line 773
    iget-object v1, p0, Landroid/support/v7/widget/ar;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 776
    :cond_0
    return-void
.end method

.method private b()I
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1136
    .line 1138
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    if-nez v0, :cond_5

    .line 1139
    iget-object v7, p0, Landroid/support/v7/widget/ar;->i:Landroid/content/Context;

    .line 1147
    new-instance v0, Landroid/support/v7/widget/ar$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ar$1;-><init>(Landroid/support/v7/widget/ar;)V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->G:Ljava/lang/Runnable;

    .line 1158
    iget-boolean v0, p0, Landroid/support/v7/widget/ar;->J:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v7, v0}, Landroid/support/v7/widget/ar;->a(Landroid/content/Context;Z)Landroid/support/v7/widget/ak;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    .line 1159
    iget-object v0, p0, Landroid/support/v7/widget/ar;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    iget-object v5, p0, Landroid/support/v7/widget/ar;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ak;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    iget-object v5, p0, Landroid/support/v7/widget/ar;->j:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ak;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1163
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    iget-object v5, p0, Landroid/support/v7/widget/ar;->B:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ak;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1164
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ak;->setFocusable(Z)V

    .line 1165
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ak;->setFocusableInTouchMode(Z)V

    .line 1166
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    new-instance v5, Landroid/support/v7/widget/ar$2;

    invoke-direct {v5, p0}, Landroid/support/v7/widget/ar$2;-><init>(Landroid/support/v7/widget/ar;)V

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ak;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1184
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    iget-object v5, p0, Landroid/support/v7/widget/ar;->E:Landroid/support/v7/widget/ar$c;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ak;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1186
    iget-object v0, p0, Landroid/support/v7/widget/ar;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    iget-object v5, p0, Landroid/support/v7/widget/ar;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ak;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1190
    :cond_1
    iget-object v5, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    .line 1192
    iget-object v8, p0, Landroid/support/v7/widget/ar;->w:Landroid/view/View;

    .line 1193
    if-eqz v8, :cond_c

    .line 1196
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1197
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1199
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1203
    iget v7, p0, Landroid/support/v7/widget/ar;->x:I

    packed-switch v7, :pswitch_data_0

    .line 1215
    const-string v0, "ListPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid hint position "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/support/v7/widget/ar;->x:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    if-ltz v0, :cond_4

    .line 1225
    iget v5, p0, Landroid/support/v7/widget/ar;->l:I

    move v0, v4

    .line 1230
    :goto_2
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1232
    invoke-virtual {v8, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1234
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1235
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v7

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    move-object v5, v6

    .line 1241
    :goto_3
    iget-object v6, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move v6, v0

    .line 1256
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1257
    if-eqz v0, :cond_6

    .line 1258
    iget-object v5, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1259
    iget-object v0, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    .line 1263
    iget-boolean v5, p0, Landroid/support/v7/widget/ar;->p:Z

    if-nez v5, :cond_a

    .line 1264
    iget-object v5, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/ar;->n:I

    move v7, v0

    .line 1272
    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    .line 1273
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_7

    .line 1274
    :goto_6
    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->i()Landroid/view/View;

    move-result-object v0

    iget v5, p0, Landroid/support/v7/widget/ar;->n:I

    invoke-direct {p0, v0, v5, v1}, Landroid/support/v7/widget/ar;->a(Landroid/view/View;IZ)I

    move-result v5

    .line 1276
    iget-boolean v0, p0, Landroid/support/v7/widget/ar;->u:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/ar;->k:I

    if-ne v0, v3, :cond_8

    .line 1277
    :cond_2
    add-int v0, v5, v7

    .line 1309
    :goto_7
    return v0

    :cond_3
    move v0, v2

    .line 1158
    goto/16 :goto_0

    .line 1205
    :pswitch_0
    invoke-virtual {v6, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1210
    :pswitch_1
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1211
    invoke-virtual {v6, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    move v0, v2

    move v5, v2

    .line 1228
    goto :goto_2

    .line 1243
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1244
    iget-object v5, p0, Landroid/support/v7/widget/ar;->w:Landroid/view/View;

    .line 1245
    if-eqz v5, :cond_b

    .line 1247
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1248
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    move v6, v0

    goto :goto_4

    .line 1267
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v7, v2

    .line 1268
    goto :goto_5

    :cond_7
    move v1, v2

    .line 1273
    goto :goto_6

    .line 1281
    :cond_8
    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    packed-switch v0, :pswitch_data_1

    .line 1295
    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1301
    :goto_8
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    sub-int v4, v5, v6

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/ak;->a(IIIII)I

    move-result v0

    .line 1303
    if-lez v0, :cond_9

    .line 1304
    iget-object v1, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    invoke-virtual {v1}, Landroid/support/v7/widget/ak;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    .line 1305
    invoke-virtual {v2}, Landroid/support/v7/widget/ak;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1306
    add-int/2addr v1, v7

    add-int/2addr v6, v1

    .line 1309
    :cond_9
    add-int/2addr v0, v6

    goto :goto_7

    .line 1283
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/ar;->i:Landroid/content/Context;

    .line 1284
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v8

    sub-int/2addr v0, v1

    .line 1283
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_8

    .line 1289
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/ar;->i:Landroid/content/Context;

    .line 1290
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v4

    sub-int/2addr v0, v1

    .line 1289
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_8

    :cond_a
    move v7, v0

    goto/16 :goto_5

    :cond_b
    move v6, v2

    goto/16 :goto_4

    :cond_c
    move v0, v2

    goto/16 :goto_3

    .line 1203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1281
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c(Z)V
    .locals 5

    .prologue
    .line 1411
    sget-object v0, Landroid/support/v7/widget/ar;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1413
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/ar;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1414
    :catch_0
    move-exception v0

    .line 1415
    const-string v0, "ListPopupWindow"

    const-string v1, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Z)Landroid/support/v7/widget/ak;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 930
    new-instance v0, Landroid/support/v7/widget/ak;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/ak;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 306
    iput p1, p0, Landroid/support/v7/widget/ar;->x:I

    .line 307
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 512
    iput-object p1, p0, Landroid/support/v7/widget/ar;->I:Landroid/graphics/Rect;

    .line 513
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 603
    iput-object p1, p0, Landroid/support/v7/widget/ar;->B:Landroid/widget/AdapterView$OnItemClickListener;

    .line 604
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/v7/widget/ar;->y:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 282
    new-instance v0, Landroid/support/v7/widget/ar$b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ar$b;-><init>(Landroid/support/v7/widget/ar;)V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->y:Landroid/database/DataSetObserver;

    .line 286
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/ar;->j:Landroid/widget/ListAdapter;

    .line 287
    if-eqz p1, :cond_1

    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/ar;->y:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 291
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->j:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ak;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    :cond_2
    return-void

    .line 283
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ar;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroid/support/v7/widget/ar;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->y:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 765
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 766
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 329
    iput-boolean p1, p0, Landroid/support/v7/widget/ar;->J:Z

    .line 330
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 331
    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 436
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 464
    iput-object p1, p0, Landroid/support/v7/widget/ar;->z:Landroid/view/View;

    .line 465
    return-void
.end method

.method public b(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1318
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ar;->s:Z

    .line 1319
    iput-boolean p1, p0, Landroid/support/v7/widget/ar;->r:Z

    .line 1320
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 480
    iput p1, p0, Landroid/support/v7/widget/ar;->m:I

    .line 481
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Landroid/support/v7/widget/ar;->J:Z

    return v0
.end method

.method public d()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 647
    invoke-direct {p0}, Landroid/support/v7/widget/ar;->b()I

    move-result v2

    .line 649
    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->n()Z

    move-result v6

    .line 650
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/ar;->o:I

    invoke-static {v0, v4}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 652
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 653
    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->i()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    if-ne v0, v5, :cond_4

    move v4, v5

    .line 669
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/ar;->k:I

    if-ne v0, v5, :cond_a

    .line 672
    if-eqz v6, :cond_6

    .line 673
    :goto_2
    if-eqz v6, :cond_8

    .line 674
    iget-object v6, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    if-ne v0, v5, :cond_7

    move v0, v5

    :goto_3
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 676
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v6, v2

    .line 688
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/support/v7/widget/ar;->v:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/support/v7/widget/ar;->u:Z

    if-nez v2, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 690
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->i()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ar;->m:I

    iget v3, p0, Landroid/support/v7/widget/ar;->n:I

    if-gez v4, :cond_3

    move v4, v5

    :cond_3
    if-gez v6, :cond_c

    :goto_5
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_0

    .line 662
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    if-ne v0, v7, :cond_5

    .line 663
    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    move v4, v0

    goto :goto_1

    .line 665
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    move v4, v0

    goto :goto_1

    :cond_6
    move v2, v5

    .line 672
    goto :goto_2

    :cond_7
    move v0, v1

    .line 674
    goto :goto_3

    .line 678
    :cond_8
    iget-object v6, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    if-ne v0, v5, :cond_9

    move v0, v5

    :goto_6
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v6, v2

    goto :goto_4

    :cond_9
    move v0, v1

    .line 678
    goto :goto_6

    .line 682
    :cond_a
    iget v0, p0, Landroid/support/v7/widget/ar;->k:I

    if-ne v0, v7, :cond_b

    move v6, v2

    .line 683
    goto :goto_4

    .line 685
    :cond_b
    iget v0, p0, Landroid/support/v7/widget/ar;->k:I

    move v6, v0

    goto :goto_4

    :cond_c
    move v5, v6

    .line 690
    goto :goto_5

    .line 695
    :cond_d
    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    if-ne v0, v5, :cond_13

    move v0, v5

    .line 706
    :goto_7
    iget v4, p0, Landroid/support/v7/widget/ar;->k:I

    if-ne v4, v5, :cond_15

    move v2, v5

    .line 716
    :cond_e
    :goto_8
    iget-object v4, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 717
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 718
    invoke-direct {p0, v3}, Landroid/support/v7/widget/ar;->c(Z)V

    .line 722
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/support/v7/widget/ar;->v:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Landroid/support/v7/widget/ar;->u:Z

    if-nez v2, :cond_16

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 723
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->D:Landroid/support/v7/widget/ar$d;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 724
    iget-boolean v0, p0, Landroid/support/v7/widget/ar;->s:Z

    if-eqz v0, :cond_f

    .line 725
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/support/v7/widget/ar;->r:Z

    invoke-static {v0, v1}, Landroid/support/v4/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 727
    :cond_f
    sget-object v0, Landroid/support/v7/widget/ar;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_10

    .line 729
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/ar;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/ar;->I:Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :cond_10
    :goto_a
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->i()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ar;->m:I

    iget v3, p0, Landroid/support/v7/widget/ar;->n:I

    iget v4, p0, Landroid/support/v7/widget/ar;->t:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 736
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ak;->setSelection(I)V

    .line 738
    iget-boolean v0, p0, Landroid/support/v7/widget/ar;->J:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 739
    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->m()V

    .line 741
    :cond_12
    iget-boolean v0, p0, Landroid/support/v7/widget/ar;->J:Z

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Landroid/support/v7/widget/ar;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->F:Landroid/support/v7/widget/ar$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 698
    :cond_13
    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    if-ne v0, v7, :cond_14

    .line 699
    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_7

    .line 701
    :cond_14
    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    goto/16 :goto_7

    .line 709
    :cond_15
    iget v4, p0, Landroid/support/v7/widget/ar;->k:I

    if-eq v4, v7, :cond_e

    .line 712
    iget v2, p0, Landroid/support/v7/widget/ar;->k:I

    goto/16 :goto_8

    :cond_16
    move v3, v1

    .line 722
    goto :goto_9

    .line 730
    :catch_0
    move-exception v0

    .line 731
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 499
    iput p1, p0, Landroid/support/v7/widget/ar;->n:I

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ar;->p:Z

    .line 501
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 752
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 753
    invoke-direct {p0}, Landroid/support/v7/widget/ar;->a()V

    .line 754
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 755
    iput-object v1, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    .line 756
    iget-object v0, p0, Landroid/support/v7/widget/ar;->f:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->e:Landroid/support/v7/widget/ar$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    return-void
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 522
    iput p1, p0, Landroid/support/v7/widget/ar;->t:I

    .line 523
    return-void
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 539
    iput p1, p0, Landroid/support/v7/widget/ar;->l:I

    .line 540
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public g()Landroid/widget/ListView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 926
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    return-object v0
.end method

.method public g(I)V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/ar;->H:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ar;->l:I

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ar;->f(I)V

    goto :goto_0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 792
    return-void
.end method

.method public i()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/ar;->z:Landroid/view/View;

    return-object v0
.end method

.method public i(I)V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    .line 811
    invoke-virtual {p0}, Landroid/support/v7/widget/ar;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 812
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ak;->setListSelectionHidden(Z)V

    .line 813
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ak;->setSelection(I)V

    .line 815
    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/ak;->setItemChecked(IZ)V

    .line 819
    :cond_0
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Landroid/support/v7/widget/ar;->m:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Landroid/support/v7/widget/ar;->p:Z

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    .line 490
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ar;->n:I

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Landroid/support/v7/widget/ar;->l:I

    return v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Landroid/support/v7/widget/ar;->c:Landroid/support/v7/widget/ak;

    .line 827
    if-eqz v0, :cond_0

    .line 829
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ak;->setListSelectionHidden(Z)V

    .line 831
    invoke-virtual {v0}, Landroid/support/v7/widget/ak;->requestLayout()V

    .line 833
    :cond_0
    return-void
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Landroid/support/v7/widget/ar;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
