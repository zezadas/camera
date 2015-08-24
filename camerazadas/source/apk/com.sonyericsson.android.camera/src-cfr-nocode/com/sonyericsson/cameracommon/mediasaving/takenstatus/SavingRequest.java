/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.takenstatus;

import android.content.ContentValues;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class SavingRequest {
    private static final String TAG;
    public final TakenStatusCommon common;

    static;

    public SavingRequest(SavingRequest var1);

    public SavingRequest(SavingRequest var1, int var2);

    public SavingRequest(TakenStatusCommon var1);

    public void addCallback(StoreDataCallback var1);

    public abstract ContentValues createContentValues(String var1);

    public long getDateTaken();

    public Uri getExtraOutput();

    public String getFilePath();

    public int getRequestId();

    public int getSomcType();

    public void log();

    public void notifyStoreFailed(MediaSavingResult var1);

    public void notifyStoreResult(StoreDataResult var1);

    public void setDateTaken(long var1);

    public void setExtraOutput(Uri var1);

    public void setFilePath(String var1);

    public void setRequestId(int var1);

    public void setSomcType(int var1);

    public static interface StoreDataCallback {
        public void onStoreComplete(StoreDataResult var1);
    }

}

