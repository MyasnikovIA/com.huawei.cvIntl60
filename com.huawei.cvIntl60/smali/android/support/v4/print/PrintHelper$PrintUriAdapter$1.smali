.class Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic val$newPrintAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$oldPrintAttributes:Landroid/print/PrintAttributes;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintUriAdapter;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p5, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 441
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->this$0:Landroid/support/v4/print/PrintHelper;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mImageFile:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelper;->loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    .line 442
    :catch_0
    move-exception v0

    .line 445
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 424
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 495
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 496
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 424
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 450
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 454
    if-eqz p1, :cond_1

    sget-boolean v0, Landroid/support/v4/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->this$0:Landroid/support/v4/print/PrintHelper;

    iget v0, v0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    if-nez v0, :cond_1

    .line 458
    :cond_0
    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    .line 460
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v0

    invoke-static {p1}, Landroid/support/v4/print/PrintHelper;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 464
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 466
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 468
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    .line 467
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 474
    :cond_1
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    iput-object p1, v0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 475
    if-eqz p1, :cond_3

    .line 476
    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    iget-object v2, v2, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mJobName:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, v6}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 478
    invoke-virtual {v0, v6}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    .line 481
    iget-object v2, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 483
    :goto_0
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v1, v0, v6}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 488
    :goto_1
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    iput-object v7, v0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 489
    return-void

    .line 460
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v6, v1

    .line 481
    goto :goto_0

    .line 486
    :cond_3
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0, v7}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 424
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1$1;

    invoke-direct {v1, p0}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintUriAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 436
    return-void
.end method
