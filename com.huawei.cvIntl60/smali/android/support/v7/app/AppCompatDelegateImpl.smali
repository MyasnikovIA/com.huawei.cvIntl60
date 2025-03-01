.class Landroid/support/v7/app/AppCompatDelegateImpl;
.super Landroid/support/v7/app/d;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/h$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImpl$d;,
        Landroid/support/v7/app/AppCompatDelegateImpl$c;,
        Landroid/support/v7/app/AppCompatDelegateImpl$e;,
        Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;,
        Landroid/support/v7/app/AppCompatDelegateImpl$a;,
        Landroid/support/v7/app/AppCompatDelegateImpl$f;,
        Landroid/support/v7/app/AppCompatDelegateImpl$b;
    }
.end annotation


# static fields
.field private static final t:Z

.field private static final u:[I

.field private static v:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/view/ViewGroup;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/view/View;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

.field private J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Landroid/support/v7/app/AppCompatDelegateImpl$d;

.field private final O:Ljava/lang/Runnable;

.field private P:Z

.field private Q:Landroid/graphics/Rect;

.field private R:Landroid/graphics/Rect;

.field private S:Landroid/support/v7/app/AppCompatViewInflater;

.field final a:Landroid/content/Context;

.field final b:Landroid/view/Window;

.field final c:Landroid/view/Window$Callback;

.field final d:Landroid/view/Window$Callback;

.field final e:Landroid/support/v7/app/c;

.field f:Landroid/support/v7/app/a;

.field g:Landroid/support/v7/view/b;

.field h:Landroid/support/v7/widget/ActionBarContextView;

.field i:Landroid/widget/PopupWindow;

.field j:Ljava/lang/Runnable;

.field k:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:I

.field private w:Ljava/lang/CharSequence;

.field private x:Landroid/support/v7/widget/ag;

.field private y:Landroid/support/v7/app/AppCompatDelegateImpl$a;

.field private z:Landroid/support/v7/app/AppCompatDelegateImpl$f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegateImpl;->t:Z

    .line 119
    new-array v0, v1, [I

    const v3, 0x1010054

    aput v3, v0, v2

    sput-object v0, Landroid/support/v7/app/AppCompatDelegateImpl;->u:[I

    .line 128
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImpl;->t:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImpl;->v:Z

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 132
    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImpl$1;

    invoke-direct {v2, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 157
    sput-boolean v1, Landroid/support/v7/app/AppCompatDelegateImpl;->v:Z

    .line 159
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 116
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-direct {p0}, Landroid/support/v7/app/d;-><init>()V

    .line 180
    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->k:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->A:Z

    .line 215
    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->L:I

    .line 223
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->O:Ljava/lang/Runnable;

    .line 245
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    .line 247
    iput-object p3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->e:Landroid/support/v7/app/c;

    .line 249
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    .line 250
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$c;

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$c;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl$c;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->d:Landroid/view/Window$Callback;

    .line 256
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->d:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 258
    sget-object v0, Landroid/support/v7/app/AppCompatDelegateImpl;->u:[I

    invoke-static {p1, v2, v0}, Landroid/support/v7/widget/bk;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/bk;

    move-result-object v0

    .line 260
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bk;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_1

    .line 262
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->a()V

    .line 265
    return-void
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v9, 0x1

    const/4 v2, -0x2

    .line 1329
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->q:Z

    if-eqz v0, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    if-nez v0, :cond_2

    .line 1336
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1337
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    move v0, v9

    .line 1339
    :goto_1
    if-nez v0, :cond_0

    .line 1344
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->h()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1345
    if-eqz v0, :cond_4

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1347
    invoke-virtual {p0, p1, v9}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1337
    goto :goto_1

    .line 1351
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1352
    if-eqz v8, :cond_0

    .line 1357
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->b(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    if-eqz v0, :cond_b

    .line 1363
    :cond_5
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 1365
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1373
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->c(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1378
    if-nez v0, :cond_d

    .line 1379
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 1382
    :goto_3
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->b:I

    .line 1383
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1385
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1386
    if-eqz v0, :cond_7

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 1387
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1389
    :cond_7
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1395
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1396
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_8
    move v1, v2

    .line 1407
    :cond_9
    :goto_4
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 1409
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->d:I

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1416
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1417
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1419
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    iput-boolean v9, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    goto/16 :goto_0

    .line 1367
    :cond_a
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1369
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_2

    .line 1398
    :cond_b
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1401
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1402
    if-eqz v0, :cond_c

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_9

    :cond_c
    move v1, v2

    goto :goto_4

    :cond_d
    move-object v1, v0

    goto :goto_3
.end method

.method private a(Landroid/support/v7/view/menu/h;Z)V
    .locals 6

    .prologue
    const/16 v5, 0x6c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1431
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    .line 1432
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    .line 1433
    invoke-interface {v0}, Landroid/support/v7/widget/ag;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1435
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->h()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1437
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v1}, Landroid/support/v7/widget/ag;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_4

    .line 1438
    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->q:Z

    if-nez v1, :cond_3

    .line 1440
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->r:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->s:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1442
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->O:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1443
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->O:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1446
    :cond_2
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v1

    .line 1450
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    .line 1451
    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1452
    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1453
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->h()Z

    .line 1472
    :cond_3
    :goto_0
    return-void

    .line 1457
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v1}, Landroid/support/v7/widget/ag;->i()Z

    .line 1458
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->q:Z

    if-nez v1, :cond_3

    .line 1459
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v1

    .line 1460
    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1466
    :cond_5
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 1468
    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    .line 1469
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 1471
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .locals 2

    .prologue
    .line 1424
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a(Landroid/content/Context;)V

    .line 1425
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$e;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl$e;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    .line 1426
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->c:I

    .line 1427
    const/4 v0, 0x1

    return v0
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1815
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1835
    :cond_0
    :goto_0
    return v0

    .line 1823
    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImpl;->b(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_3

    .line 1825
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/view/menu/h;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1828
    :cond_3
    if-eqz v0, :cond_0

    .line 1830
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-nez v1, :cond_0

    .line 1831
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1274
    if-nez p1, :cond_0

    move v0, v2

    .line 1292
    :goto_0
    return v0

    .line 1278
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v1, p1

    .line 1280
    :goto_1
    if-nez v1, :cond_1

    .line 1285
    const/4 v0, 0x1

    goto :goto_0

    .line 1286
    :cond_1
    if-eq v1, v3, :cond_2

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 1287
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 1292
    goto :goto_0

    .line 1294
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1475
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    .line 1478
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v0, :cond_4

    .line 1480
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1481
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1482
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v0, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1484
    const/4 v0, 0x0

    .line 1485
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3

    .line 1486
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1487
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1488
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1489
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1496
    :goto_0
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 1497
    if-nez v0, :cond_1

    .line 1498
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1499
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1501
    :cond_1
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    move-object v2, v0

    .line 1504
    if-eqz v2, :cond_4

    .line 1505
    new-instance v0, Landroid/support/v7/view/d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 1506
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1510
    :goto_1
    new-instance v1, Landroid/support/v7/view/menu/h;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    .line 1511
    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    .line 1512
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a(Landroid/support/v7/view/menu/h;)V

    .line 1514
    return v5

    .line 1492
    :cond_3
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1539
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->q:Z

    if-eqz v0, :cond_1

    .line 1639
    :cond_0
    :goto_0
    return v2

    .line 1544
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-eqz v0, :cond_2

    move v2, v1

    .line 1545
    goto :goto_0

    .line 1548
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eq v0, p1, :cond_3

    .line 1550
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 1553
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->h()Landroid/view/Window$Callback;

    move-result-object v3

    .line 1555
    if-eqz v3, :cond_4

    .line 1556
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    .line 1559
    :cond_4
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    const/16 v4, 0x6c

    if-ne v0, v4, :cond_c

    :cond_5
    move v0, v1

    .line 1562
    :goto_1
    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v4, :cond_6

    .line 1565
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v4}, Landroid/support/v7/widget/ag;->j()V

    .line 1568
    :cond_6
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    if-nez v4, :cond_12

    if-eqz v0, :cond_7

    .line 1569
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->g()Landroid/support/v7/app/a;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/app/g;

    if-nez v4, :cond_12

    .line 1572
    :cond_7
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    if-eqz v4, :cond_e

    .line 1573
    :cond_8
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-nez v4, :cond_9

    .line 1574
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->b(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-eqz v4, :cond_0

    .line 1579
    :cond_9
    if-eqz v0, :cond_b

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v4, :cond_b

    .line 1580
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->y:Landroid/support/v7/app/AppCompatDelegateImpl$a;

    if-nez v4, :cond_a

    .line 1581
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImpl$a;

    invoke-direct {v4, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$a;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->y:Landroid/support/v7/app/AppCompatDelegateImpl$a;

    .line 1583
    :cond_a
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->y:Landroid/support/v7/app/AppCompatDelegateImpl$a;

    invoke-interface {v4, v5, v6}, Landroid/support/v7/widget/ag;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    .line 1588
    :cond_b
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->h()V

    .line 1589
    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1591
    invoke-virtual {p1, v7}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a(Landroid/support/v7/view/menu/h;)V

    .line 1593
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->y:Landroid/support/v7/app/AppCompatDelegateImpl$a;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/ag;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 1559
    goto :goto_1

    .line 1601
    :cond_d
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    .line 1606
    :cond_e
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->h()V

    .line 1610
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_f

    .line 1611
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/h;->d(Landroid/os/Bundle;)V

    .line 1612
    iput-object v7, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1616
    :cond_f
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-interface {v3, v2, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1617
    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v0, :cond_10

    .line 1620
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->y:Landroid/support/v7/app/AppCompatDelegateImpl$a;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/ag;->a(Landroid/view/Menu;Landroid/support/v7/view/menu/o$a;)V

    .line 1622
    :cond_10
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->i()V

    goto/16 :goto_0

    .line 1627
    :cond_11
    if-eqz p2, :cond_13

    .line 1628
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 1627
    :goto_2
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1629
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_14

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->p:Z

    .line 1630
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->p:Z

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/h;->setQwertyMode(Z)V

    .line 1631
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->i()V

    .line 1635
    :cond_12
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 1636
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 1637
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move v2, v1

    .line 1639
    goto/16 :goto_0

    .line 1628
    :cond_13
    const/4 v0, -0x1

    goto :goto_2

    :cond_14
    move v0, v2

    .line 1629
    goto :goto_3
.end method

.method private c(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1518
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->i:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    .line 1535
    :goto_0
    return v1

    .line 1523
    :cond_0
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_1

    move v1, v2

    .line 1524
    goto :goto_0

    .line 1527
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->z:Landroid/support/v7/app/AppCompatDelegateImpl$f;

    if-nez v0, :cond_2

    .line 1528
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$f;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$f;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->z:Landroid/support/v7/app/AppCompatDelegateImpl$f;

    .line 1531
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->z:Landroid/support/v7/app/AppCompatDelegateImpl$f;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a(Landroid/support/v7/view/menu/o$a;)Landroid/support/v7/view/menu/p;

    move-result-object v0

    .line 1533
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    .line 1535
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1693
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1694
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 1695
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez v1, :cond_0

    .line 1696
    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->b(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1700
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1704
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1753
    :goto_0
    return v0

    .line 1709
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v3

    .line 1710
    if-nez p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    .line 1711
    invoke-interface {v0}, Landroid/support/v7/widget/ag;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    .line 1712
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1713
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1714
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->q:Z

    if-nez v0, :cond_7

    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->b(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1715
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->h()Z

    move-result v2

    .line 1744
    :goto_1
    if-eqz v2, :cond_1

    .line 1745
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1747
    if-eqz v0, :cond_6

    .line 1748
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    :goto_2
    move v0, v2

    .line 1753
    goto :goto_0

    .line 1718
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->i()Z

    move-result v2

    goto :goto_1

    .line 1721
    :cond_3
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez v0, :cond_4

    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    if-eqz v0, :cond_5

    .line 1724
    :cond_4
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    .line 1726
    invoke-virtual {p0, v3, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    move v2, v0

    goto :goto_1

    .line 1727
    :cond_5
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    if-eqz v0, :cond_7

    .line 1729
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    if-eqz v0, :cond_8

    .line 1732
    iput-boolean v1, v3, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 1733
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->b(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1736
    :goto_3
    if-eqz v0, :cond_7

    .line 1738
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 1750
    :cond_6
    const-string v0, "AppCompatDelegate"

    const-string v1, "Couldn\'t get audio manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private j(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1839
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->s:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->s:I

    .line 1841
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->r:Z

    if-nez v0, :cond_0

    .line 1842
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->O:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1843
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->r:Z

    .line 1845
    :cond_0
    return-void
.end method

.method private k(I)I
    .locals 2

    .prologue
    .line 1958
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1959
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    const/16 p1, 0x6c

    .line 1968
    :cond_0
    :goto_0
    return p1

    .line 1962
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1963
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const/16 p1, 0x6d

    goto :goto_0
.end method

.method private l(I)Z
    .locals 5

    .prologue
    .line 2074
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2075
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 2076
    iget v0, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v0, 0x30

    .line 2078
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 v0, 0x20

    .line 2082
    :goto_0
    if-eq v3, v0, :cond_3

    .line 2083
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->w()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2089
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2090
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 2107
    :cond_0
    :goto_1
    const/4 v0, 0x1

    .line 2113
    :goto_2
    return v0

    .line 2078
    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    .line 2095
    :cond_2
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2096
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 2099
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, -0x31

    or-int/2addr v0, v4

    iput v0, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 2100
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    .line 2104
    invoke-static {v1}, Landroid/support/v7/app/f;->a(Landroid/content/res/Resources;)V

    goto :goto_1

    .line 2113
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private p()V
    .locals 3

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->q()V

    .line 321
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->f:Landroid/support/v7/app/a;

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 326
    new-instance v1, Landroid/support/v7/app/j;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->m:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/j;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->f:Landroid/support/v7/app/a;

    .line 331
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->f:Landroid/support/v7/app/a;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->f:Landroid/support/v7/app/a;

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->P:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->c(Z)V

    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 329
    new-instance v1, Landroid/support/v7/app/j;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/app/j;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->f:Landroid/support/v7/app/a;

    goto :goto_1
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 517
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->B:Z

    if-nez v0, :cond_2

    .line 518
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->r()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    .line 521
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->j()Ljava/lang/CharSequence;

    move-result-object v0

    .line 522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v1, :cond_3

    .line 524
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ag;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 532
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->s()V

    .line 534
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/view/ViewGroup;)V

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->B:Z

    .line 543
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 544
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->q:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_2

    .line 545
    :cond_1
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->j(I)V

    .line 548
    :cond_2
    return-void

    .line 525
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->g()Landroid/support/v7/app/a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 526
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->g()Landroid/support/v7/app/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->D:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private r()Landroid/view/ViewGroup;
    .locals 8

    .prologue
    const v7, 0x1020002

    const/16 v6, 0x6d

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 551
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 553
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 555
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 560
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImpl;->c(I)Z

    .line 565
    :cond_1
    :goto_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    invoke-virtual {p0, v6}, Landroid/support/v7/app/AppCompatDelegateImpl;->c(I)Z

    .line 568
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 569
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->c(I)Z

    .line 571
    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->o:Z

    .line 572
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 575
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 577
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 581
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->p:Z

    if-nez v1, :cond_a

    .line 582
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->o:Z

    if-eqz v1, :cond_5

    .line 584
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 588
    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->m:Z

    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->l:Z

    move-object v2, v0

    .line 669
    :goto_1
    if-nez v2, :cond_d

    .line 670
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_4
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->c(I)Z

    goto/16 :goto_0

    .line 589
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->l:Z

    if-eqz v0, :cond_11

    .line 595
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 596
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 599
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    .line 600
    new-instance v0, Landroid/support/v7/view/d;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 606
    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    .line 607
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 609
    sget v1, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    .line 610
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ag;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    .line 611
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->h()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/ag;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 616
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->m:Z

    if-eqz v1, :cond_6

    .line 617
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v1, v6}, Landroid/support/v7/widget/ag;->a(I)V

    .line 619
    :cond_6
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->F:Z

    if-eqz v1, :cond_7

    .line 620
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/ag;->a(I)V

    .line 622
    :cond_7
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->G:Z

    if-eqz v1, :cond_8

    .line 623
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/support/v7/widget/ag;->a(I)V

    :cond_8
    move-object v2, v0

    .line 625
    goto/16 :goto_1

    .line 602
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    goto :goto_2

    .line 627
    :cond_a
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->n:Z

    if-eqz v1, :cond_b

    .line 628
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 634
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    .line 637
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$3;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 631
    :cond_b
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 659
    check-cast v0, Landroid/support/v7/widget/am;

    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImpl$4;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-interface {v0, v2}, Landroid/support/v7/widget/am;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/am$a;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 680
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-nez v0, :cond_e

    .line 681
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->D:Landroid/widget/TextView;

    .line 685
    :cond_e
    invoke-static {v2}, Landroid/support/v7/widget/bs;->b(Landroid/view/View;)V

    .line 687
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 690
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 691
    if-eqz v1, :cond_10

    .line 694
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    .line 695
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 696
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 697
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 702
    :cond_f
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 703
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 707
    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_10

    .line 708
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 713
    :cond_10
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 715
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$5;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$a;)V

    .line 725
    return-object v2

    :cond_11
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private s()V
    .locals 5

    .prologue
    .line 731
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 737
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 739
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 740
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 738
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/ContentFrameLayout;->a(IIII)V

    .line 742
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 743
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 744
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 746
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 748
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 747
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 750
    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 751
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 752
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 751
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 754
    :cond_1
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 755
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 756
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 755
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 758
    :cond_2
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 759
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 760
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 759
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 762
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 764
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 765
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 1951
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->B:Z

    if-eqz v0, :cond_0

    .line 1952
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1955
    :cond_0
    return-void
.end method

.method private u()I
    .locals 2

    .prologue
    .line 2066
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->L:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->L:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegateImpl;->e()I

    move-result v0

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 2117
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->N:Landroid/support/v7/app/AppCompatDelegateImpl$d;

    if-nez v0, :cond_0

    .line 2118
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$d;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/i;->a(Landroid/content/Context;)Landroid/support/v7/app/i;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl$d;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/app/i;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->N:Landroid/support/v7/app/AppCompatDelegateImpl$d;

    .line 2120
    :cond_0
    return-void
.end method

.method private w()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2129
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->M:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 2132
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2134
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    .line 2135
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    .line 2134
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 2138
    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_0

    .line 2146
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2138
    goto :goto_0

    .line 2139
    :catch_0
    move-exception v1

    .line 2142
    const-string v2, "AppCompatDelegate"

    const-string v3, "Exception while getting ActivityInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2146
    goto :goto_0
.end method


# virtual methods
.method protected a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1798
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->I:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1799
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 1800
    if-eqz v0, :cond_1

    .line 1801
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1803
    :cond_1
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->I:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-object v0, v1

    .line 1806
    :cond_2
    aget-object v1, v0, p1

    .line 1807
    if-nez v1, :cond_3

    .line 1808
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1810
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1785
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->I:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    .line 1786
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1787
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1788
    aget-object v1, v3, v2

    .line 1789
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1793
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1786
    goto :goto_0

    .line 1787
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1793
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 3
    .param p1    # Landroid/support/v7/view/b$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 901
    if-nez p1, :cond_0

    .line 902
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    .line 909
    :cond_1
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$b;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/view/b$a;)V

    .line 911
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->f()Landroid/support/v7/app/a;

    move-result-object v1

    .line 912
    if-eqz v1, :cond_2

    .line 913
    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    .line 914
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->e:Landroid/support/v7/app/c;

    if-eqz v1, :cond_2

    .line 915
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->e:Landroid/support/v7/app/c;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    invoke-interface {v1, v2}, Landroid/support/v7/app/c;->a(Landroid/support/v7/view/b;)V

    .line 919
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    if-nez v1, :cond_3

    .line 921
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    .line 924
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 403
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->q()V

    .line 404
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1234
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->S:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v0, :cond_1

    .line 1235
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1236
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_viewInflaterClass:I

    .line 1237
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1238
    if-eqz v2, :cond_0

    const-class v0, Landroid/support/v7/app/AppCompatViewInflater;

    .line 1239
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1242
    :cond_0
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->S:Landroid/support/v7/app/AppCompatViewInflater;

    .line 1258
    :cond_1
    :goto_0
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImpl;->t:Z

    if-eqz v0, :cond_5

    .line 1259
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_4

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 1261
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v7, :cond_3

    move v0, v7

    :goto_1
    move v5, v0

    .line 1266
    :goto_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->S:Landroid/support/v7/app/AppCompatViewInflater;

    sget-boolean v6, Landroid/support/v7/app/AppCompatDelegateImpl;->t:Z

    .line 1269
    invoke-static {}, Landroid/support/v7/widget/bp;->a()Z

    move-result v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1266
    invoke-virtual/range {v0 .. v8}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1245
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1246
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 1247
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1248
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatViewInflater;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->S:Landroid/support/v7/app/AppCompatViewInflater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    const-string v3, "AppCompatDelegate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to instantiate custom view inflater "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Falling back to default."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->S:Landroid/support/v7/app/AppCompatViewInflater;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1261
    goto :goto_1

    :cond_4
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 1263
    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/view/ViewParent;)Z

    move-result v0

    goto :goto_1

    :cond_5
    move v5, v1

    goto :goto_2
.end method

.method public a()V
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->f()Landroid/support/v7/app/a;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 438
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->d(Z)V

    .line 442
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->N:Landroid/support/v7/app/AppCompatDelegateImpl$d;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->N:Landroid/support/v7/app/AppCompatDelegateImpl$d;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$d;->d()V

    .line 445
    :cond_1
    return-void
.end method

.method a(ILandroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1758
    if-nez p3, :cond_1

    .line 1760
    if-nez p2, :cond_0

    .line 1761
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->I:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1762
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->I:[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1766
    :cond_0
    if-eqz p2, :cond_1

    .line 1768
    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    .line 1773
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-nez v0, :cond_3

    .line 1782
    :cond_2
    :goto_0
    return-void

    .line 1776
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->q:Z

    if-nez v0, :cond_2

    .line 1780
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, -0x64

    .line 269
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 270
    const/4 v1, 0x0

    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    :goto_0
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->g()Landroid/support/v7/app/a;

    move-result-object v0

    .line 280
    if-nez v0, :cond_2

    .line 281
    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->P:Z

    .line 288
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->L:I

    if-ne v0, v2, :cond_1

    .line 291
    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->L:I

    .line 294
    :cond_1
    return-void

    .line 274
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {v0, v3}, Landroid/support/v7/app/a;->c(Z)V

    goto :goto_1
.end method

.method a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1661
    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    .line 1662
    invoke-interface {v0}, Landroid/support/v7/widget/ag;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1663
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->b(Landroid/support/v7/view/menu/h;)V

    .line 1690
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1668
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1669
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1671
    if-eqz p2, :cond_2

    .line 1672
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-virtual {p0, v0, p1, v3}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(ILandroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V

    .line 1676
    :cond_2
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 1677
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    .line 1678
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    .line 1681
    iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->h:Landroid/view/View;

    .line 1685
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    .line 1687
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-ne v0, p1, :cond_0

    .line 1688
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/h;)V
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/view/menu/h;Z)V

    .line 897
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 457
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->q()V

    .line 458
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 459
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 460
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 461
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 462
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 475
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->q()V

    .line 476
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 477
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 478
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 480
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 728
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 837
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->w:Ljava/lang/CharSequence;

    .line 839
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ag;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->g()Landroid/support/v7/app/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 842
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->g()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 843
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->D:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1128
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->f()Landroid/support/v7/app/a;

    move-result-object v2

    .line 1129
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/app/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return v0

    .line 1135
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v2, :cond_2

    .line 1136
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 1138
    if-eqz v2, :cond_2

    .line 1139
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v1, :cond_0

    .line 1140
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    iput-boolean v0, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->n:Z

    goto :goto_0

    .line 1150
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->J:Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    if-nez v2, :cond_3

    .line 1151
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v2

    .line 1152
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->b(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1153
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 1154
    iput-boolean v1, v2, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 1155
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 1159
    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 884
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->h()Landroid/view/Window$Callback;

    move-result-object v0

    .line 885
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->q:Z

    if-nez v1, :cond_0

    .line 886
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->q()Landroid/support/v7/view/menu/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v1

    .line 887
    if-eqz v1, :cond_0

    .line 888
    iget v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 891
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1165
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/support/v4/view/KeyEventDispatcher$Component;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/support/v7/app/e;

    if-eqz v1, :cond_2

    .line 1167
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1168
    if-eqz v1, :cond_2

    invoke-static {v1, p1}, Landroid/support/v4/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1184
    :cond_1
    :goto_0
    return v0

    .line 1173
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_3

    .line 1175
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1180
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1182
    if-nez v2, :cond_4

    .line 1184
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1182
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1184
    :cond_5
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 8
    .param p1    # Landroid/support/v7/view/b$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 936
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->m()V

    .line 937
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    .line 941
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/AppCompatDelegateImpl$b;

    if-nez v0, :cond_1

    .line 943
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$b;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/support/v7/view/b$a;)V

    move-object p1, v0

    .line 947
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->e:Landroid/support/v7/app/c;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->q:Z

    if-nez v0, :cond_c

    .line 949
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->e:Landroid/support/v7/app/c;

    invoke-interface {v0, p1}, Landroid/support/v7/app/c;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 955
    :goto_0
    if-eqz v0, :cond_4

    .line 956
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    .line 1081
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->e:Landroid/support/v7/app/c;

    if-eqz v0, :cond_3

    .line 1082
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->e:Landroid/support/v7/app/c;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    invoke-interface {v0, v1}, Landroid/support/v7/app/c;->a(Landroid/support/v7/view/b;)V

    .line 1084
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    return-object v0

    .line 950
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    .line 958
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v0, :cond_5

    .line 959
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->o:Z

    if-eqz v0, :cond_8

    .line 961
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 962
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 963
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 966
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_7

    .line 967
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 968
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 969
    iget v0, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 971
    new-instance v0, Landroid/support/v7/view/d;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-direct {v0, v6, v2}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 972
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 977
    :goto_2
    new-instance v5, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    .line 978
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v5, v0, v3, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    .line 980
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 982
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 983
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 985
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 987
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 988
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 987
    invoke-static {v4, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 989
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 990
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 991
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImpl$6;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$6;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->j:Ljava/lang/Runnable;

    .line 1032
    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    .line 1033
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->m()V

    .line 1034
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->c()V

    .line 1035
    new-instance v4, Landroid/support/v7/view/e;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    if-nez v0, :cond_9

    move v0, v1

    :goto_4
    invoke-direct {v4, v5, v6, p1, v0}, Landroid/support/v7/view/e;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/b$a;Z)V

    .line 1037
    invoke-virtual {v4}, Landroid/support/v7/view/b;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Landroid/support/v7/view/b$a;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1038
    invoke-virtual {v4}, Landroid/support/v7/view/b;->d()V

    .line 1039
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContextView;->a(Landroid/support/v7/view/b;)V

    .line 1040
    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    .line 1042
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1043
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 1044
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->k:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1045
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->k:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImpl$7;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImpl$7;-><init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1073
    :cond_6
    :goto_5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1074
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 974
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    goto/16 :goto_2

    .line 1022
    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    sget v4, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    .line 1023
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    .line 1024
    if-eqz v0, :cond_5

    .line 1026
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->i()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 1027
    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 1035
    goto :goto_4

    .line 1064
    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 1065
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1068
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1069
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_5

    .line 1077
    :cond_b
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    goto/16 :goto_1

    :cond_c
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->f()Landroid/support/v7/app/a;

    move-result-object v0

    .line 930
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 932
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->j(I)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 466
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->q()V

    .line 467
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 468
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 469
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 470
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 471
    return-void
.end method

.method b(Landroid/support/v7/view/menu/h;)V
    .locals 2

    .prologue
    .line 1643
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->H:Z

    if-eqz v0, :cond_0

    .line 1654
    :goto_0
    return-void

    .line 1647
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->H:Z

    .line 1648
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->k()V

    .line 1649
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->h()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1650
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->q:Z

    if-nez v1, :cond_1

    .line 1651
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1653
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->H:Z

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 484
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->q()V

    .line 485
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 486
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 488
    return-void
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1188
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 1211
    :cond_1
    :goto_0
    return v0

    .line 1190
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->e(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 1193
    :sswitch_1
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->K:Z

    .line 1194
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->K:Z

    .line 1196
    invoke-virtual {p0, v1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v3

    .line 1197
    if-eqz v3, :cond_2

    iget-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-eqz v4, :cond_2

    .line 1198
    if-nez v2, :cond_1

    .line 1202
    invoke-virtual {p0, v3, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_0

    .line 1206
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1188
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1300
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1302
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl;

    if-nez v0, :cond_0

    .line 1305
    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 769
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->k(I)I

    move-result v2

    .line 771
    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->p:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_0

    .line 806
    :goto_0
    return v0

    .line 774
    :cond_0
    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->l:Z

    if-eqz v3, :cond_1

    if-ne v2, v1, :cond_1

    .line 776
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->l:Z

    .line 779
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 806
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_0

    .line 781
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->t()V

    .line 782
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->l:Z

    move v0, v1

    .line 783
    goto :goto_0

    .line 785
    :sswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->t()V

    .line 786
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->m:Z

    move v0, v1

    .line 787
    goto :goto_0

    .line 789
    :sswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->t()V

    .line 790
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->n:Z

    move v0, v1

    .line 791
    goto :goto_0

    .line 793
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->t()V

    .line 794
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->F:Z

    move v0, v1

    .line 795
    goto :goto_0

    .line 797
    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->t()V

    .line 798
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->G:Z

    move v0, v1

    .line 799
    goto :goto_0

    .line 801
    :sswitch_5
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->t()V

    .line 802
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->p:Z

    move v0, v1

    .line 803
    goto :goto_0

    .line 779
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1215
    sparse-switch p1, :sswitch_data_0

    :goto_0
    move v0, v1

    .line 1228
    :goto_1
    return v0

    .line 1217
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->d(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 1225
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    :goto_2
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->K:Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_2

    .line 1215
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method d(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 858
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    .line 859
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->f()Landroid/support/v7/app/a;

    move-result-object v0

    .line 860
    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->e(Z)V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    if-nez p1, :cond_0

    .line 866
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 867
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->o:Z

    if-eqz v1, :cond_0

    .line 868
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 2002
    const/4 v0, 0x0

    .line 2004
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->u()I

    move-result v1

    .line 2005
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->i(I)I

    move-result v2

    .line 2006
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2007
    invoke-direct {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->l(I)Z

    move-result v0

    .line 2010
    :cond_0
    if-nez v1, :cond_1

    .line 2012
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->v()V

    .line 2013
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->N:Landroid/support/v7/app/AppCompatDelegateImpl$d;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImpl$d;->c()V

    .line 2016
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->M:Z

    .line 2017
    return v0
.end method

.method e(I)V
    .locals 2

    .prologue
    .line 874
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    .line 875
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->f()Landroid/support/v7/app/a;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_0

    .line 877
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->e(Z)V

    .line 880
    :cond_0
    return-void
.end method

.method public f()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->p()V

    .line 307
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->f:Landroid/support/v7/app/a;

    return-object v0
.end method

.method f(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1657
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 1658
    return-void
.end method

.method final g()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->f:Landroid/support/v7/app/a;

    return-object v0
.end method

.method g(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1848
    invoke-virtual {p0, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 1850
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_1

    .line 1851
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1852
    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/h;->c(Landroid/os/Bundle;)V

    .line 1853
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1854
    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1857
    :cond_0
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->h()V

    .line 1858
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->clear()V

    .line 1860
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->r:Z

    .line 1861
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->q:Z

    .line 1864
    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v0, :cond_3

    .line 1866
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 1867
    if-eqz v0, :cond_3

    .line 1868
    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->m:Z

    .line 1869
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->b(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1872
    :cond_3
    return-void
.end method

.method h(I)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1881
    .line 1883
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 1884
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 1885
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    .line 1886
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1889
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1890
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->Q:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 1891
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->Q:Landroid/graphics/Rect;

    .line 1892
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->R:Landroid/graphics/Rect;

    .line 1894
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->Q:Landroid/graphics/Rect;

    .line 1895
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->R:Landroid/graphics/Rect;

    .line 1896
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1898
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/widget/bs;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1899
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 1900
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 1902
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1904
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->E:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1905
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->E:Landroid/view/View;

    .line 1906
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->E:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 1907
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1906
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1908
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->E:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 1922
    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->E:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 1928
    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->n:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v4, v3

    .line 1938
    :goto_3
    if-eqz v1, :cond_2

    .line 1939
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->h:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v4

    .line 1943
    :goto_4
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->E:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1944
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->E:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1947
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 1899
    goto :goto_0

    .line 1912
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->E:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1913
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 1914
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1915
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->E:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 1922
    goto :goto_2

    .line 1933
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 1935
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v3

    move v4, v2

    goto :goto_3

    .line 1944
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v1, v2

    move v4, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method final h()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method i(I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 2044
    sparse-switch p1, :sswitch_data_0

    .line 2060
    :goto_0
    return p1

    .line 2046
    :sswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 2047
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    const-class v2, Landroid/app/UiModeManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 2048
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-nez v0, :cond_0

    move p1, v1

    .line 2051
    goto :goto_0

    .line 2054
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->v()V

    .line 2055
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->N:Landroid/support/v7/app/AppCompatDelegateImpl$d;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl$d;->a()I

    move-result p1

    goto :goto_0

    :sswitch_1
    move p1, v1

    .line 2058
    goto :goto_0

    .line 2044
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method final i()Landroid/content/Context;
    .locals 2

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 377
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->f()Landroid/support/v7/app/a;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v1}, Landroid/support/v7/app/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 382
    :cond_0
    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->a:Landroid/content/Context;

    .line 385
    :cond_1
    return-object v0
.end method

.method final j()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 854
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->w:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method final k()Z
    .locals 1

    .prologue
    .line 1090
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->C:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 1100
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->A:Z

    return v0
.end method

.method m()V
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->k:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->k:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 1107
    :cond_0
    return-void
.end method

.method n()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1111
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    if-eqz v1, :cond_1

    .line 1112
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->g:Landroid/support/v7/view/b;

    invoke-virtual {v1}, Landroid/support/v7/view/b;->c()V

    .line 1123
    :cond_0
    :goto_0
    return v0

    .line 1117
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->f()Landroid/support/v7/app/a;

    move-result-object v1

    .line 1118
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/app/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1976
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->x:Landroid/support/v7/widget/ag;

    invoke-interface {v0}, Landroid/support/v7/widget/ag;->k()V

    .line 1980
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1981
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1982
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1984
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1990
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl;->i:Landroid/widget/PopupWindow;

    .line 1992
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl;->m()V

    .line 1994
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    .line 1995
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_3

    .line 1996
    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->j:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->close()V

    .line 1998
    :cond_3
    return-void

    .line 1985
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1316
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImpl;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1324
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
