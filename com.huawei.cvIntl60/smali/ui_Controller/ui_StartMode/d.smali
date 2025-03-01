.class public Lui_Controller/ui_StartMode/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:LGeneralFunction/b/a;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;LGeneralFunction/b/a;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lui_Controller/ui_StartMode/d;->a:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lui_Controller/ui_StartMode/d;->b:LGeneralFunction/b/a;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lui_Controller/ui_StartMode/d;->c:I

    .line 26
    iput-object p2, p0, Lui_Controller/ui_StartMode/d;->b:LGeneralFunction/b/a;

    .line 27
    iput-object p1, p0, Lui_Controller/ui_StartMode/d;->a:Landroid/content/Context;

    .line 28
    iput p3, p0, Lui_Controller/ui_StartMode/d;->c:I

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;LGeneralFunction/b/a;I)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lui_Controller/ui_StartMode/d;

    invoke-direct {v0, p0, p1, p2}, Lui_Controller/ui_StartMode/d;-><init>(Landroid/content/Context;LGeneralFunction/b/a;I)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 22
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 34
    const-string v0, "UI_UncaughtException"

    const-string v1, "FATAL uncaughtException!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    iget-object v0, p0, Lui_Controller/ui_StartMode/d;->b:LGeneralFunction/b/a;

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, LGeneralFunction/o/a;

    invoke-direct {v0}, LGeneralFunction/o/a;-><init>()V

    iget v1, p0, Lui_Controller/ui_StartMode/d;->c:I

    invoke-virtual {v0, v1}, LGeneralFunction/o/a;->a(I)V

    .line 39
    iget-object v0, p0, Lui_Controller/ui_StartMode/d;->b:LGeneralFunction/b/a;

    invoke-virtual {v0, v3, v3}, LGeneralFunction/b/a;->a(ZZ)V

    .line 40
    iget-object v0, p0, Lui_Controller/ui_StartMode/d;->b:LGeneralFunction/b/a;

    invoke-virtual {v0}, LGeneralFunction/b/a;->a()V

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 44
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 45
    return-void
.end method
