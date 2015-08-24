/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$MediaProviderUpdator
 */
package com.sonyericsson.android.camera.burst;

import com.sonyericsson.android.camera.mediasaving.BurstMediaProviderUpdator;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameraextension.CameraExtension;

/*
 * Failed to analyse overrides
 * Exception performing whole class analysis.
 */
public class BurstInfoUpdator
extends BurstMediaProviderUpdator
implements CameraExtension.MediaProviderUpdator {
    private final PhotoSavingRequest mSavingRequest;

    public BurstInfoUpdator(BaseActivity var1, PhotoSavingRequest var2);

    public void insert(String var1);
}

