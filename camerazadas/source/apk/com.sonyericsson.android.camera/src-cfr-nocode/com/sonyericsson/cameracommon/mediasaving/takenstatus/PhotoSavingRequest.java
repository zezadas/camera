/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.takenstatus;

import android.content.ContentValues;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class PhotoSavingRequest
extends SavingRequest {
    private static final String TAG;
    public final TakenStatusPhoto photo;

    static;

    public PhotoSavingRequest(PhotoSavingRequest var1);

    public PhotoSavingRequest(PhotoSavingRequest var1, int var2);

    public PhotoSavingRequest(TakenStatusCommon var1, TakenStatusPhoto var2);

    @Override
    public ContentValues createContentValues(String var1);

    public byte[] getImageData();

    @Override
    public void log();

    public void setImageData(byte[] var1);
}

