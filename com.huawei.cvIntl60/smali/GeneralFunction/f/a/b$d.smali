.class LGeneralFunction/f/a/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:LGeneralFunction/f/a/b;


# direct methods
.method constructor <init>(LGeneralFunction/f/a/b;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    iput-object p1, p0, LGeneralFunction/f/a/b$d;->b:LGeneralFunction/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/f/a/b$d;->a:Ljava/util/ArrayList;

    .line 343
    iput-object p2, p0, LGeneralFunction/f/a/b$d;->a:Ljava/util/ArrayList;

    .line 344
    return-void
.end method
