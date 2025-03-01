.class public LGeneralFunction/e/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object v0, p0, LGeneralFunction/e/f$a;->a:Ljava/lang/String;

    .line 105
    iput-object v0, p0, LGeneralFunction/e/f$a;->b:Ljava/lang/String;

    .line 109
    iput-object p1, p0, LGeneralFunction/e/f$a;->a:Ljava/lang/String;

    .line 110
    iput-object p2, p0, LGeneralFunction/e/f$a;->b:Ljava/lang/String;

    .line 111
    return-void
.end method
