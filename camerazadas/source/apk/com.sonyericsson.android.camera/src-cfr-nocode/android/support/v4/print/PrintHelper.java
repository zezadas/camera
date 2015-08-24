/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.print.PrintHelperKitkat;
import java.io.FileNotFoundException;

/*
 * Exception performing whole class analysis.
 */
public final class PrintHelper {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    PrintHelperVersionImpl mImpl;

    public PrintHelper(Context var1);

    public static boolean systemSupportsPrint();

    public int getColorMode();

    public int getOrientation();

    public int getScaleMode();

    public void printBitmap(String var1, Bitmap var2);

    public void printBitmap(String var1, Uri var2) throws FileNotFoundException;

    public void setColorMode(int var1);

    public void setOrientation(int var1);

    public void setScaleMode(int var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class PrintHelperKitkatImpl
    implements PrintHelperVersionImpl {
        private final PrintHelperKitkat mPrintHelper;

        PrintHelperKitkatImpl(Context var1);

        @Override
        public int getColorMode();

        @Override
        public int getOrientation();

        @Override
        public int getScaleMode();

        @Override
        public void printBitmap(String var1, Bitmap var2);

        @Override
        public void printBitmap(String var1, Uri var2) throws FileNotFoundException;

        @Override
        public void setColorMode(int var1);

        @Override
        public void setOrientation(int var1);

        @Override
        public void setScaleMode(int var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class PrintHelperStubImpl
    implements PrintHelperVersionImpl {
        int mColorMode;
        int mOrientation;
        int mScaleMode;

        private PrintHelperStubImpl();

        /* synthetic */ PrintHelperStubImpl( var1);

        @Override
        public int getColorMode();

        @Override
        public int getOrientation();

        @Override
        public int getScaleMode();

        @Override
        public void printBitmap(String var1, Bitmap var2);

        @Override
        public void printBitmap(String var1, Uri var2);

        @Override
        public void setColorMode(int var1);

        @Override
        public void setOrientation(int var1);

        @Override
        public void setScaleMode(int var1);
    }

    static interface PrintHelperVersionImpl {
        public int getColorMode();

        public int getOrientation();

        public int getScaleMode();

        public void printBitmap(String var1, Bitmap var2);

        public void printBitmap(String var1, Uri var2) throws FileNotFoundException;

        public void setColorMode(int var1);

        public void setOrientation(int var1);

        public void setScaleMode(int var1);
    }

}

