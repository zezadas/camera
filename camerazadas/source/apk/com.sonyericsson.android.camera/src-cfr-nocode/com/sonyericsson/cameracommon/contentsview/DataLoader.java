/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.mediasaving.updator.CrQueryParameter;
import java.util.List;
import java.util.concurrent.Callable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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
    private final String[] CONTENT_EXTENSIONS;
    private Context mContext;
    private final DataLoadCallback mDataLoadCallback;
    private final boolean mIsRegisterCache;
    private int mMediaId;
    private CrQueryParameter mParam;
    private int mRequestId;
    private final ContentResolver mResolver;

    static;

    public DataLoader(int var1, Uri var2, Context var3, DataLoadCallback var4, boolean var5);

    public DataLoader(Context var1, List<String> var2, int var3, DataLoadCallback var4, boolean var5);

    private Bitmap createAntiAliasBitmap(Bitmap var1, int var2);

    private Content.ContentInfo createContentInfo(Cursor var1);

    private Bitmap decodeThumbnail(Content.ContentInfo var1);

    private /* varargs */ String generatePathSelection(String ... var1);

    private List<String> generateQueryPathForEachStorage(List<String> var1, List<String> var2);

    private List<String> generateQueryPathForOneStorage(List<String> var1, String var2);

    private Content.ContentsType getContentType(Content.ContentInfo var1);

    private Cursor getCoverImageInfo(int var1);

    private int getGroupedImageCount(int var1);

    private Cursor getLatestImageInfo();

    private int getMediaId(Cursor var1);

    private String getMediaPath(int var1, int var2);

    private String getMpoFilePath(int var1);

    private int getSomcType(String var1);

    private boolean isPlayableContent(Content.ContentInfo var1);

    private CrQueryParameter setupQueryParam(List<String> var1, int var2);

    @Override
    public Integer call() throws Exception;

    static interface DataLoadCallback {
        public void onDataLoaded(boolean var1, Content.ContentInfo var2, int var3, boolean var4);
    }

}

