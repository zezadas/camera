/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.print;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;
import android.print.PrintJob;
import android.print.PrintManager;
import android.print.pdf.PrintedPdfDocument;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class PrintHelperKitkat {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    private static final String LOG_TAG = "PrintHelperKitkat";
    private static final int MAX_PRINT_SIZE = 3500;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    int mColorMode = 2;
    final Context mContext;
    BitmapFactory.Options mDecodeOptions = null;
    private final Object mLock = new Object();
    int mOrientation = 1;
    int mScaleMode = 2;

    PrintHelperKitkat(Context context) {
        this.mContext = context;
    }

    /*
     * Enabled aggressive block sorting
     */
    private Matrix getMatrix(int n, int n2, RectF rectF, int n3) {
        Matrix matrix = new Matrix();
        float f = rectF.width() / (float)n;
        f = n3 == 2 ? Math.max(f, rectF.height() / (float)n2) : Math.min(f, rectF.height() / (float)n2);
        matrix.postScale(f, f);
        matrix.postTranslate((rectF.width() - (float)n * f) / 2.0f, (rectF.height() - (float)n2 * f) / 2.0f);
        return matrix;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private Bitmap loadBitmap(Uri object, BitmapFactory.Options object2) throws FileNotFoundException {
        if (object == null) throw new IllegalArgumentException("bad argument to loadBitmap");
        if (this.mContext == null) {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
        Object object3 = null;
        try {
            object3 = object = this.mContext.getContentResolver().openInputStream((Uri)object);
            object2 = BitmapFactory.decodeStream((InputStream)object, null, (BitmapFactory.Options)object2);
            if (object == null) return object2;
        }
        catch (Throwable var1_3) {
            if (object3 == null) throw var1_3;
            try {
                object3.close();
            }
            catch (IOException iOException) {
                Log.w("PrintHelperKitkat", "close fail ", iOException);
                throw var1_3;
            }
            throw var1_3;
        }
        try {
            object.close();
            return object2;
        }
        catch (IOException var1_2) {
            Log.w("PrintHelperKitkat", "close fail ", var1_2);
            return object2;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private Bitmap loadConstrainedBitmap(Uri object, int n) throws FileNotFoundException {
        if (n <= 0) throw new IllegalArgumentException("bad argument to getScaledBitmap");
        if (object == null) throw new IllegalArgumentException("bad argument to getScaledBitmap");
        if (this.mContext == null) {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
        Object object2 = new BitmapFactory.Options();
        object2.inJustDecodeBounds = true;
        this.loadBitmap((Uri)object, (BitmapFactory.Options)object2);
        int n2 = object2.outWidth;
        int n3 = object2.outHeight;
        if (n2 <= 0) return null;
        if (n3 <= 0) {
            return null;
        }
        int n4 = 1;
        for (int i = Math.max((int)n2, (int)n3); i > n; --i, --n4) {
        }
        if (n4 <= 0) return null;
        if (Math.min(n2, n3) / n4 <= 0) return null;
        object2 = this.mLock;
        // MONITORENTER : object2
        this.mDecodeOptions = new BitmapFactory.Options();
        this.mDecodeOptions.inMutable = true;
        this.mDecodeOptions.inSampleSize = n4;
        BitmapFactory.Options options = this.mDecodeOptions;
        // MONITOREXIT : object2
        try {
            object2 = this.loadBitmap((Uri)object, options);
            return object2;
        }
        finally {
            object = this.mLock;
            // MONITORENTER : object
            this.mDecodeOptions = null;
            // MONITOREXIT : object
        }
    }

    public int getColorMode() {
        return this.mColorMode;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getScaleMode() {
        return this.mScaleMode;
    }

    public void printBitmap(final String string, final Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        final int n = this.mScaleMode;
        PrintManager printManager = (PrintManager)this.mContext.getSystemService("print");
        Object object = PrintAttributes.MediaSize.UNKNOWN_PORTRAIT;
        if (bitmap.getWidth() > bitmap.getHeight()) {
            object = PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
        }
        object = new PrintAttributes.Builder().setMediaSize((PrintAttributes.MediaSize)object).setColorMode(this.mColorMode).build();
        printManager.print(string, new PrintDocumentAdapter(){
            private PrintAttributes mAttributes;

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal object, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
                boolean bl = true;
                this.mAttributes = printAttributes2;
                object = new PrintDocumentInfo.Builder(string).setContentType(1).setPageCount(1).build();
                if (printAttributes2.equals(printAttributes)) {
                    bl = false;
                }
                layoutResultCallback.onLayoutFinished((PrintDocumentInfo)object, bl);
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public void onWrite(PageRange[] object, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal object2, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
                object = new PrintedPdfDocument(PrintHelperKitkat.this.mContext, this.mAttributes);
                try {
                    object2 = object.startPage(1);
                    Object object3 = new RectF(object2.getInfo().getContentRect());
                    object3 = PrintHelperKitkat.this.getMatrix(bitmap.getWidth(), bitmap.getHeight(), (RectF)object3, n);
                    object2.getCanvas().drawBitmap(bitmap, (Matrix)object3, null);
                    object.finishPage((PdfDocument.Page)object2);
                    try {
                        object.writeTo(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                        writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                        {
                            do {
                                return;
                                break;
                            } while (true);
                        }
                    }
                    catch (IOException var3_6) {
                        Log.e("PrintHelperKitkat", "Error writing printed content", var3_6);
                        writeResultCallback.onWriteFailed(null);
                        return;
                    }
                }
                finally {
                    if (object != null) {
                        object.close();
                    }
                    if (parcelFileDescriptor != null) {
                        parcelFileDescriptor.close();
                    }
                }
            }
        }, (PrintAttributes)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void printBitmap(final String string, Uri object) throws FileNotFoundException {
        object = new PrintDocumentAdapter((Uri)object, this.mScaleMode){
            AsyncTask<Uri, Boolean, Bitmap> loadBitmap;
            private PrintAttributes mAttributes;
            Bitmap mBitmap;
            final /* synthetic */ int val$fittingMode;
            final /* synthetic */ Uri val$imageFile;

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            private void cancelLoad() {
                Object object = PrintHelperKitkat.this.mLock;
                synchronized (object) {
                    if (PrintHelperKitkat.this.mDecodeOptions != null) {
                        PrintHelperKitkat.this.mDecodeOptions.requestCancelDecode();
                        PrintHelperKitkat.this.mDecodeOptions = null;
                    }
                    return;
                }
            }

            @Override
            public void onFinish() {
                super.onFinish();
                this.cancelLoad();
                this.loadBitmap.cancel(true);
            }

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal object, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
                boolean bl = true;
                if (object.isCanceled()) {
                    layoutResultCallback.onLayoutCancelled();
                    this.mAttributes = printAttributes2;
                    return;
                }
                if (this.mBitmap == null) {
                    this.loadBitmap = new AsyncTask<Uri, Boolean, Bitmap>((CancellationSignal)object, printAttributes2, printAttributes, layoutResultCallback){
                        final /* synthetic */ CancellationSignal val$cancellationSignal;
                        final /* synthetic */ PrintDocumentAdapter.LayoutResultCallback val$layoutResultCallback;
                        final /* synthetic */ PrintAttributes val$newPrintAttributes;
                        final /* synthetic */ PrintAttributes val$oldPrintAttributes;

                        protected /* varargs */ Bitmap doInBackground(Uri ... object) {
                            try {
                                object = PrintHelperKitkat.this.loadConstrainedBitmap(2.this.val$imageFile, 3500);
                                return object;
                            }
                            catch (FileNotFoundException var1_2) {
                                return null;
                            }
                        }

                        @Override
                        protected void onCancelled(Bitmap bitmap) {
                            this.val$layoutResultCallback.onLayoutCancelled();
                        }

                        /*
                         * Enabled aggressive block sorting
                         */
                        @Override
                        protected void onPostExecute(Bitmap parcelable) {
                            boolean bl = true;
                            super.onPostExecute(parcelable);
                            2.this.mBitmap = parcelable;
                            if (parcelable == null) {
                                this.val$layoutResultCallback.onLayoutFailed(null);
                                return;
                            }
                            PrintDocumentInfo printDocumentInfo = new PrintDocumentInfo.Builder(string).setContentType(1).setPageCount(1).build();
                            if (this.val$newPrintAttributes.equals(this.val$oldPrintAttributes)) {
                                bl = false;
                            }
                            this.val$layoutResultCallback.onLayoutFinished(printDocumentInfo, bl);
                        }

                        @Override
                        protected void onPreExecute() {
                            this.val$cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener(){

                                @Override
                                public void onCancel() {
                                    2.this.cancelLoad();
                                    1.this.cancel(false);
                                }
                            });
                        }

                    };
                    this.loadBitmap.execute(new Uri[0]);
                    this.mAttributes = printAttributes2;
                    return;
                }
                object = new PrintDocumentInfo.Builder(string).setContentType(1).setPageCount(1).build();
                if (printAttributes2.equals(printAttributes)) {
                    bl = false;
                }
                layoutResultCallback.onLayoutFinished((PrintDocumentInfo)object, bl);
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public void onWrite(PageRange[] object, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal object2, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
                object = new PrintedPdfDocument(PrintHelperKitkat.this.mContext, this.mAttributes);
                try {
                    object2 = object.startPage(1);
                    Object object3 = new RectF(object2.getInfo().getContentRect());
                    object3 = PrintHelperKitkat.this.getMatrix(this.mBitmap.getWidth(), this.mBitmap.getHeight(), (RectF)object3, this.val$fittingMode);
                    object2.getCanvas().drawBitmap(this.mBitmap, (Matrix)object3, null);
                    object.finishPage((PdfDocument.Page)object2);
                    try {
                        object.writeTo(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                        writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                        {
                            do {
                                return;
                                break;
                            } while (true);
                        }
                    }
                    catch (IOException var3_6) {
                        Log.e("PrintHelperKitkat", "Error writing printed content", var3_6);
                        writeResultCallback.onWriteFailed(null);
                        return;
                    }
                }
                finally {
                    if (object != null) {
                        object.close();
                    }
                    if (parcelFileDescriptor != null) {
                        parcelFileDescriptor.close();
                    }
                }
            }

        };
        PrintManager printManager = (PrintManager)this.mContext.getSystemService("print");
        PrintAttributes.Builder builder = new PrintAttributes.Builder();
        builder.setColorMode(this.mColorMode);
        if (this.mOrientation == 1) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
        } else if (this.mOrientation == 2) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
        }
        printManager.print(string, (PrintDocumentAdapter)object, builder.build());
    }

    public void setColorMode(int n) {
        this.mColorMode = n;
    }

    public void setOrientation(int n) {
        this.mOrientation = n;
    }

    public void setScaleMode(int n) {
        this.mScaleMode = n;
    }

}

