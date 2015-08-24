/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$DeviceStabilityCondition
 */
package com.sonymobile.cameracommon.view;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameraextension.CameraExtension;

public class RecognizedCondition {
    private final CameraExtension.DeviceStabilityCondition mCondition;
    private final int mIconId;
    private final int mTextId;

    private RecognizedCondition(CameraExtension.DeviceStabilityCondition deviceStabilityCondition, int n, int n2) {
        this.mCondition = deviceStabilityCondition;
        this.mIconId = n;
        this.mTextId = n2;
    }

    public static RecognizedCondition create(CameraExtension.DeviceStabilityCondition deviceStabilityCondition) {
        if (deviceStabilityCondition == null) {
            return new RecognizedCondition(null, -1, -1);
        }
        switch (.$SwitchMap$com$sonyericsson$cameraextension$CameraExtension$DeviceStabilityCondition[deviceStabilityCondition.ordinal()]) {
            default: {
                return new RecognizedCondition(deviceStabilityCondition, -1, -1);
            }
            case 1: {
                return new RecognizedCondition(deviceStabilityCondition, -1, -1);
            }
            case 2: {
                return new RecognizedCondition(deviceStabilityCondition, R.drawable.cam_condition_motion_icn, -1);
            }
            case 3: {
                return new RecognizedCondition(deviceStabilityCondition, R.drawable.cam_condition_stable_icn, -1);
            }
            case 4: 
        }
        return new RecognizedCondition(deviceStabilityCondition, R.drawable.cam_condition_walk_icn, -1);
    }

    public CameraExtension.DeviceStabilityCondition getCondition() {
        return this.mCondition;
    }

    public int getIconId() {
        return this.mIconId;
    }

    public int getTextId() {
        return this.mTextId;
    }

}

