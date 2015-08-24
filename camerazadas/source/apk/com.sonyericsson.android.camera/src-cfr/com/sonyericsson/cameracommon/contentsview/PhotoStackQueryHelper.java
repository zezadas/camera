/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.updator.CrDeleteParameter;
import com.sonyericsson.cameracommon.mediasaving.updator.CrQueryParameter;
import java.util.Locale;

public class PhotoStackQueryHelper {
    private static final String TAG = "PhotoStackQueryHelper";

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static int crDelete(ContentResolver contentResolver, Uri uri, CrDeleteParameter crDeleteParameter) {
        synchronized (PhotoStackQueryHelper.class) {
            int n = 0;
            try {
                void var1_2;
                int n2 = contentResolver.delete((Uri)var1_2, var2_3.where, var2_3.selectionArgs);
                return n2;
            }
            catch (Exception var0_1) {}
            return n;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Cursor crQuery(ContentResolver object, Uri uri, CrQueryParameter crQueryParameter) {
        synchronized (PhotoStackQueryHelper.class) {
            String string;
            Object var4_5;
            block6 : {
                var4_5 = null;
                if (crQueryParameter.limit <= 0) break block6;
                string = String.format(Locale.US, "%s limit %d offset %d", crQueryParameter.sortOrder, crQueryParameter.limit, crQueryParameter.offset);
                do {
                    return object.query(uri, crQueryParameter.projection, crQueryParameter.where, crQueryParameter.selectionArgs, string);
                    break;
                } while (true);
            }
            try {
                string = crQueryParameter.sortOrder;
                return object.query(uri, crQueryParameter.projection, crQueryParameter.where, crQueryParameter.selectionArgs, string);
            }
            catch (Throwable var0_1) {
                throw var0_1;
            }
            catch (Exception var0_2) {
                return var4_5;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean deleteImage(ContentResolver contentResolver, Uri uri) {
        int n = 0;
        int n2 = 0;
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
        if ((object = PhotoStackQueryHelper.crQuery(contentResolver, uri, (CrQueryParameter)object)) != null) {
            n = n2;
            for (int i = 0; i < object.getCount(); ++i) {
                object.moveToPosition(i);
                object.getString(1);
                CrDeleteParameter crDeleteParameter = new CrDeleteParameter();
                crDeleteParameter.where = "_id=" + Long.valueOf(ContentUris.parseId(uri)).toString();
                crDeleteParameter.selectionArgs = null;
                n2 = n;
                if (PhotoStackQueryHelper.crDelete(contentResolver, uri, crDeleteParameter) != 1) {
                    n2 = n + 1;
                }
                n = n2;
            }
            object.close();
        }
        if (n != 0) return false;
        return true;
    }
}

