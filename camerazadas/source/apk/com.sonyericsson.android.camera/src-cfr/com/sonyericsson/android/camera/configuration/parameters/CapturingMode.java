/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.ArrayList;
import java.util.List;

public enum CapturingMode implements ParameterValue
{
    UNKNOWN(-1, -1, 0, 0),
    SCENE_RECOGNITION(2130837522, 2131296465, 1, 0),
    NORMAL(2130837521, 2131296511, 1, 0),
    VIDEO(2130837521, 2131296511, 2, 0),
    SUPERIOR_FRONT(-1, -1, 1, 1),
    FRONT_PHOTO(-1, -1, 1, 1),
    FRONT_VIDEO(-1, -1, 2, 1),
    PHOTO(-1, -1, 1, 0);
    
    private static final String TAG;
    private static final int sParameterTextId = 2131296294;
    private static final CapturingMode[] sPhotoOptions;
    private final int mCameraId;
    private final int mIconId;
    private final int mTextId;
    private final int mType;

    static {
        sPhotoOptions = new CapturingMode[]{SCENE_RECOGNITION, NORMAL};
        TAG = CapturingMode.class.getSimpleName();
    }

    private CapturingMode(int n2, int n3, int n4, int n5) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mType = n4;
        this.mCameraId = n5;
    }

    public static CapturingMode convertFrom(String string, CapturingMode capturingMode) {
        try {
            CapturingMode capturingMode2 = CapturingMode.valueOf(string);
            return capturingMode2;
        }
        catch (IllegalArgumentException var2_3) {
            CameraLogger.w(TAG, "Mode[" + string + "] is not supported.");
            return capturingMode;
        }
    }

    public static CapturingMode[] getPhotoOptions() {
        return (CapturingMode[])sPhotoOptions.clone();
    }

    public static List<CapturingMode> getValidOptions(CameraActivity cameraActivity) {
        ArrayList<CapturingMode> arrayList = new ArrayList<CapturingMode>();
        if (cameraActivity.isPhotoIn()) {
            arrayList.add(NORMAL);
        }
        if (cameraActivity.isVideoIn()) {
            arrayList.add(VIDEO);
        }
        if (HardwareCapability.getInstance().isSceneRecognitionSupported(0)) {
            arrayList.add(SCENE_RECOGNITION);
        }
        if (HardwareCapability.isFrontCameraSupported()) {
            arrayList.add(FRONT_PHOTO);
        }
        if (HardwareCapability.isFrontCameraSupported() && HardwareCapability.getInstance().isSceneRecognitionSupported(1)) {
            arrayList.add(SUPERIOR_FRONT);
        }
        return arrayList;
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public int getCameraId() {
        return this.mCameraId;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.CAPTURING_MODE;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296294;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return arrparameterValue[0];
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }

    public int getType() {
        return this.mType;
    }

    @Override
    public String getValue() {
        return this.toString();
    }

    public boolean isFront() {
        if (this.mCameraId == 1) {
            return true;
        }
        return false;
    }

    public boolean isMainPhoto() {
        if (this.getType() == 1 && this.getCameraId() == 0) {
            return true;
        }
        return false;
    }

    public boolean isManual() {
        if (this == NORMAL || this == PHOTO || this == VIDEO) {
            return true;
        }
        return false;
    }

    public boolean isSuperiorAuto() {
        if (this == SCENE_RECOGNITION || this == SUPERIOR_FRONT) {
            return true;
        }
        return false;
    }
}

