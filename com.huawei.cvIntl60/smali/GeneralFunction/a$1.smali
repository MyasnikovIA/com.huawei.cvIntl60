.class LGeneralFunction/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/a;


# direct methods
.method constructor <init>(LGeneralFunction/a;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, LGeneralFunction/a$1;->a:LGeneralFunction/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, LGeneralFunction/a$1;->a:LGeneralFunction/a;

    invoke-virtual {v0}, LGeneralFunction/a;->a()V

    .line 266
    return-void
.end method
