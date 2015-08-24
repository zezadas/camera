/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.updator;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteFullException;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.AsyncTask;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.mediasaving.updator.CrDeleteParameter;
import com.sonyericsson.cameracommon.mediasaving.updator.CrQueryParameter;
import com.sonyericsson.cameracommon.mediasaving.updator.CrUpdateParameter;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Locale;

public class ContentResolverUtil {
    private static final String MPO_EXTENSION = ".MPO";
    private static final String TAG = ContentResolverUtil.class.getSimpleName();

    public static int crBulkInsert(Context context, Uri uri, ContentValues[] arrcontentValues) {
        try {
            int n = context.getContentResolver().bulkInsert(uri, arrcontentValues);
            return n;
        }
        catch (SQLiteFullException var0_1) {
            throw var0_1;
        }
        catch (Exception var0_2) {
            return 0;
        }
    }

    public static int crDelete(Context context, Uri uri, CrDeleteParameter crDeleteParameter) {
        try {
            int n = context.getContentResolver().delete(uri, crDeleteParameter.where, crDeleteParameter.selectionArgs);
            return n;
        }
        catch (Exception var0_1) {
            return 0;
        }
    }

    public static InputStream crOpenInputStream(Context object, Uri uri) {
        try {
            object = object.getContentResolver().openInputStream(uri);
            return object;
        }
        catch (Exception var0_1) {
            return null;
        }
    }

    public static OutputStream crOpenOutputStream(Context object, Uri uri) {
        try {
            object = object.getContentResolver().openOutputStream(uri);
            return object;
        }
        catch (Exception var0_1) {
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Cursor crQuery(Context context, Uri uri, CrQueryParameter crQueryParameter) {
        try {
            String string;
            if (crQueryParameter.limit > 0) {
                string = String.format(Locale.US, "%s limit %d offset %d", crQueryParameter.sortOrder, crQueryParameter.limit, crQueryParameter.offset);
                do {
                    return context.getContentResolver().query(uri, crQueryParameter.projection, crQueryParameter.where, crQueryParameter.selectionArgs, string);
                    break;
                } while (true);
            }
            string = crQueryParameter.sortOrder;
            return context.getContentResolver().query(uri, crQueryParameter.projection, crQueryParameter.where, crQueryParameter.selectionArgs, string);
        }
        catch (Exception var0_1) {
            return null;
        }
    }

    public static int crUpdate(Context context, Uri uri, CrUpdateParameter crUpdateParameter) {
        try {
            int n = context.getContentResolver().update(uri, crUpdateParameter.values, crUpdateParameter.where, crUpdateParameter.selectionArgs);
            return n;
        }
        catch (SQLiteFullException var0_1) {
            throw var0_1;
        }
        catch (Exception var0_2) {
            return 0;
        }
    }

    public static boolean deleteImage(Context context, Uri uri) {
        return ContentResolverUtil.deleteImageImpl(context, uri, false);
    }

    private static void deleteImageByFilePath(Context context, String string) {
        if (new File(string).delete()) {
            MediaScannerConnection.OnScanCompletedListener onScanCompletedListener = new MediaScannerConnection.OnScanCompletedListener(){

                @Override
                public void onScanCompleted(String string, Uri uri) {
                }
            };
            MediaScannerConnection.scanFile(context, new String[]{string}, new String[]{null}, onScanCompletedListener);
        }
    }

    private static boolean deleteImageImpl(Context context, Uri uri, boolean bl) {
        if (uri == null) {
            return false;
        }
        Object object = new CrQueryParameter();
        object.projection = new String[]{"_id", "_data"};
        object.where = null;
        object.selectionArgs = null;
        object.sortOrder = null;
        object.limit = 0;
        object.offset = 0;
        object = ContentResolverUtil.crQuery(context, uri, (CrQueryParameter)object);
        int n = 0;
        int n2 = 0;
        if (object != null) {
            n = n2;
            for (int i = 0; i < object.getCount(); ++i) {
                object.moveToPosition(i);
                String string = object.getString(1);
                CrDeleteParameter crDeleteParameter = new CrDeleteParameter();
                crDeleteParameter.where = "_id=" + Long.valueOf(ContentUris.parseId(uri)).toString();
                crDeleteParameter.selectionArgs = null;
                n2 = n;
                if (ContentResolverUtil.crDelete(context, uri, crDeleteParameter) != 1) {
                    n2 = n + 1;
                }
                if (bl) {
                    ContentResolverUtil.deleteImageByFilePath(context, ContentResolverUtil.removeExtension(string) + ".MPO");
                }
                n = n2;
            }
            object.close();
        }
        if (n == 0) {
            return true;
        }
        return false;
    }

    public static void executeDeteleTask(Context context, Uri uri, boolean bl, ContentResolverUtilListener contentResolverUtilListener) {
        new AsyncDeleteTask(context, uri, bl, contentResolverUtilListener).execute(new Void[0]);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static boolean isExist(Context object, Uri uri) {
        boolean bl = true;
        Object var3_5 = null;
        try {
            object = object.getContentResolver().openInputStream(uri);
        }
        catch (Exception var0_1) {
            bl = false;
            object = var3_5;
        }
        if (object == null) return bl;
        try {
            object.close();
            return bl;
        }
        catch (Exception exception) {
            return bl;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static String removeExtension(String string) {
        if (string == null) {
            return null;
        }
        int n = string.lastIndexOf(".");
        String string2 = string;
        if (n == -1) return string2;
        return string.substring(0, n);
    }

    static class AsyncDeleteTask
    extends AsyncTask<Void, Void, Boolean> {
        private final Context mContext;
        private final ContentResolverUtilListener mListener;
        private final Uri mUri;
        private final boolean mWithMpo;

        public AsyncDeleteTask(Context context, Uri uri, boolean bl, ContentResolverUtilListener contentResolverUtilListener) {
            this.mContext = context;
            this.mUri = uri;
            this.mWithMpo = bl;
            this.mListener = contentResolverUtilListener;
        }

        protected /* varargs */ Boolean doInBackground(Void ... arrvoid) {
            return ContentResolverUtil.deleteImageImpl(this.mContext, this.mUri, this.mWithMpo);
        }

        @Override
        protected void onPostExecute(Boolean bl) {
            if (this.mListener != null) {
                this.mListener.onDeleted(bl, this.mUri);
            }
        }
    }

}

