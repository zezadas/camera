/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.mediasaving;

import com.sonyericsson.android.camera.burst.BurstInfoUpdator;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class BurstSavingTaskManager
extends SavingTaskManager {
    private static final String TAG;
    private BurstInfoUpdator mBurstInfoUpdator;

    static;

    public BurstSavingTaskManager(BaseActivity var1);

    public BurstInfoUpdator getUpdator();

    public boolean notifyBurstShotGroupStoreComplete(StoreDataResult var1, boolean var2);

    public void prepareBulkInsert();

    public void releaseResource();

    public void setUpdator(BurstInfoUpdator var1);
}

