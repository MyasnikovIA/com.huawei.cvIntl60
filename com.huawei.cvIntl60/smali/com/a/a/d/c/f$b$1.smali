.class Lcom/a/a/d/c/f$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/d/c/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/d/c/f$b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/f$d",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 161
    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    const-class v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public a(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 167
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 158
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1}, Lcom/a/a/d/c/f$b$1;->a(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public synthetic b(Ljava/io/File;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/a/a/d/c/f$b$1;->a(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
