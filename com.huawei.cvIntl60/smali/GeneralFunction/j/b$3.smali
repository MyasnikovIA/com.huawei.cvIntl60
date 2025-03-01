.class LGeneralFunction/j/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/j/b;->a(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/j/b;


# direct methods
.method constructor <init>(LGeneralFunction/j/b;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, LGeneralFunction/j/b$3;->a:LGeneralFunction/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/p;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 289
    if-nez p1, :cond_0

    .line 291
    const-string v0, "GraphRequest\'s response == null"

    invoke-static {v0, v1}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    const-string v0, "GraphRequest\'s response =/= null "

    invoke-static {v0, v1}, LGeneralFunction/j/b;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
