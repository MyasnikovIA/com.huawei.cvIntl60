.class public LGeneralFunction/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LGeneralFunction/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "LGeneralFunction/e/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LGeneralFunction/e/b;->b:Ljava/util/HashMap;

    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    iget-object v0, p0, LGeneralFunction/e/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 21
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 25
    new-instance v0, LGeneralFunction/e/b;

    invoke-direct {v0}, LGeneralFunction/e/b;-><init>()V

    .line 26
    iget-object v1, v0, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    iget-object v2, p0, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    iget-object v1, v0, LGeneralFunction/e/b;->b:Ljava/util/HashMap;

    iget-object v2, p0, LGeneralFunction/e/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 28
    return-object v0
.end method
