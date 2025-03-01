.class LGeneralFunction/p$a;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/p;


# direct methods
.method public constructor <init>(LGeneralFunction/p;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, LGeneralFunction/p$a;->a:LGeneralFunction/p;

    .line 24
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
