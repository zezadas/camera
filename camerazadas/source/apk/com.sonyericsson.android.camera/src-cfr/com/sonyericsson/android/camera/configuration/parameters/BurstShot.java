/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.graphics.Rect;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import java.util.ArrayList;
import java.util.List;

public enum BurstShot implements ParameterValue
{
    HIGH(-1, 2131296521, 1, "on"),
    BEST_EFFORT(-1, 2131296520, 1, "off"),
    OFF(-1, 2131296304, -1, "off");
    
    private static final int sParameterTextId = 2131296491;
    private final int mIconId;
    private final int mQuality;
    private final int mTextId;
    private final String mValue;

    private BurstShot(int n2, int n3, int n4, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mQuality = n4;
        this.mValue = string2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Resolution getBurstResolution(Parameters object) {
        Resolution[] arrresolution = object.getResolution();
        if (object.getBurstShot() != HIGH) return arrresolution;
        Rect rect = arrresolution.getPictureRect();
        object = HardwareCapability.getCapability((int)object.capturingMode.getCameraId()).MAX_BURST_SHOT_SIZE.get();
        if (rect.width() * rect.height() <= object.width() * object.height()) {
            return arrresolution;
        }
        for (Resolution resolution : Resolution.values()) {
            if (!resolution.getPictureRect().equals(object)) continue;
            return resolution;
        }
        throw new IllegalStateException("max burst size is not contained in supported." + rect);
    }

    public static BurstShot getDefault() {
        return OFF;
    }

    public static BurstShot[] getOptions() {
        return BurstShot.values();
    }

    public static BurstShot[] getOptions(boolean bl, CapturingMode capturingMode) {
        ArrayList<BurstShot> arrayList = new ArrayList<BurstShot>();
        if (!(bl || capturingMode != CapturingMode.SCENE_RECOGNITION && capturingMode != CapturingMode.FRONT_PHOTO && capturingMode != CapturingMode.SUPERIOR_FRONT)) {
            if (!(capturingMode.getCameraId() != 0 || HardwareCapability.getCapability((int)capturingMode.getCameraId()).BURST_SHOT.get().isEmpty())) {
                arrayList.add(HIGH);
            }
            arrayList.add(BEST_EFFORT);
        }
        arrayList.add(OFF);
        return arrayList.toArray(new BurstShot[0]);
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.BURST_SHOT;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296491;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    public int getQuality() {
        return this.mQuality;
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return arrparameterValue[0];
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }

    @Override
    public String getValue() {
        return this.mValue;
    }

    public boolean isBurstShotOn() {
        if (!this.equals(OFF)) {
            return true;
        }
        return false;
    }
}

