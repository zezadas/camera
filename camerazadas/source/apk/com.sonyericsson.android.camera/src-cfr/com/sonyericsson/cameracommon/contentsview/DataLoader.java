/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import com.sonyericsson.cameracommon.contentsview.MpoUtils;
import com.sonyericsson.cameracommon.contentsview.PhotoStackQueryHelper;
import com.sonyericsson.cameracommon.contentsview.QueryParameterAdapter;
import com.sonyericsson.cameracommon.contentsview.ThumbnailFactory;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.mediasaving.updator.CrQueryParameter;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;

public class DataLoader
implements Callable<Integer> {
    private static final int COLUMN_INDEX_BUCKETID = 7;
    private static final int COLUMN_INDEX_DATA = 1;
    private static final int COLUMN_INDEX_HEIGHT = 5;
    private static final int COLUMN_INDEX_ID = 0;
    private static final int COLUMN_INDEX_MIME = 2;
    private static final int COLUMN_INDEX_ORIENTATION = 6;
    private static final int COLUMN_INDEX_WIDTH = 4;
    public static final String EXTENDED_FILES_COLUMN_ID = "files_id";
    public static final Uri EXTENDED_FILES_CONTENT_URI;
    public static final float PANORAMA_ASPECT_THRESHOLD = 1.8777778f;
    private static final String TAG;
    private final String[] CONTENT_EXTENSIONS = new String[]{".JPG", ".3gp", ".mp4"};
    private Context mContext;
    private final DataLoadCallback mDataLoadCallback;
    private final boolean mIsRegisterCache;
    private int mMediaId;
    private CrQueryParameter mParam = null;
    private int mRequestId;
    private final ContentResolver mResolver;

    static {
        TAG = DataLoader.class.getSimpleName();
        EXTENDED_FILES_CONTENT_URI = Uri.parse("content://media/external/extended_file");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public DataLoader(int n, Uri uri, Context context, DataLoadCallback dataLoadCallback, boolean bl) {
        this.mRequestId = n;
        try {
            this.mMediaId = Integer.valueOf(uri.getLastPathSegment());
        }
        catch (Exception var2_3) {
            CameraLogger.w(TAG, "mediaId is not corrected.");
        }
        this.mContext = context;
        this.mResolver = this.mContext.getContentResolver();
        this.mDataLoadCallback = dataLoadCallback;
        this.mIsRegisterCache = bl;
    }

    public DataLoader(Context context, List<String> list, int n, DataLoadCallback dataLoadCallback, boolean bl) {
        this.mRequestId = -1;
        this.mParam = this.setupQueryParam(list, n);
        this.mContext = context;
        this.mResolver = this.mContext.getContentResolver();
        this.mDataLoadCallback = dataLoadCallback;
        this.mIsRegisterCache = bl;
    }

    private Bitmap createAntiAliasBitmap(Bitmap bitmap, int n) {
        Bitmap bitmap2;
        Bitmap bitmap3 = bitmap2 = null;
        if (bitmap != null) {
            bitmap3 = bitmap2;
            if (!bitmap.isRecycled()) {
                bitmap3 = Bitmap.createBitmap(bitmap, 0, 0, n, n, null, true);
            }
        }
        return bitmap3;
    }

    /*
     * Enabled aggressive block sorting
     */
    private Content.ContentInfo createContentInfo(Cursor object) {
        int n;
        Uri uri;
        int n2 = this.getMediaId((Cursor)object);
        String string = object.getString(2);
        String string2 = object.getString(1);
        int n3 = object.getInt(4);
        int n4 = object.getInt(5);
        int n5 = object.getInt(7);
        if (string.equals("image/jpeg")) {
            uri = Uri.withAppendedPath(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, String.valueOf(n2));
            n = 1;
        } else if (string.equals("video/mp4")) {
            uri = Uri.withAppendedPath(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, String.valueOf(n2));
            n = 2;
        } else if (string.equals("video/3gpp")) {
            uri = Uri.withAppendedPath(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, String.valueOf(n2));
            n = 2;
        } else {
            if (!string.equals("image/mpo")) {
                return null;
            }
            uri = Uri.withAppendedPath(QueryParameterAdapter.MPO_3DPICTURES_CONTENT_URI, String.valueOf(n2));
            n = 3;
        }
        String string3 = n == 1 ? this.getMpoFilePath(n2) : null;
        int n6 = n == 1 ? object.getInt(6) : 0;
        object = new Content.ContentInfo();
        object.mId = n2;
        object.mOriginalUri = uri;
        object.mOriginalPath = string2;
        object.mMpoPath = string3;
        object.mType = n;
        object.mWidth = n3;
        object.mHeight = n4;
        object.mOrientation = n6;
        object.mMimeType = string;
        object.mPlayable = this.isPlayableContent((Content.ContentInfo)object);
        object.mGroupedImage = this.getGroupedImageCount(n5);
        object.mSomcType = this.getSomcType(string2);
        object.mBucketId = n5;
        object.mContentType = this.getContentType((Content.ContentInfo)object);
        object.mThumbnail = this.decodeThumbnail((Content.ContentInfo)object);
        return object;
    }

    private Bitmap decodeThumbnail(Content.ContentInfo object) {
        Object object2 = null;
        if (object != null) {
            if (object.mOriginalPath == null) {
                object.mOriginalPath = this.getMediaPath(object.mId, object.mType);
            }
            object2 = object = ThumbnailFactory.createMicroThumbnail((Content.ContentInfo)object);
            if (object != null) {
                object2 = this.createAntiAliasBitmap((Bitmap)object, object.getWidth());
            }
        }
        return object2;
    }

    private /* varargs */ String generatePathSelection(String ... arrstring) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("(");
        stringBuilder.append("_data");
        stringBuilder.append(" like '");
        for (String string : arrstring) {
            if (!string.startsWith("/")) {
                stringBuilder.append('/');
            }
            stringBuilder.append(string);
        }
        stringBuilder.append("'");
        stringBuilder.append(" AND ");
        stringBuilder.append("_data NOT LIKE '%/.%'");
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    private List<String> generateQueryPathForEachStorage(List<String> list, List<String> object) {
        object = object.iterator();
        while (object.hasNext()) {
            this.generateQueryPathForOneStorage(list, (String)object.next());
        }
        return list;
    }

    private List<String> generateQueryPathForOneStorage(List<String> list, String string) {
        for (String string2 : this.CONTENT_EXTENSIONS) {
            list.add(this.generatePathSelection(string, Environment.DIRECTORY_DCIM, "%" + string2));
        }
        return list;
    }

    private Content.ContentsType getContentType(Content.ContentInfo contentInfo) {
        if (contentInfo.mType == 1) {
            switch (contentInfo.mSomcType) {
                default: {
                    return Content.ContentsType.PHOTO;
                }
                case 2: 
                case 129: {
                    return Content.ContentsType.BURST;
                }
                case 4: 
                case 130: {
                    return Content.ContentsType.TIME_SHIFT;
                }
                case 42: 
            }
            return Content.ContentsType.SOUND_PHOTO;
        }
        if (contentInfo.mType == 2) {
            switch (contentInfo.mSomcType) {
                default: {
                    if (contentInfo.mWidth < 3840 && contentInfo.mHeight < 3840) break;
                    return Content.ContentsType.VIDEO_4K;
                }
                case 12: {
                    return Content.ContentsType.TIME_SHIFT_VIDEO;
                }
                case 11: {
                    return Content.ContentsType.TIME_SHIFT_VIDEO_120F;
                }
            }
            return Content.ContentsType.VIDEO;
        }
        return Content.ContentsType.NONE;
    }

    private Cursor getCoverImageInfo(int n) {
        Object object = new CrQueryParameter();
        object.projection = new String[]{"_id", "_data", "mime_type", "datetaken", "width", "height", "orientation", "bucket_id", "somctype"};
        object.where = String.format(Locale.US, "%s like '%s'", "_id", n);
        if ((object = PhotoStackQueryHelper.crQuery(this.mResolver, EXTENDED_FILES_CONTENT_URI, (CrQueryParameter)object)) == null) {
            return null;
        }
        if (!object.moveToFirst()) {
            object.close();
            return null;
        }
        this.getSomcType(object.getString(1));
        return object;
    }

    private int getGroupedImageCount(int n) {
        Object object = new CrQueryParameter();
        object.projection = new String[]{"bucket_id"};
        object.sortOrder = String.format(Locale.US, "%s DESC, %s DESC", "datetaken", "title");
        object.where = String.format(Locale.US, "%s like '%s'", "bucket_id", n);
        if ((object = PhotoStackQueryHelper.crQuery(this.mResolver, EXTENDED_FILES_CONTENT_URI, (CrQueryParameter)object)) == null) {
            return 1;
        }
        n = object.getCount();
        object.close();
        return n;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Cursor getLatestImageInfo() {
        Cursor cursor = PhotoStackQueryHelper.crQuery(this.mResolver, EXTENDED_FILES_CONTENT_URI, this.mParam);
        if (cursor == null) {
            return null;
        }
        Cursor cursor2 = cursor;
        if (cursor.moveToFirst()) return cursor2;
        cursor.close();
        return null;
    }

    private int getMediaId(Cursor cursor) {
        return cursor.getInt(0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private String getMediaPath(int n, int n2) {
        Object object;
        Object object2 = new CrQueryParameter();
        switch (n2) {
            default: {
                return null;
            }
            case 1: 
            case 3: {
                object = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                object2.projection = new String[]{"_data"};
                object2.where = String.format(Locale.US, "%s=%s", "_id", n);
                object2.offset = 0;
                object2.limit = 1;
                break;
            }
            case 2: {
                object = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                object2.projection = new String[]{"_data"};
                object2.where = String.format(Locale.US, "%s=%s", "_id", n);
                object2.offset = 0;
                object2.limit = 1;
            }
        }
        if ((object = PhotoStackQueryHelper.crQuery(this.mResolver, (Uri)object, (CrQueryParameter)object2)) == null) return null;
        try {
            if (!object.moveToPosition(0)) return null;
            object2 = object.getString(0);
            return object2;
        }
        catch (RuntimeException var4_4) {
            CameraLogger.e(TAG, "The specified column isn't found.");
            return null;
        }
        finally {
            object.close();
        }
    }

    private String getMpoFilePath(int n) {
        Object object = EXTENDED_FILES_CONTENT_URI;
        Object object2 = new CrQueryParameter();
        object2.projection = new String[]{"filelinkpath"};
        object2.where = String.format(Locale.US, "%s=%s", "files_id", n);
        object2.offset = 0;
        object2.limit = 1;
        if ((object = PhotoStackQueryHelper.crQuery(this.mResolver, (Uri)object, (CrQueryParameter)object2)) == null) {
            return null;
        }
        try {
            if (object.moveToPosition(0)) {
                object2 = object.getString(0);
                return object2;
            }
            return null;
        }
        catch (RuntimeException var3_4) {
            CameraLogger.e(TAG, "The specified column isn't found.");
            return null;
        }
        finally {
            object.close();
        }
    }

    private int getSomcType(String object) {
        CrQueryParameter crQueryParameter = new CrQueryParameter();
        crQueryParameter.projection = new String[]{"_data", "somctype"};
        crQueryParameter.sortOrder = String.format(Locale.US, "%s DESC, %s DESC", "datetaken", "title");
        crQueryParameter.where = String.format(Locale.US, "%s like '%s'", "_data", object);
        object = PhotoStackQueryHelper.crQuery(this.mResolver, EXTENDED_FILES_CONTENT_URI, crQueryParameter);
        if (object == null) {
            return 0;
        }
        int n = 0;
        if (object.moveToFirst()) {
            n = object.getInt(object.getColumnIndex("somctype"));
        }
        object.close();
        return n;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean isPlayableContent(Content.ContentInfo contentInfo) {
        if (contentInfo.mType == 2) {
            do {
                return true;
                break;
            } while (true);
        }
        if (contentInfo.mMpoPath == null) {
            return false;
        }
        switch (MpoUtils.getType(contentInfo.mMpoPath)) {
            case 2: {
                return true;
            }
            default: {
                return false;
            }
            case 1: 
        }
        if (contentInfo.mWidth == 0 || contentInfo.mHeight == 0) {
            return false;
        }
        if ((float)contentInfo.mWidth / (float)contentInfo.mHeight <= 1.8777778f) return false;
        return true;
    }

    private CrQueryParameter setupQueryParam(List<String> object, int n) {
        ArrayList<String> arrayList = new ArrayList<String>();
        this.generateQueryPathForEachStorage((List<String>)arrayList, (List<String>)object);
        object = new CrQueryParameter();
        object.projection = new String[]{"_id", "_data", "mime_type", "datetaken", "width", "height", "orientation", "bucket_id"};
        object.offset = n;
        object.limit = 1;
        object.sortOrder = String.format(Locale.US, "%s DESC, %s DESC", "datetaken", "title");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("(somctype!=129)");
        stringBuilder.append(" AND ");
        stringBuilder.append("(somctype!=130)");
        stringBuilder.append(" AND (");
        for (n = 0; n < arrayList.size(); ++n) {
            if (n != 0) {
                stringBuilder.append(" OR ");
            }
            stringBuilder.append(arrayList.get(n));
        }
        stringBuilder.append(")");
        object.where = stringBuilder.toString();
        return object;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public Integer call() throws Exception {
        Cursor cursor;
        int n;
        Content.ContentInfo contentInfo;
        boolean bl;
        block5 : {
            boolean bl2 = false;
            int n2 = 0;
            cursor = this.mParam != null ? this.getLatestImageInfo() : this.getCoverImageInfo(this.mMediaId);
            contentInfo = null;
            n = n2;
            bl = bl2;
            if (cursor != null) {
                Content.ContentInfo contentInfo2;
                contentInfo = contentInfo2 = this.createContentInfo(cursor);
                n = n2;
                bl = bl2;
                if (contentInfo2 == null) break block5;
                n = contentInfo2.mId;
                bl = true;
                contentInfo = contentInfo2;
            }
        }
        this.mDataLoadCallback.onDataLoaded(bl, contentInfo, this.mRequestId, this.mIsRegisterCache);
        return n;
        finally {
            if (cursor != null) {
                cursor.close();
            }
            this.mParam = null;
        }
    }

    static interface DataLoadCallback {
        public void onDataLoaded(boolean var1, Content.ContentInfo var2, int var3, boolean var4);
    }

}

