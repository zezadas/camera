/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$DeviceStabilityCondition
 */
package com.sonymobile.cameracommon.view;

import com.sonyericsson.cameraextension.CameraExtension;

/*
 * Exception performing whole class analysis.
 */
public class RecognizedCondition {
    private final CameraExtension.DeviceStabilityCondition mCondition;
    private final int mIconId;
    private final int mTextId;

    private RecognizedCondition(CameraExtension.DeviceStabilityCondition var1, int var2, int var3);

    public static RecognizedCondition create(CameraExtension.DeviceStabilityCondition var0);

    public CameraExtension.DeviceStabilityCondition getCondition();

    public int getIconId();

    public int getTextId();

}

