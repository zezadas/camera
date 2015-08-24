/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import java.util.ArrayList;
import java.util.List;

public enum Flash implements ParameterValue
{
    AUTO(2130837586, 2131296305, "auto", true),
    ON(2130837587, 2131296316, "on", false),
    RED_EYE(2130837589, 2131296317, "red-eye", true),
    OFF(2130837588, 2131296304, "off", false),
    LED_ON(2130837590, 2131296513, "torch", false),
    LED_OFF(2130837591, 2131296304, "off", false),
    PHOTO_LIGHT_ON_AS_FLASH(PhotoLight.ON.getIconId(), PhotoLight.ON.getTextId(), PhotoLight.ON.getValue(), false);
    
    private final int mIconId;
    private final boolean mIsSceneDependent;
    private final int mTextId;
    private final String mValue;

    private Flash(int n2, int n3, String string2, boolean bl) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = string2;
        this.mIsSceneDependent = bl;
    }

    public static Flash getDefaultValue() {
        return LedOptionsResolver.getInstance().getDefaultFlash();
    }

    public static Flash getFlashFromParameterString(String string) {
        for (Flash flash : Flash.values()) {
            if (!flash.getValue().equals(string)) continue;
            return flash;
        }
        return null;
    }

    public static Flash[] getOptions(ActionMode arrflash) {
        List<String> list;
        ArrayList<Flash> arrayList = new ArrayList<Flash>();
        if (!(arrflash.mType != 1 || (list = HardwareCapability.getCapability((int)arrflash.mCameraId).FLASH.get()).isEmpty())) {
            for (Flash flash : LedOptionsResolver.getInstance().getFlashOptions((ActionMode)arrflash, list)) {
                for (String string : list) {
                    if (!flash.getValue().equals(string)) continue;
                    arrayList.add(flash);
                }
            }
        }
        return arrayList.toArray(new Flash[0]);
    }

    public static int getParameterKeyTitleTextId() {
        return LedOptionsResolver.getInstance().getParameterKeyTitleTextId();
    }

    public static boolean isSupported(int n) {
        if (!HardwareCapability.getCapability((int)n).FLASH.get().isEmpty()) {
            return true;
        }
        return false;
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
        return ParameterKey.FLASH;
    }

    @Override
    public int getParameterKeyTextId() {
        return LedOptionsResolver.getInstance().getParameterKeyTextId();
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
        return this.mValue;
    }

    public boolean isSceneDependent() {
        return this.mIsSceneDependent;
    }
}

