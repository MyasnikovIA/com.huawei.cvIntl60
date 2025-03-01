.class public Lui_Controller/ui_StartMode/UI_ModeMain;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui_Controller/ui_StartMode/UI_ModeMain$a;
    }
.end annotation


# static fields
.field private static w:Landroid/content/Context;


# instance fields
.field private A:Z

.field private B:Landroid/content/BroadcastReceiver;

.field private C:Landroid/content/BroadcastReceiver;

.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/SharedPreferences$Editor;

.field public c:Lui_Controller/b/j;

.field public d:La/c/d;

.field public e:LGeneralFunction/d/c;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/Runnable;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/os/HandlerThread;

.field private n:Landroid/os/Handler;

.field private o:LGeneralFunction/h/b;

.field private p:LGeneralFunction/m/a;

.field private q:Lui_Controller/ui_StartMode/c;

.field private r:Lui_Controller/ui_StartMode/b;

.field private s:LGeneralFunction/j/b;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private v:LGeneralFunction/b/a;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/os/Handler;

.field private z:La/c/d$a;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 65
    iput-boolean v3, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->j:Z

    .line 66
    iput-boolean v3, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->k:Z

    .line 67
    iput-boolean v3, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->l:Z

    .line 73
    iput-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->m:Landroid/os/HandlerThread;

    .line 74
    iput-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->n:Landroid/os/Handler;

    .line 75
    iput-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    .line 76
    iput-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->o:LGeneralFunction/h/b;

    .line 77
    iput-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->p:LGeneralFunction/m/a;

    .line 78
    iput-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->e:LGeneralFunction/d/c;

    .line 79
    iput-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->q:Lui_Controller/ui_StartMode/c;

    .line 80
    iput-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->r:Lui_Controller/ui_StartMode/b;

    .line 81
    iput-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->s:LGeneralFunction/j/b;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LGeneralFunction/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AutoDump/cv60config.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->t:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LGeneralFunction/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AutoDump/config.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->u:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->v:LGeneralFunction/b/a;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->x:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Lui_Controller/ui_StartMode/UI_ModeMain$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain$1;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;Landroid/os/Looper;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->y:Landroid/os/Handler;

    .line 407
    new-instance v0, Lui_Controller/ui_StartMode/UI_ModeMain$3;

    invoke-direct {v0, p0}, Lui_Controller/ui_StartMode/UI_ModeMain$3;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->z:La/c/d$a;

    .line 616
    iput-boolean v4, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->f:Z

    .line 617
    iput-boolean v4, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->g:Z

    .line 618
    iput-boolean v3, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->h:Z

    .line 619
    iput-boolean v3, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->A:Z

    .line 806
    new-instance v0, Lui_Controller/ui_StartMode/UI_ModeMain$4;

    invoke-direct {v0, p0}, Lui_Controller/ui_StartMode/UI_ModeMain$4;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->i:Ljava/lang/Runnable;

    .line 1076
    new-instance v0, Lui_Controller/ui_StartMode/UI_ModeMain$5;

    invoke-direct {v0, p0}, Lui_Controller/ui_StartMode/UI_ModeMain$5;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->B:Landroid/content/BroadcastReceiver;

    .line 1108
    new-instance v0, Lui_Controller/ui_StartMode/UI_ModeMain$6;

    invoke-direct {v0, p0}, Lui_Controller/ui_StartMode/UI_ModeMain$6;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->C:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private A()V
    .locals 1

    .prologue
    .line 320
    new-instance v0, LGeneralFunction/d/c;

    invoke-direct {v0, p0}, LGeneralFunction/d/c;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->e:LGeneralFunction/d/c;

    .line 321
    return-void
.end method

.method private B()V
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lui_Controller/ui_StartMode/c;

    invoke-direct {v0, p0}, Lui_Controller/ui_StartMode/c;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->q:Lui_Controller/ui_StartMode/c;

    .line 332
    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 356
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AidServer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->m:Landroid/os/HandlerThread;

    .line 357
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 358
    new-instance v0, Lui_Controller/ui_StartMode/UI_ModeMain$2;

    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain$2;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;Landroid/os/Looper;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->n:Landroid/os/Handler;

    .line 374
    return-void
.end method

.method private D()V
    .locals 2

    .prologue
    .line 419
    new-instance v0, La/c/d;

    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->z:La/c/d$a;

    invoke-direct {v0, p0, v1}, La/c/d;-><init>(Landroid/content/Context;La/c/d$a;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    .line 420
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->a()V

    .line 421
    return-void
.end method

.method private E()V
    .locals 1

    .prologue
    .line 503
    new-instance v0, LGeneralFunction/m/a;

    invoke-direct {v0, p0}, LGeneralFunction/m/a;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->p:LGeneralFunction/m/a;

    .line 504
    return-void
.end method

.method private F()V
    .locals 1

    .prologue
    .line 530
    new-instance v0, LGeneralFunction/j/b;

    invoke-direct {v0, p0}, LGeneralFunction/j/b;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->s:LGeneralFunction/j/b;

    .line 531
    return-void
.end method

.method private G()V
    .locals 2

    .prologue
    .line 786
    sget-object v0, Lui_Controller/a/c;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;)V

    .line 787
    sget-object v0, Lui_Controller/a/c;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;)V

    .line 789
    const-string v0, "Start Create Database Process"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 790
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->i:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 791
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 792
    return-void
.end method

.method private H()Z
    .locals 3

    .prologue
    .line 796
    .line 797
    invoke-static {p0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 798
    const-string v1, "haveUserInstruction"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private I()V
    .locals 29

    .prologue
    .line 892
    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CV60_Photo_1.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 914
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 915
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2, v5, v4}, LGeneralFunction/e/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 917
    if-nez v2, :cond_0

    .line 919
    const-wide/32 v6, 0x71168c

    .line 920
    const/4 v8, 0x0

    .line 921
    const/4 v9, 0x1

    .line 922
    const/16 v10, 0x1500

    .line 923
    const/16 v11, 0xa80

    .line 924
    const-wide/16 v12, 0x0

    .line 925
    const/16 v18, 0x3e8

    .line 926
    const/16 v19, 0x0

    .line 927
    const-wide/16 v14, 0x0

    .line 928
    const-wide/16 v16, 0x0

    .line 929
    const/16 v25, 0x1

    .line 930
    const/16 v26, 0x1

    .line 931
    const/16 v27, 0x0

    .line 932
    const/16 v28, 0x0

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v3, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v3 .. v28}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZZZ)V

    .line 942
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CV60_Photo_2.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 943
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 944
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2, v5, v4}, LGeneralFunction/e/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 946
    if-nez v2, :cond_1

    .line 948
    const-wide/32 v6, 0x6bee01

    .line 949
    const/4 v8, 0x0

    .line 950
    const/4 v9, 0x1

    .line 951
    const/16 v10, 0x1500

    .line 952
    const/16 v11, 0xa80

    .line 953
    const-wide/16 v12, 0x0

    .line 954
    const/16 v18, 0x3e9

    .line 955
    const/16 v19, 0x0

    .line 956
    const-wide/16 v14, 0x0

    .line 957
    const-wide/16 v16, 0x0

    .line 958
    const/16 v25, 0x1

    .line 959
    const/16 v26, 0x1

    .line 960
    const/16 v27, 0x0

    .line 961
    const/16 v28, 0x0

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v3, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v3 .. v28}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZZZ)V

    .line 971
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CV60_Photo_3.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 972
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 973
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2, v5, v4}, LGeneralFunction/e/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 975
    if-nez v2, :cond_2

    .line 977
    const-wide/32 v6, 0x7e775a

    .line 978
    const/4 v8, 0x0

    .line 979
    const/4 v9, 0x1

    .line 980
    const/16 v10, 0x1500

    .line 981
    const/16 v11, 0xa80

    .line 982
    const-wide/16 v12, 0x0

    .line 983
    const/16 v18, 0x3ea

    .line 984
    const/16 v19, 0x0

    .line 985
    const-wide/16 v14, 0x0

    .line 986
    const-wide/16 v16, 0x0

    .line 987
    const/16 v25, 0x1

    .line 988
    const/16 v26, 0x1

    .line 989
    const/16 v27, 0x0

    .line 990
    const/16 v28, 0x0

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v3, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v3 .. v28}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZZZ)V

    .line 1000
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lui_Controller/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CV60_Video.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1002
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v2, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    invoke-virtual {v2, v5, v4}, LGeneralFunction/e/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1004
    if-nez v2, :cond_3

    .line 1006
    const-wide/32 v6, 0x617d25

    .line 1007
    const/4 v8, 0x1

    .line 1008
    const/4 v9, 0x1

    .line 1009
    const/16 v10, 0x1500

    .line 1010
    const/16 v11, 0xa80

    .line 1011
    const-wide/16 v12, 0x4

    .line 1012
    const/16 v18, 0x3eb

    .line 1013
    const/16 v19, 0x0

    .line 1014
    const-wide/16 v14, 0x0

    .line 1015
    const-wide/16 v16, 0x0

    .line 1016
    const/16 v25, 0x1

    .line 1017
    const/16 v26, 0x1

    .line 1018
    const/16 v27, 0x0

    .line 1019
    const/16 v28, 0x0

    .line 1021
    move-object/from16 v0, p0

    iget-object v2, v0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v2, v2, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v3, v2, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v3 .. v28}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZZZ)V

    .line 1028
    :cond_3
    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    .line 1061
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1062
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1063
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1064
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1065
    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1067
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1068
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1069
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1070
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1071
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1072
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1073
    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->C:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1074
    return-void
.end method

.method private K()V
    .locals 6

    .prologue
    const v5, 0x7f0a0189

    const/4 v4, 0x0

    .line 1303
    invoke-static {p0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1304
    invoke-static {p0}, LGeneralFunction/n/a;->b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1305
    const-string v2, "appVersionForCheckFisrtTimeAppLaunch"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1306
    invoke-virtual {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1308
    const-string v2, "appVersionForCheckFisrtTimeAppLaunch"

    invoke-virtual {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1309
    const-string v2, "launchAppTime"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1311
    :cond_0
    const-string v2, "launchAppTime"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1313
    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    .line 1315
    add-int/lit8 v0, v0, 0x1

    .line 1317
    :cond_1
    const-string v2, "launchAppTime"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1318
    return-void
.end method

.method static synthetic a(Lui_Controller/ui_StartMode/UI_ModeMain;LGeneralFunction/b/a;)LGeneralFunction/b/a;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->v:LGeneralFunction/b/a;

    return-object p1
.end method

.method static synthetic a(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/m/a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->p:LGeneralFunction/m/a;

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 1038
    if-nez p1, :cond_0

    .line 1040
    const-string v1, "Input file is null"

    invoke-direct {p0, v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 1056
    :goto_0
    return-void

    .line 1043
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1044
    if-eqz v1, :cond_2

    .line 1045
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1046
    new-instance v2, Ljava/io/File;

    aget-object v3, v1, v0

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1048
    invoke-direct {p0, v2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/io/File;)V

    .line 1050
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delete..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 1051
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1054
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delete..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 1055
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1032
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    invoke-direct {p0, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/io/File;)V

    .line 1035
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 91
    const-string v0, "UI_ModeMain"

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method private a(Lui_Controller/b/b;)V
    .locals 1

    .prologue
    .line 451
    new-instance v0, LGeneralFunction/h/b;

    invoke-direct {v0, p0}, LGeneralFunction/h/b;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->o:LGeneralFunction/h/b;

    .line 452
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->o:LGeneralFunction/h/b;

    invoke-virtual {v0, p1}, LGeneralFunction/h/b;->a(Lui_Controller/b/b;)V

    .line 453
    return-void
.end method

.method static synthetic a(Lui_Controller/ui_StartMode/UI_ModeMain;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lui_Controller/ui_StartMode/UI_ModeMain;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->k:Z

    return p1
.end method

.method static synthetic b(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/h/b;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->o:LGeneralFunction/h/b;

    return-object v0
.end method

.method static synthetic c(Lui_Controller/ui_StartMode/UI_ModeMain;)Lui_Controller/ui_StartMode/c;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->q:Lui_Controller/ui_StartMode/c;

    return-object v0
.end method

.method static synthetic d(Lui_Controller/ui_StartMode/UI_ModeMain;)Lui_Controller/ui_StartMode/b;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->r:Lui_Controller/ui_StartMode/b;

    return-object v0
.end method

.method static synthetic e(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/j/b;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->s:LGeneralFunction/j/b;

    return-object v0
.end method

.method static synthetic f(Lui_Controller/ui_StartMode/UI_ModeMain;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lui_Controller/ui_StartMode/UI_ModeMain;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lui_Controller/ui_StartMode/UI_ModeMain;)LGeneralFunction/b/a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->v:LGeneralFunction/b/a;

    return-object v0
.end method

.method static synthetic i(Lui_Controller/ui_StartMode/UI_ModeMain;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->H()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lui_Controller/ui_StartMode/UI_ModeMain;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->I()V

    return-void
.end method

.method public static s()Landroid/content/Context;
    .locals 1

    .prologue
    .line 612
    sget-object v0, Lui_Controller/ui_StartMode/UI_ModeMain;->w:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic y()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lui_Controller/ui_StartMode/UI_ModeMain;->w:Landroid/content/Context;

    return-object v0
.end method

.method private z()V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lui_Controller/ui_StartMode/b;

    invoke-direct {v0, p0}, Lui_Controller/ui_StartMode/b;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->r:Lui_Controller/ui_StartMode/b;

    .line 315
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget v0, v0, Lui_Controller/b/j;->c:I

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput p1, v0, Lui_Controller/b/j;->c:I

    .line 110
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 285
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;J)V

    .line 286
    return-void
.end method

.method public a(ILGeneralFunction/a/a;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput-object p2, v0, Lui_Controller/b/j;->b:LGeneralFunction/a/a;

    .line 115
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iput p1, v0, Lui_Controller/b/j;->c:I

    .line 116
    return-void
.end method

.method public a(ILGeneralFunction/a/a;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->q:Lui_Controller/ui_StartMode/c;

    invoke-virtual {v0, p1, p2, p3}, Lui_Controller/ui_StartMode/c;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method public a(LGeneralFunction/a/a;)V
    .locals 3

    .prologue
    .line 348
    const/16 v0, 0x400

    .line 349
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lui_Controller/ui_Gallery/ui_PhoneGallery/UI_PhoneGalleryController;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    iget-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->q:Lui_Controller/ui_StartMode/c;

    invoke-virtual {v2, v0, p1, v1}, Lui_Controller/ui_StartMode/c;->a(ILGeneralFunction/a/a;Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method public a(La/c/a;)V
    .locals 2

    .prologue
    .line 290
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(La/c/a;J)V

    .line 291
    return-void
.end method

.method public a(La/c/a;J)V
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p1}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Landroid/os/Message;J)V

    .line 296
    return-void
.end method

.method public a(Landroid/os/Message;J)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->y:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 306
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lui_Controller/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->o:LGeneralFunction/h/b;

    invoke-virtual {v0, p1}, LGeneralFunction/h/b;->a(Ljava/util/ArrayList;)V

    .line 483
    return-void
.end method

.method public a(J)Z
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-wide v0, v0, Lui_Controller/b/j;->a:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v6, 0xff00

    .line 247
    .line 248
    new-instance v2, La/c/a;

    invoke-direct {v2, p1}, La/c/a;-><init>(Landroid/os/Message;)V

    .line 249
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 252
    :pswitch_0
    invoke-virtual {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->g()Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    const/16 v3, 0x2f0a

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(IJ)V

    .line 255
    :cond_1
    iget-object v3, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget v3, v3, Lui_Controller/b/j;->c:I

    and-int/2addr v3, v6

    const-string v4, "mode"

    invoke-virtual {v2, v4}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v2, v6

    if-ne v3, v2, :cond_0

    move v0, v1

    .line 260
    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v3, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget v3, v3, Lui_Controller/b/j;->c:I

    and-int/2addr v3, v6

    const-string v4, "mode"

    invoke-virtual {v2, v4}, La/c/a;->b(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v2, v6

    if-ne v3, v2, :cond_0

    move v0, v1

    .line 272
    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x2f02
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public b(IJ)V
    .locals 2

    .prologue
    .line 383
    new-instance v0, La/c/a;

    invoke-direct {v0, p1}, La/c/a;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(La/c/a;J)V

    .line 384
    return-void
.end method

.method public b(J)V
    .locals 7

    .prologue
    .line 132
    const-wide/32 v0, 0xfffffff

    xor-long/2addr v0, p1

    .line 133
    iget-object v2, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-wide v4, v3, Lui_Controller/b/j;->a:J

    and-long/2addr v4, v0

    iput-wide v4, v2, Lui_Controller/b/j;->a:J

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI_DisableKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public b(La/c/a;)V
    .locals 2

    .prologue
    .line 388
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(La/c/a;J)V

    .line 389
    return-void
.end method

.method public b(La/c/a;J)V
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p1}, La/c/a;->b()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lui_Controller/ui_StartMode/UI_ModeMain;->b(Landroid/os/Message;J)V

    .line 394
    return-void
.end method

.method public b(Landroid/os/Message;J)V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->n:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 404
    return-void
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->y:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public c()LGeneralFunction/a/a;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->b:LGeneralFunction/a/a;

    return-object v0
.end method

.method public c(J)V
    .locals 5

    .prologue
    .line 139
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-wide v2, v1, Lui_Controller/b/j;->a:J

    or-long/2addr v2, p1

    iput-wide v2, v0, Lui_Controller/b/j;->a:J

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI_EnableKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method public c(La/c/a;)V
    .locals 2

    .prologue
    .line 425
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    .line 426
    return-void
.end method

.method public c(La/c/a;J)V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0, p1, p2, p3}, La/c/d;->a(La/c/a;J)V

    .line 431
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->o:LGeneralFunction/h/b;

    invoke-virtual {v0}, LGeneralFunction/h/b;->b()V

    .line 488
    return-void
.end method

.method public d(La/c/a;)V
    .locals 2

    .prologue
    .line 457
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->d(La/c/a;J)V

    .line 458
    return-void
.end method

.method public d(La/c/a;J)V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->o:LGeneralFunction/h/b;

    invoke-virtual {v0, p1, p2, p3}, LGeneralFunction/h/b;->a(La/c/a;J)V

    .line 463
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->o:LGeneralFunction/h/b;

    invoke-virtual {v0}, LGeneralFunction/h/b;->c()V

    .line 493
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->o:LGeneralFunction/h/b;

    invoke-virtual {v0}, LGeneralFunction/h/b;->d()I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 519
    sget-object v2, Lui_Controller/a/c;->r:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 520
    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkHasAllPermissioins false: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 525
    :goto_1
    return v0

    .line 519
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public h()LGeneralFunction/j/b;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->s:LGeneralFunction/j/b;

    return-object v0
.end method

.method public i()V
    .locals 3

    .prologue
    .line 541
    const-string v0, "CheckUSBDeviceHasPermission"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 542
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    new-instance v1, La/c/a;

    const/16 v2, 0x4805

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, La/c/d;->a(La/c/a;)V

    .line 543
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->k:Z

    .line 548
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    new-instance v1, La/c/a;

    const/16 v2, 0x4800

    invoke-direct {v1, v2}, La/c/a;-><init>(I)V

    invoke-virtual {v0, v1}, La/c/d;->a(La/c/a;)V

    .line 549
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->k:Z

    return v0
.end method

.method public l()V
    .locals 4

    .prologue
    .line 555
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->j()V

    .line 570
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    new-instance v0, La/c/a;

    const/16 v1, 0x4830

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    .line 562
    const-string v1, "app_version"

    invoke-virtual {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0189

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;)V

    goto :goto_0

    .line 566
    :cond_1
    const-string v0, "Live view already start, get frame directly"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 567
    new-instance v0, La/c/a;

    const/16 v1, 0x4820

    invoke-direct {v0, v1}, La/c/a;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lui_Controller/ui_StartMode/UI_ModeMain;->c(La/c/a;J)V

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->d:La/c/d;

    invoke-virtual {v0}, La/c/d;->c()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->j:Z

    return v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->j:Z

    .line 585
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 1334
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 1335
    const-string v0, "Application create"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 1336
    sput-object p0, Lui_Controller/ui_StartMode/UI_ModeMain;->w:Landroid/content/Context;

    .line 1337
    new-instance v0, Lui_Controller/b/j;

    invoke-direct {v0}, Lui_Controller/b/j;-><init>()V

    iput-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    .line 1338
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->g:Lui_Controller/b/h;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Lui_Controller/b/h;->f:I

    .line 1339
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->J()V

    .line 1340
    invoke-virtual {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->v()V

    .line 1341
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->K()V

    .line 1342
    invoke-static {p0}, LGeneralFunction/g;->a(Lui_Controller/ui_StartMode/UI_ModeMain;)V

    .line 1343
    invoke-static {}, LGeneralFunction/k;->a()V

    .line 1344
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->t()V

    .line 1348
    :cond_0
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->z()V

    .line 1349
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->B()V

    .line 1350
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->E()V

    .line 1351
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    invoke-direct {p0, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Lui_Controller/b/b;)V

    .line 1352
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->C()V

    .line 1353
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->D()V

    .line 1354
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->A()V

    .line 1355
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->F()V

    .line 1356
    invoke-direct {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->G()V

    .line 1357
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->l:Z

    return v0
.end method

.method public q()V
    .locals 2

    .prologue
    .line 590
    const-string v0, "APP auto launch by USB attach"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->l:Z

    .line 592
    return-void
.end method

.method public r()Z
    .locals 5

    .prologue
    const v4, 0x7f090001

    const/4 v0, 0x0

    .line 597
    new-instance v1, LGeneralFunction/g/b;

    invoke-direct {v1}, LGeneralFunction/g/b;-><init>()V

    invoke-virtual {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lui_Controller/a/c;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, LGeneralFunction/g/b;->a(Ljava/io/InputStream;Ljava/lang/String;)I

    .line 600
    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->o:LGeneralFunction/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lui_Controller/a/c;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FPUPDATE.DAT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGeneralFunction/h/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    const-string v1, "Unzip Fail! retry again"

    invoke-direct {p0, v1, v0}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 602
    new-instance v1, LGeneralFunction/g/b;

    invoke-direct {v1}, LGeneralFunction/g/b;-><init>()V

    invoke-virtual {p0}, Lui_Controller/ui_StartMode/UI_ModeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lui_Controller/a/c;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, LGeneralFunction/g/b;->a(Ljava/io/InputStream;Ljava/lang/String;)I

    .line 604
    :cond_0
    iget-object v1, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->o:LGeneralFunction/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lui_Controller/a/c;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FPUPDATE.DAT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LGeneralFunction/h/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 607
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public t()V
    .locals 2

    .prologue
    .line 773
    const-string v0, "CreateAutoDumpInstance"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain;->a(Ljava/lang/String;I)V

    .line 774
    iget-boolean v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->A:Z

    if-eqz v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 778
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->A:Z

    .line 780
    new-instance v0, Lui_Controller/ui_StartMode/UI_ModeMain$a;

    const/16 v1, 0xbb8

    invoke-direct {v0, p0, v1}, Lui_Controller/ui_StartMode/UI_ModeMain$a;-><init>(Lui_Controller/ui_StartMode/UI_ModeMain;I)V

    .line 781
    invoke-virtual {v0}, Lui_Controller/ui_StartMode/UI_ModeMain$a;->start()V

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v0, v0, Lui_Controller/b/b;->b:Lui_Controller/b/e;

    iget-boolean v0, v0, Lui_Controller/b/e;->c:Z

    return v0
.end method

.method public v()V
    .locals 0

    .prologue
    .line 1141
    return-void
.end method

.method public w()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1288
    invoke-static {p0}, LGeneralFunction/n/a;->a(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1289
    const-string v3, "launchAppTime"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1290
    if-ne v2, v0, :cond_0

    .line 1296
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public x()I
    .locals 5

    .prologue
    .line 1321
    new-instance v0, LGeneralFunction/e/b;

    invoke-direct {v0}, LGeneralFunction/e/b;-><init>()V

    .line 1322
    new-instance v1, LGeneralFunction/e/b;

    invoke-direct {v1}, LGeneralFunction/e/b;-><init>()V

    .line 1323
    new-instance v2, LGeneralFunction/e/b;

    invoke-direct {v2}, LGeneralFunction/e/b;-><init>()V

    .line 1324
    iget-object v3, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v3, v3, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget-object v3, v3, Lui_Controller/b/b;->e:LGeneralFunction/e/e;

    iget-object v4, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iget v4, v4, Lui_Controller/b/b;->c:I

    invoke-virtual {v3, v4, v0, v1, v2}, LGeneralFunction/e/e;->a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I

    move-result v3

    .line 1326
    iget-object v4, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v4, v4, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iput-object v0, v4, Lui_Controller/b/b;->f:LGeneralFunction/e/b;

    .line 1327
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iput-object v1, v0, Lui_Controller/b/b;->g:LGeneralFunction/e/b;

    .line 1328
    iget-object v0, p0, Lui_Controller/ui_StartMode/UI_ModeMain;->c:Lui_Controller/b/j;

    iget-object v0, v0, Lui_Controller/b/j;->k:Lui_Controller/b/b;

    iput-object v2, v0, Lui_Controller/b/b;->h:LGeneralFunction/e/b;

    .line 1330
    return v3
.end method
