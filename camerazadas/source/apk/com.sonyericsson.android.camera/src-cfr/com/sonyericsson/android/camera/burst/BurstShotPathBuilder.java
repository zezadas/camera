/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$FilePathGenerator
 */
package com.sonyericsson.android.camera.burst;

import com.sonyericsson.cameracommon.mediasaving.EachDirPathBuilder;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameraextension.CameraExtension;

/*
 * Failed to analyse overrides
 */
public class BurstShotPathBuilder
implements CameraExtension.FilePathGenerator {
    EachDirPathBuilder mPathBuilder = new EachDirPathBuilder(MediaSavingConstants.BURST_DIR_NAME);

    public String getNextFilePathToStorePicture() {
        return this.mPathBuilder.assignImageFilePath();
    }
}

