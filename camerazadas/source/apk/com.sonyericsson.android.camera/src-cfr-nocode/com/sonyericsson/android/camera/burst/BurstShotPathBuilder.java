/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$FilePathGenerator
 */
package com.sonyericsson.android.camera.burst;

import com.sonyericsson.cameracommon.mediasaving.EachDirPathBuilder;
import com.sonyericsson.cameraextension.CameraExtension;
import java.io.IOException;

/*
 * Failed to analyse overrides
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class BurstShotPathBuilder
implements CameraExtension.FilePathGenerator {
    EachDirPathBuilder mPathBuilder;

    public BurstShotPathBuilder() throws IOException;

    public String getNextFilePathToStorePicture();
}

