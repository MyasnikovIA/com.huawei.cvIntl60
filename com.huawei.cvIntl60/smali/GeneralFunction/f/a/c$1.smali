.class LGeneralFunction/f/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/f/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGeneralFunction/f/a/c;->a(Ljava/lang/String;Ljava/lang/String;IILGeneralFunction/f/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/f/a/c$a;

.field final synthetic b:LGeneralFunction/f/a/c;


# direct methods
.method constructor <init>(LGeneralFunction/f/a/c;LGeneralFunction/f/a/c$a;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, LGeneralFunction/f/a/c$1;->b:LGeneralFunction/f/a/c;

    iput-object p2, p0, LGeneralFunction/f/a/c$1;->a:LGeneralFunction/f/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, LGeneralFunction/f/a/c$1;->a:LGeneralFunction/f/a/c$a;

    invoke-interface {v0, p1}, LGeneralFunction/f/a/c$a;->a(I)V

    .line 20
    return-void
.end method
