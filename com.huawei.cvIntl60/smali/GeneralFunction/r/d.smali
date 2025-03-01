.class public LGeneralFunction/r/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/nio/ByteBuffer;

.field public c:Landroid/media/MediaCodec$BufferInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, LGeneralFunction/r/d;->a:I

    .line 21
    iput-object v1, p0, LGeneralFunction/r/d;->b:Ljava/nio/ByteBuffer;

    .line 22
    iput-object v1, p0, LGeneralFunction/r/d;->c:Landroid/media/MediaCodec$BufferInfo;

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, LGeneralFunction/r/d;->a:I

    .line 27
    iput-object p2, p0, LGeneralFunction/r/d;->b:Ljava/nio/ByteBuffer;

    .line 28
    iput-object p3, p0, LGeneralFunction/r/d;->c:Landroid/media/MediaCodec$BufferInfo;

    .line 29
    return-void
.end method
