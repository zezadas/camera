/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.device.CameraExtensionVersion;
import java.util.List;

public enum SoftSkin implements ParameterValue
{
    ON(-1, 2131296303, Scene.SOFT_SKIN, 0.5f),
    OFF(-1, 2131296304, Scene.OFF, 0.0f);
    
    private static final int sParameterTextId = 2131296487;
    private final int mIconId;
    private final Scene mScene;
    private final int mTextId;
    private final float mValue;

    private SoftSkin(int n2, int n3, Scene scene, float f) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mScene = scene;
        this.mValue = f;
    }

    public static SoftSkin[] getOptions(CapturingMode capturingMode) {
        if (capturingMode == CapturingMode.FRONT_PHOTO || capturingMode == CapturingMode.SUPERIOR_FRONT) {
            List<String> list = HardwareCapability.getCapability((int)capturingMode.getCameraId()).SCENE.get();
            if (HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8)) {
                if (list.contains("portrait") && HardwareCapability.getInstance().getMaxSoftSkinLevel(capturingMode.getCameraId()) > 0) {
                    return new SoftSkin[]{ON, OFF};
                }
                if (list.contains("soft-skin")) {
                    return new SoftSkin[]{ON, OFF};
                }
                return new SoftSkin[0];
            }
            if (list.contains("soft-skin")) {
                return new SoftSkin[]{ON, OFF};
            }
            return new SoftSkin[0];
        }
        return new SoftSkin[0];
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    public String getLevel(int n) {
        return String.valueOf((int)((float)n * this.mValue));
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.SOFT_SKIN;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296487;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    public int getParameterkeyTitleTextId() {
        return 2131296492;
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return ON;
    }

    public Scene getScene() {
        return this.mScene;
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }

    @Override
    public String getValue() {
        return this.toString();
    }

    public boolean isOn() {
        if (ON == this) {
            return true;
        }
        return false;
    }
}

