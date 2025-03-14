package android.support.v4.print;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;
import android.print.PrintManager;
import android.print.pdf.PrintedPdfDocument;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class PrintHelper {

    @SuppressLint({"InlinedApi"})
    public static final int COLOR_MODE_COLOR = 2;

    @SuppressLint({"InlinedApi"})
    public static final int COLOR_MODE_MONOCHROME = 1;
    static final boolean IS_MIN_MARGINS_HANDLING_CORRECT;
    private static final String LOG_TAG = "PrintHelper";
    private static final int MAX_PRINT_SIZE = 3500;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    static final boolean PRINT_ACTIVITY_RESPECTS_ORIENTATION;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    final Context mContext;
    BitmapFactory.Options mDecodeOptions = null;
    final Object mLock = new Object();
    int mScaleMode = 2;
    int mColorMode = 2;
    int mOrientation = 1;

    public interface OnPrintFinishCallback {
        void onFinish();
    }

    static {
        PRINT_ACTIVITY_RESPECTS_ORIENTATION = Build.VERSION.SDK_INT < 20 || Build.VERSION.SDK_INT > 23;
        IS_MIN_MARGINS_HANDLING_CORRECT = Build.VERSION.SDK_INT != 23;
    }

    public static boolean systemSupportsPrint() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public PrintHelper(@NonNull Context context) {
        this.mContext = context;
    }

    public void setScaleMode(int i) {
        this.mScaleMode = i;
    }

    public int getScaleMode() {
        return this.mScaleMode;
    }

    public void setColorMode(int i) {
        this.mColorMode = i;
    }

    public int getColorMode() {
        return this.mColorMode;
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }

    public int getOrientation() {
        if (Build.VERSION.SDK_INT < 19 || this.mOrientation != 0) {
            return this.mOrientation;
        }
        return 1;
    }

    public void printBitmap(@NonNull String str, @NonNull Bitmap bitmap) {
        printBitmap(str, bitmap, (OnPrintFinishCallback) null);
    }

    public void printBitmap(@NonNull String str, @NonNull Bitmap bitmap, @Nullable OnPrintFinishCallback onPrintFinishCallback) {
        PrintAttributes.MediaSize mediaSize;
        if (Build.VERSION.SDK_INT >= 19 && bitmap != null) {
            PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
            if (isPortrait(bitmap)) {
                mediaSize = PrintAttributes.MediaSize.UNKNOWN_PORTRAIT;
            } else {
                mediaSize = PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
            }
            printManager.print(str, new PrintBitmapAdapter(str, this.mScaleMode, bitmap, onPrintFinishCallback), new PrintAttributes.Builder().setMediaSize(mediaSize).setColorMode(this.mColorMode).build());
        }
    }

    @RequiresApi(19)
    private class PrintBitmapAdapter extends PrintDocumentAdapter {
        private PrintAttributes mAttributes;
        private final Bitmap mBitmap;
        private final OnPrintFinishCallback mCallback;
        private final int mFittingMode;
        private final String mJobName;

        PrintBitmapAdapter(String str, int i, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
            this.mJobName = str;
            this.mFittingMode = i;
            this.mBitmap = bitmap;
            this.mCallback = onPrintFinishCallback;
        }

        @Override // android.print.PrintDocumentAdapter
        public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            this.mAttributes = printAttributes2;
            layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(this.mJobName).setContentType(1).setPageCount(1).build(), printAttributes2.equals(printAttributes) ? false : true);
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            PrintHelper.this.writeBitmap(this.mAttributes, this.mFittingMode, this.mBitmap, parcelFileDescriptor, cancellationSignal, writeResultCallback);
        }

        @Override // android.print.PrintDocumentAdapter
        public void onFinish() {
            if (this.mCallback != null) {
                this.mCallback.onFinish();
            }
        }
    }

    public void printBitmap(@NonNull String str, @NonNull Uri uri) {
        printBitmap(str, uri, (OnPrintFinishCallback) null);
    }

    public void printBitmap(@NonNull String str, @NonNull Uri uri, @Nullable OnPrintFinishCallback onPrintFinishCallback) {
        if (Build.VERSION.SDK_INT >= 19) {
            PrintUriAdapter printUriAdapter = new PrintUriAdapter(str, uri, onPrintFinishCallback, this.mScaleMode);
            PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
            PrintAttributes.Builder builder = new PrintAttributes.Builder();
            builder.setColorMode(this.mColorMode);
            if (this.mOrientation == 1 || this.mOrientation == 0) {
                builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
            } else if (this.mOrientation == 2) {
                builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
            }
            printManager.print(str, printUriAdapter, builder.build());
        }
    }

    @RequiresApi(19)
    private class PrintUriAdapter extends PrintDocumentAdapter {
        PrintAttributes mAttributes;
        Bitmap mBitmap = null;
        final OnPrintFinishCallback mCallback;
        final int mFittingMode;
        final Uri mImageFile;
        final String mJobName;
        AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;

        PrintUriAdapter(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback, int i) {
            this.mJobName = str;
            this.mImageFile = uri;
            this.mCallback = onPrintFinishCallback;
            this.mFittingMode = i;
        }

        @Override // android.print.PrintDocumentAdapter
        public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            synchronized (this) {
                this.mAttributes = printAttributes2;
            }
            if (cancellationSignal.isCanceled()) {
                layoutResultCallback.onLayoutCancelled();
            } else if (this.mBitmap != null) {
                layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(this.mJobName).setContentType(1).setPageCount(1).build(), printAttributes2.equals(printAttributes) ? false : true);
            } else {
                this.mLoadBitmap = new AsyncTask<Uri, Boolean, Bitmap>() { // from class: android.support.v4.print.PrintHelper.PrintUriAdapter.1
                    final /* synthetic */ CancellationSignal val$cancellationSignal;
                    final /* synthetic */ PrintDocumentAdapter.LayoutResultCallback val$layoutResultCallback;
                    final /* synthetic */ PrintAttributes val$newPrintAttributes;
                    final /* synthetic */ PrintAttributes val$oldPrintAttributes;

                    AsyncTaskC04411(CancellationSignal cancellationSignal2, PrintAttributes printAttributes22, PrintAttributes printAttributes3, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback2) {
                        cancellationSignal = cancellationSignal2;
                        printAttributes2 = printAttributes22;
                        printAttributes = printAttributes3;
                        layoutResultCallback = layoutResultCallback2;
                    }

                    /* renamed from: android.support.v4.print.PrintHelper$PrintUriAdapter$1$1 */
                    class AnonymousClass1 implements CancellationSignal.OnCancelListener {
                        AnonymousClass1() {
                        }

                        @Override // android.os.CancellationSignal.OnCancelListener
                        public void onCancel() {
                            PrintUriAdapter.this.cancelLoad();
                            AsyncTaskC04411.this.cancel(false);
                        }
                    }

                    @Override // android.os.AsyncTask
                    protected void onPreExecute() {
                        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: android.support.v4.print.PrintHelper.PrintUriAdapter.1.1
                            AnonymousClass1() {
                            }

                            @Override // android.os.CancellationSignal.OnCancelListener
                            public void onCancel() {
                                PrintUriAdapter.this.cancelLoad();
                                AsyncTaskC04411.this.cancel(false);
                            }
                        });
                    }

                    @Override // android.os.AsyncTask
                    public Bitmap doInBackground(Uri... uriArr) {
                        try {
                            return PrintHelper.this.loadConstrainedBitmap(PrintUriAdapter.this.mImageFile);
                        } catch (FileNotFoundException e) {
                            return null;
                        }
                    }

                    @Override // android.os.AsyncTask
                    public void onPostExecute(Bitmap bitmap) {
                        PrintAttributes.MediaSize mediaSize;
                        super.onPostExecute((AsyncTaskC04411) bitmap);
                        if (bitmap != null && (!PrintHelper.PRINT_ACTIVITY_RESPECTS_ORIENTATION || PrintHelper.this.mOrientation == 0)) {
                            synchronized (this) {
                                mediaSize = PrintUriAdapter.this.mAttributes.getMediaSize();
                            }
                            if (mediaSize != null && mediaSize.isPortrait() != PrintHelper.isPortrait(bitmap)) {
                                Matrix matrix = new Matrix();
                                matrix.postRotate(90.0f);
                                bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                            }
                        }
                        PrintUriAdapter.this.mBitmap = bitmap;
                        if (bitmap != null) {
                            layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(PrintUriAdapter.this.mJobName).setContentType(1).setPageCount(1).build(), printAttributes2.equals(printAttributes) ? false : true);
                        } else {
                            layoutResultCallback.onLayoutFailed(null);
                        }
                        PrintUriAdapter.this.mLoadBitmap = null;
                    }

                    @Override // android.os.AsyncTask
                    public void onCancelled(Bitmap bitmap) {
                        layoutResultCallback.onLayoutCancelled();
                        PrintUriAdapter.this.mLoadBitmap = null;
                    }
                }.execute(new Uri[0]);
            }
        }

        /* renamed from: android.support.v4.print.PrintHelper$PrintUriAdapter$1 */
        class AsyncTaskC04411 extends AsyncTask<Uri, Boolean, Bitmap> {
            final /* synthetic */ CancellationSignal val$cancellationSignal;
            final /* synthetic */ PrintDocumentAdapter.LayoutResultCallback val$layoutResultCallback;
            final /* synthetic */ PrintAttributes val$newPrintAttributes;
            final /* synthetic */ PrintAttributes val$oldPrintAttributes;

            AsyncTaskC04411(CancellationSignal cancellationSignal2, PrintAttributes printAttributes22, PrintAttributes printAttributes3, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback2) {
                cancellationSignal = cancellationSignal2;
                printAttributes2 = printAttributes22;
                printAttributes = printAttributes3;
                layoutResultCallback = layoutResultCallback2;
            }

            /* renamed from: android.support.v4.print.PrintHelper$PrintUriAdapter$1$1 */
            class AnonymousClass1 implements CancellationSignal.OnCancelListener {
                AnonymousClass1() {
                }

                @Override // android.os.CancellationSignal.OnCancelListener
                public void onCancel() {
                    PrintUriAdapter.this.cancelLoad();
                    AsyncTaskC04411.this.cancel(false);
                }
            }

            @Override // android.os.AsyncTask
            protected void onPreExecute() {
                cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: android.support.v4.print.PrintHelper.PrintUriAdapter.1.1
                    AnonymousClass1() {
                    }

                    @Override // android.os.CancellationSignal.OnCancelListener
                    public void onCancel() {
                        PrintUriAdapter.this.cancelLoad();
                        AsyncTaskC04411.this.cancel(false);
                    }
                });
            }

            @Override // android.os.AsyncTask
            public Bitmap doInBackground(Uri... uriArr) {
                try {
                    return PrintHelper.this.loadConstrainedBitmap(PrintUriAdapter.this.mImageFile);
                } catch (FileNotFoundException e) {
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                PrintAttributes.MediaSize mediaSize;
                super.onPostExecute((AsyncTaskC04411) bitmap);
                if (bitmap != null && (!PrintHelper.PRINT_ACTIVITY_RESPECTS_ORIENTATION || PrintHelper.this.mOrientation == 0)) {
                    synchronized (this) {
                        mediaSize = PrintUriAdapter.this.mAttributes.getMediaSize();
                    }
                    if (mediaSize != null && mediaSize.isPortrait() != PrintHelper.isPortrait(bitmap)) {
                        Matrix matrix = new Matrix();
                        matrix.postRotate(90.0f);
                        bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                    }
                }
                PrintUriAdapter.this.mBitmap = bitmap;
                if (bitmap != null) {
                    layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(PrintUriAdapter.this.mJobName).setContentType(1).setPageCount(1).build(), printAttributes2.equals(printAttributes) ? false : true);
                } else {
                    layoutResultCallback.onLayoutFailed(null);
                }
                PrintUriAdapter.this.mLoadBitmap = null;
            }

            @Override // android.os.AsyncTask
            public void onCancelled(Bitmap bitmap) {
                layoutResultCallback.onLayoutCancelled();
                PrintUriAdapter.this.mLoadBitmap = null;
            }
        }

        void cancelLoad() {
            synchronized (PrintHelper.this.mLock) {
                if (PrintHelper.this.mDecodeOptions != null) {
                    if (Build.VERSION.SDK_INT < 24) {
                        PrintHelper.this.mDecodeOptions.requestCancelDecode();
                    }
                    PrintHelper.this.mDecodeOptions = null;
                }
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onFinish() {
            super.onFinish();
            cancelLoad();
            if (this.mLoadBitmap != null) {
                this.mLoadBitmap.cancel(true);
            }
            if (this.mCallback != null) {
                this.mCallback.onFinish();
            }
            if (this.mBitmap != null) {
                this.mBitmap.recycle();
                this.mBitmap = null;
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            PrintHelper.this.writeBitmap(this.mAttributes, this.mFittingMode, this.mBitmap, parcelFileDescriptor, cancellationSignal, writeResultCallback);
        }
    }

    static boolean isPortrait(Bitmap bitmap) {
        return bitmap.getWidth() <= bitmap.getHeight();
    }

    @RequiresApi(19)
    private static PrintAttributes.Builder copyAttributes(PrintAttributes printAttributes) {
        PrintAttributes.Builder minMargins = new PrintAttributes.Builder().setMediaSize(printAttributes.getMediaSize()).setResolution(printAttributes.getResolution()).setMinMargins(printAttributes.getMinMargins());
        if (printAttributes.getColorMode() != 0) {
            minMargins.setColorMode(printAttributes.getColorMode());
        }
        if (Build.VERSION.SDK_INT >= 23 && printAttributes.getDuplexMode() != 0) {
            minMargins.setDuplexMode(printAttributes.getDuplexMode());
        }
        return minMargins;
    }

    static Matrix getMatrix(int i, int i2, RectF rectF, int i3) {
        float min;
        Matrix matrix = new Matrix();
        float width = rectF.width() / i;
        if (i3 == 2) {
            min = Math.max(width, rectF.height() / i2);
        } else {
            min = Math.min(width, rectF.height() / i2);
        }
        matrix.postScale(min, min);
        matrix.postTranslate((rectF.width() - (i * min)) / 2.0f, (rectF.height() - (min * i2)) / 2.0f);
        return matrix;
    }

    @RequiresApi(19)
    void writeBitmap(PrintAttributes printAttributes, int i, Bitmap bitmap, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
        new AsyncTask<Void, Void, Throwable>() { // from class: android.support.v4.print.PrintHelper.1
            final /* synthetic */ PrintAttributes val$attributes;
            final /* synthetic */ Bitmap val$bitmap;
            final /* synthetic */ CancellationSignal val$cancellationSignal;
            final /* synthetic */ ParcelFileDescriptor val$fileDescriptor;
            final /* synthetic */ int val$fittingMode;
            final /* synthetic */ PrintAttributes val$pdfAttributes;
            final /* synthetic */ PrintDocumentAdapter.WriteResultCallback val$writeResultCallback;

            AsyncTaskC04401(CancellationSignal cancellationSignal2, PrintAttributes printAttributes2, Bitmap bitmap2, PrintAttributes printAttributes3, int i2, ParcelFileDescriptor parcelFileDescriptor2, PrintDocumentAdapter.WriteResultCallback writeResultCallback2) {
                cancellationSignal = cancellationSignal2;
                build = printAttributes2;
                bitmap = bitmap2;
                printAttributes = printAttributes3;
                i = i2;
                parcelFileDescriptor = parcelFileDescriptor2;
                writeResultCallback = writeResultCallback2;
            }

            @Override // android.os.AsyncTask
            public Throwable doInBackground(Void... voidArr) {
                RectF rectF;
                try {
                    if (cancellationSignal.isCanceled()) {
                        return null;
                    }
                    PrintedPdfDocument printedPdfDocument = new PrintedPdfDocument(PrintHelper.this.mContext, build);
                    Bitmap convertBitmapForColorMode = PrintHelper.convertBitmapForColorMode(bitmap, build.getColorMode());
                    if (cancellationSignal.isCanceled()) {
                        return null;
                    }
                    try {
                        PdfDocument.Page startPage = printedPdfDocument.startPage(1);
                        if (PrintHelper.IS_MIN_MARGINS_HANDLING_CORRECT) {
                            rectF = new RectF(startPage.getInfo().getContentRect());
                        } else {
                            PrintedPdfDocument printedPdfDocument2 = new PrintedPdfDocument(PrintHelper.this.mContext, printAttributes);
                            PdfDocument.Page startPage2 = printedPdfDocument2.startPage(1);
                            rectF = new RectF(startPage2.getInfo().getContentRect());
                            printedPdfDocument2.finishPage(startPage2);
                            printedPdfDocument2.close();
                        }
                        Matrix matrix = PrintHelper.getMatrix(convertBitmapForColorMode.getWidth(), convertBitmapForColorMode.getHeight(), rectF, i);
                        if (!PrintHelper.IS_MIN_MARGINS_HANDLING_CORRECT) {
                            matrix.postTranslate(rectF.left, rectF.top);
                            startPage.getCanvas().clipRect(rectF);
                        }
                        startPage.getCanvas().drawBitmap(convertBitmapForColorMode, matrix, null);
                        printedPdfDocument.finishPage(startPage);
                        if (!cancellationSignal.isCanceled()) {
                            printedPdfDocument.writeTo(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                            printedPdfDocument.close();
                            if (parcelFileDescriptor != null) {
                                try {
                                    parcelFileDescriptor.close();
                                } catch (IOException e) {
                                }
                            }
                            if (convertBitmapForColorMode == bitmap) {
                                return null;
                            }
                            convertBitmapForColorMode.recycle();
                            return null;
                        }
                        printedPdfDocument.close();
                        if (parcelFileDescriptor != null) {
                            try {
                                parcelFileDescriptor.close();
                            } catch (IOException e2) {
                            }
                        }
                        if (convertBitmapForColorMode == bitmap) {
                            return null;
                        }
                        convertBitmapForColorMode.recycle();
                        return null;
                    } finally {
                    }
                } catch (Throwable th) {
                    return th;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Throwable th) {
                if (cancellationSignal.isCanceled()) {
                    writeResultCallback.onWriteCancelled();
                } else if (th == null) {
                    writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                } else {
                    Log.e(PrintHelper.LOG_TAG, "Error writing printed content", th);
                    writeResultCallback.onWriteFailed(null);
                }
            }
        }.execute(new Void[0]);
    }

    /* renamed from: android.support.v4.print.PrintHelper$1 */
    class AsyncTaskC04401 extends AsyncTask<Void, Void, Throwable> {
        final /* synthetic */ PrintAttributes val$attributes;
        final /* synthetic */ Bitmap val$bitmap;
        final /* synthetic */ CancellationSignal val$cancellationSignal;
        final /* synthetic */ ParcelFileDescriptor val$fileDescriptor;
        final /* synthetic */ int val$fittingMode;
        final /* synthetic */ PrintAttributes val$pdfAttributes;
        final /* synthetic */ PrintDocumentAdapter.WriteResultCallback val$writeResultCallback;

        AsyncTaskC04401(CancellationSignal cancellationSignal2, PrintAttributes printAttributes2, Bitmap bitmap2, PrintAttributes printAttributes3, int i2, ParcelFileDescriptor parcelFileDescriptor2, PrintDocumentAdapter.WriteResultCallback writeResultCallback2) {
            cancellationSignal = cancellationSignal2;
            build = printAttributes2;
            bitmap = bitmap2;
            printAttributes = printAttributes3;
            i = i2;
            parcelFileDescriptor = parcelFileDescriptor2;
            writeResultCallback = writeResultCallback2;
        }

        @Override // android.os.AsyncTask
        public Throwable doInBackground(Void... voidArr) {
            RectF rectF;
            try {
                if (cancellationSignal.isCanceled()) {
                    return null;
                }
                PrintedPdfDocument printedPdfDocument = new PrintedPdfDocument(PrintHelper.this.mContext, build);
                Bitmap convertBitmapForColorMode = PrintHelper.convertBitmapForColorMode(bitmap, build.getColorMode());
                if (cancellationSignal.isCanceled()) {
                    return null;
                }
                try {
                    PdfDocument.Page startPage = printedPdfDocument.startPage(1);
                    if (PrintHelper.IS_MIN_MARGINS_HANDLING_CORRECT) {
                        rectF = new RectF(startPage.getInfo().getContentRect());
                    } else {
                        PrintedPdfDocument printedPdfDocument2 = new PrintedPdfDocument(PrintHelper.this.mContext, printAttributes);
                        PdfDocument.Page startPage2 = printedPdfDocument2.startPage(1);
                        rectF = new RectF(startPage2.getInfo().getContentRect());
                        printedPdfDocument2.finishPage(startPage2);
                        printedPdfDocument2.close();
                    }
                    Matrix matrix = PrintHelper.getMatrix(convertBitmapForColorMode.getWidth(), convertBitmapForColorMode.getHeight(), rectF, i);
                    if (!PrintHelper.IS_MIN_MARGINS_HANDLING_CORRECT) {
                        matrix.postTranslate(rectF.left, rectF.top);
                        startPage.getCanvas().clipRect(rectF);
                    }
                    startPage.getCanvas().drawBitmap(convertBitmapForColorMode, matrix, null);
                    printedPdfDocument.finishPage(startPage);
                    if (!cancellationSignal.isCanceled()) {
                        printedPdfDocument.writeTo(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                        printedPdfDocument.close();
                        if (parcelFileDescriptor != null) {
                            try {
                                parcelFileDescriptor.close();
                            } catch (IOException e) {
                            }
                        }
                        if (convertBitmapForColorMode == bitmap) {
                            return null;
                        }
                        convertBitmapForColorMode.recycle();
                        return null;
                    }
                    printedPdfDocument.close();
                    if (parcelFileDescriptor != null) {
                        try {
                            parcelFileDescriptor.close();
                        } catch (IOException e2) {
                        }
                    }
                    if (convertBitmapForColorMode == bitmap) {
                        return null;
                    }
                    convertBitmapForColorMode.recycle();
                    return null;
                } finally {
                }
            } catch (Throwable th) {
                return th;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Throwable th) {
            if (cancellationSignal.isCanceled()) {
                writeResultCallback.onWriteCancelled();
            } else if (th == null) {
                writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
            } else {
                Log.e(PrintHelper.LOG_TAG, "Error writing printed content", th);
                writeResultCallback.onWriteFailed(null);
            }
        }
    }

    Bitmap loadConstrainedBitmap(Uri uri) {
        BitmapFactory.Options options;
        int i = 1;
        Bitmap bitmap = null;
        if (uri == null || this.mContext == null) {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inJustDecodeBounds = true;
        loadBitmap(uri, options2);
        int i2 = options2.outWidth;
        int i3 = options2.outHeight;
        if (i2 > 0 && i3 > 0) {
            int max = Math.max(i2, i3);
            while (max > MAX_PRINT_SIZE) {
                max >>>= 1;
                i <<= 1;
            }
            if (i > 0 && Math.min(i2, i3) / i > 0) {
                synchronized (this.mLock) {
                    this.mDecodeOptions = new BitmapFactory.Options();
                    this.mDecodeOptions.inMutable = true;
                    this.mDecodeOptions.inSampleSize = i;
                    options = this.mDecodeOptions;
                }
                try {
                    bitmap = loadBitmap(uri, options);
                    synchronized (this.mLock) {
                        this.mDecodeOptions = null;
                    }
                } catch (Throwable th) {
                    synchronized (this.mLock) {
                        this.mDecodeOptions = null;
                        throw th;
                    }
                }
            }
        }
        return bitmap;
    }

    private Bitmap loadBitmap(Uri uri, BitmapFactory.Options options) {
        InputStream inputStream = null;
        if (uri == null || this.mContext == null) {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
        try {
            inputStream = this.mContext.getContentResolver().openInputStream(uri);
            return BitmapFactory.decodeStream(inputStream, null, options);
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    Log.w(LOG_TAG, "close fail ", e);
                }
            }
        }
    }

    static Bitmap convertBitmapForColorMode(Bitmap bitmap, int i) {
        if (i == 1) {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.0f);
            paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
            canvas.setBitmap(null);
            return createBitmap;
        }
        return bitmap;
    }
}
