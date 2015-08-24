/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import java.util.ArrayList;
import java.util.List;

public enum PhotoLight implements ParameterValue
{
    ON(2130837590, 2131296303, "torch", true),
    OFF(2130837591, 2131296304, "off", false);
    
    private static final int sParameterTextId = 2131296513;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    private PhotoLight(int n2, int n3, String string2, boolean bl) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = string2;
        this.mBooleanValue = bl;
    }

    public static PhotoLight[] getOptions(ActionMode arrphotoLight) {
        ArrayList<PhotoLight> arrayList = new ArrayList<PhotoLight>();
        List<String> list = HardwareCapability.getCapability((int)arrphotoLight.mCameraId).FLASH.get();
        if (!list.isEmpty()) {
            for (PhotoLight photoLight : LedOptionsResolver.getInstance().getPhotoLightOptions((ActionMode)arrphotoLight, list)) {
                for (String string : list) {
                    if (!photoLight.getValue().equals(string)) continue;
                    arrayList.add(photoLight);
                }
            }
        }
        return arrayList.toArray(new PhotoLight[0]);
    }

    public static PhotoLight getPhotoLightFromParameterString(String string) {
        for (PhotoLight photoLight : PhotoLight.values()) {
            if (!photoLight.getValue().equals(string)) continue;
            return photoLight;
        }
        return null;
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public boolean getBooleanValue() {
        return this.mBooleanValue;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.PHOTO_LIGHT;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296513;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return OFF;
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }

    @Override
    public String getValue() {
        return this.mValue;
    }
}

