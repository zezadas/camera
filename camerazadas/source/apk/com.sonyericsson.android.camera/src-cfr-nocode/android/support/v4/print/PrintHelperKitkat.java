/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import java.io.FileNotFoundException;

/*
 * Exception performing whole class analysis.
 */
class PrintHelperKitkat {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    private static final String LOG_TAG = "PrintHelperKitkat";
    private static final int MAX_PRINT_SIZE = 3500;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    int mColorMode;
    final Context mContext;
    BitmapFactory.Options mDecodeOptions;
    private final Object mLock;
    int mOrientation;
    int mScaleMode;

    PrintHelperKitkat(Context var1);

    static /* synthetic */ Matrix access$000(PrintHelperKitkat var0, int var1, int var2, RectF var3, int var4);

    static /* synthetic */ Bitmap access$200(PrintHelperKitkat var0, Uri var1, int var2) throws FileNotFoundException;

    static /* synthetic */ Object access$300(PrintHelperKitkat var0);

    private Matrix getMatrix(int var1, int var2, RectF var3, int var4);

    private Bitmap loadBitmap(Uri var1, BitmapFactory.Options var2) throws FileNotFoundException;

    private Bitmap loadConstrainedBitmap(Uri var1, int var2) throws FileNotFoundException;

    public int getColorMode();

    public int getOrientation();

    public int getScaleMode();

    public void printBitmap(String var1, Bitmap var2);

    public void printBitmap(String var1, Uri var2) throws FileNotFoundException;

    public void setColorMode(int var1);

    public void setOrientation(int var1);

    public void setScaleMode(int var1);

}

