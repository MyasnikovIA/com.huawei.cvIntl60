.class LGeneralFunction/q$a;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/q;


# direct methods
.method public constructor <init>(LGeneralFunction/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, LGeneralFunction/q$a;->a:LGeneralFunction/q;

    .line 27
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
