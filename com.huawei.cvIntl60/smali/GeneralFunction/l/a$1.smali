.class LGeneralFunction/l/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGeneralFunction/l/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/l/a;


# direct methods
.method constructor <init>(LGeneralFunction/l/a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, LGeneralFunction/l/a$1;->a:LGeneralFunction/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LGeneralFunction/l/c;)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, LGeneralFunction/l/a$1;->a:LGeneralFunction/l/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WechatShareResultListener result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, LGeneralFunction/l/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, LGeneralFunction/l/a;->a(LGeneralFunction/l/a;Ljava/lang/String;I)V

    .line 61
    iget-object v0, p0, LGeneralFunction/l/a$1;->a:LGeneralFunction/l/a;

    invoke-virtual {v0, p1}, LGeneralFunction/l/a;->a(LGeneralFunction/l/c;)V

    .line 62
    return-void
.end method
