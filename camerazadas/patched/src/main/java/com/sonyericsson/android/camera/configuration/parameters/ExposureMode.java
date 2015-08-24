/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.graphics.Rect;
import android.util.Log;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.device.CameraExtensionVersion;

import java.util.ArrayList;
import java.util.List;

import sonyericsson.camera.R;

import static android.app.PendingIntent.getActivity;

public enum ExposureMode implements ParameterValue {
    Exposure_AUTO(-1, R.string.cam_strings_exposure_mode_auto_txt_mod, "auto"),
    Exposure_ISO_PRIO(-1, R.string.cam_strings_exposure_mode_iso_prio_txt_mod, "iso-prio"),
    Exposure_SHUTTER_PRIO(-1, R.string.cam_strings_exposure_mode_shutter_prio_txt_mod, "shutter-prio"),
    Exposure_MANUAL(-1, R.string.cam_strings_exposure_mode_manual_txt_mod, "manual");


    private static int sParameterTextId;
    private int mIconId;
    private int mTextId;
    private String mAeMode;

    ExposureMode(int mIconId, int mTextId, String mAeMode) {
        this.mAeMode = mAeMode;
        this.mIconId = mIconId;
        this.mTextId = mTextId;
    }


    public static ExposureMode[] getOptions(CapturingMode capturingMode) {
        CapabilityList capability = HardwareCapability.getCapability(capturingMode.getCameraId());
        List list = (List) capability.AE.get();
        for (int i = 0; i < list.size(); i++) {
            Log.i("camerazadas", (String) list.get(i));
        }
        ArrayList arrayList = new ArrayList();
        for (ExposureMode i : values()) {
            if (list.contains(i.getValue()))
                arrayList.add(i);
        }

        return (ExposureMode[]) arrayList.toArray(new ExposureMode[0]);
    }

    public static void updateValue(int n, List<String> list) {
        ExposureMode.Exposure_AUTO.mAeMode = "shutter-prio";
    }

    public static ExposureMode getDefaultValue(CapturingMode capturingMode) {
        return Exposure_AUTO;
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
        return ParameterKey.EXPOSURE_MODE;
    }

    @Override
    public int getParameterKeyTextId() {
        return R.string.cam_strings_exposure_mode_txt;
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

    @Override
    public String getValue() {
        return this.mAeMode;
    }


}

