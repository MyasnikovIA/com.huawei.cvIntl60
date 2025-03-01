.class Lcom/a/a/d/d/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/d/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b/a$a;Lcom/a/a/b/c;Ljava/nio/ByteBuffer;I)Lcom/a/a/b/a;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/a/a/b/e;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/a/a/b/e;-><init>(Lcom/a/a/b/a$a;Lcom/a/a/b/c;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method
