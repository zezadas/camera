/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.mediasaving;

import android.app.Activity;
import android.net.Uri;
import com.sonyericsson.android.camera.burst.BurstInfoUpdator;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.updator.MediaProviderUpdator;

public class BurstSavingTaskManager
extends SavingTaskManager {
    private static final String TAG = BurstSavingTaskManager.class.getSimpleName();
    private BurstInfoUpdator mBurstInfoUpdator;

    public BurstSavingTaskManager(BaseActivity baseActivity) {
        super(baseActivity, baseActivity.getStorageManager(), baseActivity.isOneShotPhoto());
    }

    public BurstInfoUpdator getUpdator() {
        return this.mBurstInfoUpdator;
    }

    public boolean notifyBurstShotGroupStoreComplete(StoreDataResult storeDataResult, boolean bl) {
        if (storeDataResult.isSuccess()) {
            MediaProviderUpdator.sendBroadcastCameraShot(this.mActivity, storeDataResult.uri, bl);
        }
        this.notifyStoreComplete(storeDataResult);
        return storeDataResult.isSuccess();
    }

    public void prepareBulkInsert() {
        this.mBurstInfoUpdator.prepareBulkInsert();
    }

    public void releaseResource() {
        if (this.mBurstInfoUpdator != null) {
            this.mBurstInfoUpdator.commitBulkInsert();
        }
    }

    public void setUpdator(BurstInfoUpdator burstInfoUpdator) {
        this.mBurstInfoUpdator = burstInfoUpdator;
    }
}

