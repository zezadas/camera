/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.updator;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MediaProviderUpdator {
    private static final String TAG;
    protected Context mContext;
    private final boolean mIsOneShotPhoto;

    static;

    public MediaProviderUpdator(Context var1, boolean var2);

    private Uri crInsert(Uri var1, ContentValues var2);

    private Uri crQuery(String var1);

    private String getQueryParam(String var1);

    private Uri insertVideoContentManager(VideoSavingRequest var1, String var2);

    private void logInsertedContent(ContentValues var1);

    public static void sendBroadcastCameraShot(Context var0, Uri var1, boolean var2);

    public StoreDataResult insertPictureAndSendIntent(PhotoSavingRequest var1, boolean var2);

    public Uri insertPictureContentManager(PhotoSavingRequest var1, String var2);

    public Uri insertVideoAndSendIntent(VideoSavingRequest var1, String var2, boolean var3);
}

