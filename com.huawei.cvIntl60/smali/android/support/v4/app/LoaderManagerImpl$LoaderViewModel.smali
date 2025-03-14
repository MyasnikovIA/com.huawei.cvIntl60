.class Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;
.super Landroid/arch/lifecycle/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderViewModel"
.end annotation


# static fields
.field private static final FACTORY:Landroid/arch/lifecycle/o$a;


# instance fields
.field private mCreatingLoader:Z

.field private mLoaders:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel$1;

    invoke-direct {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroid/arch/lifecycle/o$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/arch/lifecycle/n;-><init>()V

    .line 295
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return-void
.end method

.method static getInstance(Landroid/arch/lifecycle/p;)Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 292
    new-instance v0, Landroid/arch/lifecycle/o;

    sget-object v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroid/arch/lifecycle/o$a;

    invoke-direct {v0, p0, v1}, Landroid/arch/lifecycle/o;-><init>(Landroid/arch/lifecycle/p;Landroid/arch/lifecycle/o$a;)V

    const-class v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/o;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/n;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 359
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 360
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 357
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method finishCreatingLoader()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 308
    return-void
.end method

.method getLoader(I)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    return-object v0
.end method

.method hasRunningLoaders()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 324
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    move v2, v1

    .line 325
    :goto_0
    if-ge v2, v3, :cond_1

    .line 326
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 327
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->isCallbackWaitingForData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x1

    .line 331
    :goto_1
    return v0

    .line 325
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 331
    goto :goto_1
.end method

.method isCreatingLoader()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    return v0
.end method

.method markForRedelivery()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    .line 336
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 337
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 338
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->markForRedelivery()V

    .line 336
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 4

    .prologue
    .line 344
    invoke-super {p0}, Landroid/arch/lifecycle/n;->onCleared()V

    .line 345
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    .line 346
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 347
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 348
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Landroid/support/v4/content/Loader;

    .line 346
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 351
    return-void
.end method

.method putLoader(ILandroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 1
    .param p2    # Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 312
    return-void
.end method

.method removeLoader(I)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 321
    return-void
.end method

.method startCreatingLoader()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->mCreatingLoader:Z

    .line 300
    return-void
.end method
