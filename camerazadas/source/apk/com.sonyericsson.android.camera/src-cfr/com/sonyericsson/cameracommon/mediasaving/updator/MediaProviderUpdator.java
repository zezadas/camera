/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.updator;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteFullException;
import android.net.Uri;
import com.sonyericsson.cameracommon.autoupload.AutoUploadSettings;
import com.sonyericsson.cameracommon.mediasaving.DcfPathBuilder;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtil;
import com.sonyericsson.cameracommon.mediasaving.updator.CrUpdateParameter;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class MediaProviderUpdator {
    private static final String TAG = MediaProviderUpdator.class.getSimpleName();
    protected Context mContext = null;
    private final boolean mIsOneShotPhoto;

    public MediaProviderUpdator(Context context, boolean bl) {
        this.mContext = context;
        DcfPathBuilder.getInstance().resetStatus();
        this.mIsOneShotPhoto = bl;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Uri crInsert(Uri uri, ContentValues contentValues) {
        synchronized (this) {
            try {
                return this.mContext.getContentResolver().insert(uri, contentValues);
            }
            catch (SQLiteFullException var1_2) {
                throw var1_2;
            }
            catch (Exception var1_4) {
                return null;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private Uri crQuery(String object) {
        Object var3_3 = null;
        synchronized (this) {
            Cursor cursor;
            block9 : {
                cursor = this.mContext.getContentResolver().query(MediaSavingConstants.VIDEO_STORAGE_URI, new String[]{"_id"}, (String)object, null, null);
                object = var3_3;
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        int n = cursor.getInt(0);
                        object = Uri.withAppendedPath(MediaSavingConstants.VIDEO_STORAGE_URI, String.valueOf(n));
                        break block9;
                    }
                    object = var3_3;
                }
            }
            return object;
            finally {
                cursor.close();
            }
        }
    }

    private String getQueryParam(String string) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("(").append("_data").append("=").append("'" + string + "'").append(")");
        return stringBuilder.toString();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Uri insertVideoContentManager(VideoSavingRequest object, String object2) {
        Object object3 = object.getFilePath();
        object2 = object.createContentValues((String)object2);
        if ((object3 = this.crQuery(this.getQueryParam((String)object3))) != null) {
            object = new CrUpdateParameter();
            object.values = object2;
            if (ContentResolverUtil.crUpdate(this.mContext, (Uri)object3, (CrUpdateParameter)object) > 0) return object3;
            return null;
        }
        if (object.getSomcType() == 0) {
            return this.crInsert(MediaSavingConstants.VIDEO_STORAGE_URI, (ContentValues)object2);
        }
        object2.put("somctype", object.getSomcType());
        return this.crInsert(MediaSavingConstants.EXTENDED_VIDEO_STORAGE_URI, (ContentValues)object2);
    }

    private void logInsertedContent(ContentValues contentValues) {
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void sendBroadcastCameraShot(Context context, Uri uri, boolean bl) {
        if (uri == null || context == null) return;
        String string = uri.toString();
        if (string.startsWith(MediaSavingConstants.EXTENDED_PHOTO_STORAGE_URI.toString())) {
            uri = Uri.parse(string.replaceFirst(MediaSavingConstants.EXTENDED_PHOTO_STORAGE_URI.toString(), MediaSavingConstants.STANDARD_PHOTO_STORAGE_URI.toString()));
            context.sendBroadcast(new Intent("android.hardware.action.NEW_PICTURE", uri));
            if (bl) return;
            {
                AutoUploadSettings.sendBroadcastIntent(context, uri);
                return;
            }
        }
        if (string.contains((CharSequence)MediaSavingConstants.PHOTO_STORAGE_URI.toString())) {
            context.sendBroadcast(new Intent("android.hardware.action.NEW_PICTURE", uri));
            AutoUploadSettings.sendBroadcastIntent(context, uri);
            return;
        }
        if (!string.contains((CharSequence)MediaSavingConstants.VIDEO_STORAGE_URI.toString())) {
            return;
        }
        context.sendBroadcast(new Intent("android.hardware.action.NEW_VIDEO", uri));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public StoreDataResult insertPictureAndSendIntent(PhotoSavingRequest photoSavingRequest, boolean bl) {
        String string = photoSavingRequest.getFilePath();
        MediaSavingResult mediaSavingResult = MediaSavingResult.FAIL;
        Uri uri = Uri.EMPTY;
        MediaSavingResult mediaSavingResult2 = mediaSavingResult;
        Uri uri2 = uri;
        if (string != null) {
            uri2 = uri;
            try {
                uri = this.insertPictureContentManager(photoSavingRequest, "");
                mediaSavingResult2 = mediaSavingResult;
                uri2 = uri;
                if (uri != null) {
                    uri2 = uri;
                    mediaSavingResult2 = MediaSavingResult.SUCCESS;
                    uri2 = uri;
                }
            }
            catch (SQLiteFullException var3_7) {
                mediaSavingResult2 = MediaSavingResult.FAIL_MEMORY_FULL;
            }
        }
        if (mediaSavingResult2 == MediaSavingResult.SUCCESS) {
            photoSavingRequest.notifyStoreResult(new StoreDataResult(mediaSavingResult2, uri2, photoSavingRequest));
            if (!bl) return new StoreDataResult(mediaSavingResult2, uri2, photoSavingRequest);
            if (this.mIsOneShotPhoto) return new StoreDataResult(mediaSavingResult2, uri2, photoSavingRequest);
            MediaProviderUpdator.sendBroadcastCameraShot(this.mContext, uri2, false);
            return new StoreDataResult(mediaSavingResult2, uri2, photoSavingRequest);
        }
        CameraLogger.e(TAG, "Failed to inserting a photo:" + (Object)mediaSavingResult2);
        photoSavingRequest.notifyStoreFailed(mediaSavingResult2);
        return new StoreDataResult(mediaSavingResult2, uri2, photoSavingRequest);
    }

    public Uri insertPictureContentManager(PhotoSavingRequest photoSavingRequest, String string) {
        Uri uri = MediaSavingConstants.PHOTO_STORAGE_URI;
        if (photoSavingRequest.common.savedFileType == SavingTaskManager.SavedFileType.BURST) {
            uri = MediaSavingConstants.EXTENDED_PHOTO_STORAGE_URI;
        }
        return this.crInsert(uri, photoSavingRequest.createContentValues(string));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public Uri insertVideoAndSendIntent(VideoSavingRequest object, String string, boolean bl) {
        String string2 = object.getFilePath();
        MediaSavingResult mediaSavingResult = MediaSavingResult.FAIL;
        Uri uri = Uri.EMPTY;
        MediaSavingResult mediaSavingResult2 = mediaSavingResult;
        Object object2 = uri;
        if (string2 != null) {
            object2 = uri;
            try {
                object = this.insertVideoContentManager((VideoSavingRequest)object, string);
                mediaSavingResult2 = mediaSavingResult;
                object2 = object;
                if (object != null) {
                    object2 = object;
                    mediaSavingResult2 = MediaSavingResult.SUCCESS;
                    object2 = object;
                }
            }
            catch (SQLiteFullException var1_2) {
                mediaSavingResult2 = MediaSavingResult.FAIL_MEMORY_FULL;
            }
        }
        if (mediaSavingResult2 != MediaSavingResult.SUCCESS) {
            CameraLogger.e(TAG, "Failed to inserting a video:" + (Object)mediaSavingResult2);
            return object2;
        }
        if (bl) {
            MediaProviderUpdator.sendBroadcastCameraShot(this.mContext, (Uri)object2, false);
        }
        return object2;
    }
}

