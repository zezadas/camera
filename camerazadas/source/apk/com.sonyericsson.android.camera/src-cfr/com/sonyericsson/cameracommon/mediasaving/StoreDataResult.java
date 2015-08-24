/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;

public class StoreDataResult {
    public final SavingRequest savingRequest;
    public final MediaSavingResult storeResult;
    public final Uri uri;

    /*
     * Enabled aggressive block sorting
     */
    public StoreDataResult(MediaSavingResult mediaSavingResult, Uri uri, SavingRequest savingRequest) {
        this.storeResult = mediaSavingResult;
        this.uri = this.isSuccess() ? uri : Uri.EMPTY;
        this.savingRequest = savingRequest;
    }

    public int getResultCode() {
        return this.storeResult.mResultCode;
    }

    public int getTextId() {
        return this.storeResult.mTextId;
    }

    public boolean isSuccess() {
        if (this.storeResult == MediaSavingResult.SUCCESS) {
            return true;
        }
        return false;
    }
}

