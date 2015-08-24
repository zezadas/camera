/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.updator;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.AsyncTask;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.mediasaving.updator.CrDeleteParameter;
import com.sonyericsson.cameracommon.mediasaving.updator.CrQueryParameter;
import com.sonyericsson.cameracommon.mediasaving.updator.CrUpdateParameter;
import java.io.InputStream;
import java.io.OutputStream;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ContentResolverUtil {
    private static final String MPO_EXTENSION = ".MPO";
    private static final String TAG;

    static;

    public ContentResolverUtil();

    static /* synthetic */ boolean access$000(Context var0, Uri var1, boolean var2);

    public static int crBulkInsert(Context var0, Uri var1, ContentValues[] var2);

    public static int crDelete(Context var0, Uri var1, CrDeleteParameter var2);

    public static InputStream crOpenInputStream(Context var0, Uri var1);

    public static OutputStream crOpenOutputStream(Context var0, Uri var1);

    public static Cursor crQuery(Context var0, Uri var1, CrQueryParameter var2);

    public static int crUpdate(Context var0, Uri var1, CrUpdateParameter var2);

    public static boolean deleteImage(Context var0, Uri var1);

    private static void deleteImageByFilePath(Context var0, String var1);

    private static boolean deleteImageImpl(Context var0, Uri var1, boolean var2);

    public static void executeDeteleTask(Context var0, Uri var1, boolean var2, ContentResolverUtilListener var3);

    public static boolean isExist(Context var0, Uri var1);

    private static String removeExtension(String var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class AsyncDeleteTask
    extends AsyncTask<Void, Void, Boolean> {
        private final Context mContext;
        private final ContentResolverUtilListener mListener;
        private final Uri mUri;
        private final boolean mWithMpo;

        public AsyncDeleteTask(Context var1, Uri var2, boolean var3, ContentResolverUtilListener var4);

        protected /* varargs */ Boolean doInBackground(Void ... var1);

        @Override
        protected void onPostExecute(Boolean var1);
    }

}

