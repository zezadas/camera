/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;

/*
 * Exception performing whole class analysis.
 */
public class StoreDataResult {
    public final SavingRequest savingRequest;
    public final MediaSavingResult storeResult;
    public final Uri uri;

    public StoreDataResult(MediaSavingResult var1, Uri var2, SavingRequest var3);

    public int getResultCode();

    public int getTextId();

    public boolean isSuccess();
}

