package com.sonyericsson.android.camera.configuration.parameters;

import android.hardware.Camera;
import android.util.Log;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;

import java.util.List;

import sonyericsson.camera.R;

/**
 * Created by anon on 08-08-2015.
 */
public enum ShutterSpeed implements ParameterValue {

    SPEED_0(-1, R.string.cam_strings_shutter_speed_0_txt, 0),
    SPEED_1(-1, R.string.cam_strings_shutter_speed_1_txt, 1),
    SPEED_2(-1, R.string.cam_strings_shutter_speed_2_txt, 2),
    SPEED_3(-1, R.string.cam_strings_shutter_speed_3_txt, 3),
    SPEED_4(-1, R.string.cam_strings_shutter_speed_4_txt, 4),
    SPEED_5(-1, R.string.cam_strings_shutter_speed_5_txt, 5),
    SPEED_6(-1, R.string.cam_strings_shutter_speed_6_txt, 6),
    SPEED_7(-1, R.string.cam_strings_shutter_speed_7_txt, 7),
    SPEED_8(-1, R.string.cam_strings_shutter_speed_8_txt, 8),
    SPEED_9(-1, R.string.cam_strings_shutter_speed_9_txt, 9),
    SPEED_10(-1, R.string.cam_strings_shutter_speed_10_txt, 10),
    SPEED_11(-1, R.string.cam_strings_shutter_speed_11_txt, 11),
    SPEED_12(-1, R.string.cam_strings_shutter_speed_12_txt, 12);


    private static int sParameterTextId;
    private int mIconId;
    private int mTextId;
    private int mSpeedValue;

    ShutterSpeed(int mIconId, int mTextId, int mSpeedValue) {
        this.mSpeedValue = mSpeedValue;
        this.mIconId = mIconId;
        this.mTextId = mTextId;
    }

    public static ShutterSpeed[] getOptions(CapturingMode capturingMode) {
        return values();
    }


    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public int getIconId() {
        return this.mIconId;
    }


    public ParameterKey getParameterKey() {
        return ParameterKey.SHUTTER_SPEED;
    }

    @Override
    public int getParameterKeyTextId() {
        return R.string.cam_strings_shutter_speed_txt;
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
        return String.valueOf(this.mSpeedValue);
    }

}
