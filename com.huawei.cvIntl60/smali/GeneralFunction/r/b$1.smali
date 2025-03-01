.class LGeneralFunction/r/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/r/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/r/b;


# direct methods
.method constructor <init>(LGeneralFunction/r/b;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, LGeneralFunction/r/b$1;->a:LGeneralFunction/r/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 151
    iget-object v0, p0, LGeneralFunction/r/b$1;->a:LGeneralFunction/r/b;

    invoke-static {v0, p1}, LGeneralFunction/r/b;->a(LGeneralFunction/r/b;Landroid/os/Message;)V

    .line 152
    return-void
.end method
