.class Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;->a(Ljava/util/Map;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;


# direct methods
.method constructor <init>(Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$3;->a:Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 590
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lui_Controller/CustomWidget/ListHorizontalScrollView/ListHorizontalScrollView$3;->a(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
