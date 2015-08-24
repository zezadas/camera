/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.capability;

import com.sonyericsson.cameracommon.utility.ClassDefinitionChecker;

public class VideoCodecCapability {
    public static boolean isH265Supported() {
        return ClassDefinitionChecker.isMediaRecorderH265Supported();
    }
}

