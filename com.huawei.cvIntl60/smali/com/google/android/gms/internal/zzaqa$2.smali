.class final Lcom/google/android/gms/internal/zzaqa$2;
.super Lcom/google/android/gms/internal/zzaqa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaqa;->bo()Lcom/google/android/gms/internal/zzaqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bpE:Ljava/lang/reflect/Method;

.field final synthetic bpF:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqa$2;->bpE:Ljava/lang/reflect/Method;

    iput p2, p0, Lcom/google/android/gms/internal/zzaqa$2;->bpF:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqa;-><init>()V

    return-void
.end method


# virtual methods
.method public zzf(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqa$2;->bpE:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/zzaqa$2;->bpF:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
