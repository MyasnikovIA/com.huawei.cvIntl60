.class LGeneralFunction/s/a$a;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/s/a;


# direct methods
.method public constructor <init>(LGeneralFunction/s/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, LGeneralFunction/s/a$a;->a:LGeneralFunction/s/a;

    .line 43
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method
