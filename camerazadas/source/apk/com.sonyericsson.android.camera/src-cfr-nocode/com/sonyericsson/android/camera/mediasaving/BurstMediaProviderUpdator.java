/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.mediasaving;

import android.content.ContentValues;
import android.content.Context;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.updator.MediaProviderUpdator;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class BurstMediaProviderUpdator
extends MediaProviderUpdator {
    private static final int MAX_COUNT_BULK_INSERT = 100;
    private static final String TAG;
    private List<ContentValues> mInsertPictureRequestList;

    static;

    public BurstMediaProviderUpdator(Context var1, boolean var2);

    public void addInsertPictureRequest(PhotoSavingRequest var1);

    public StoreDataResult commitBulkInsert();

    public void prepareBulkInsert();
}

