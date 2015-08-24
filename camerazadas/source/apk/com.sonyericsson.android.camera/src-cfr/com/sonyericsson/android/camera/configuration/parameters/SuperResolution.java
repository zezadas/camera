/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.utility.ClassDefinitionChecker;
import java.util.ArrayList;
import java.util.List;

public enum SuperResolution implements ParameterValue
{
    ON(-1, 2131296303, "on"),
    OFF(-1, 2131296304, "off");
    
    private static final String TAG;
    private static final int sParameterTextId = -1;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    static {
        TAG = SuperResolution.class.getSimpleName();
    }

    private SuperResolution(int n2, int n3, String string2) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = string2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static SuperResolution[] getOptions(CapturingMode capturingMode, boolean bl) {
        ArrayList<SuperResolution> arrayList = new ArrayList<SuperResolution>();
        CapabilityList capabilityList = HardwareCapability.getCapability(capturingMode.getCameraId());
        boolean bl2 = capabilityList.SR_ZOOM.get();
        boolean bl3 = capabilityList.EXIF_MAKER_NOTES_TYPES.get().contains("super-resolution");
        boolean bl4 = ClassDefinitionChecker.isSuperResolutionProcessorSupported();
        if (bl2 && bl3 && bl4) {
            if (bl) {
                arrayList.add(OFF);
                do {
                    return arrayList.toArray(new SuperResolution[0]);
                    break;
                } while (true);
            }
            if (capturingMode == CapturingMode.SCENE_RECOGNITION || capturingMode == CapturingMode.NORMAL) {
                arrayList.add(ON);
                return arrayList.toArray(new SuperResolution[0]);
            }
            arrayList.add(OFF);
            return arrayList.toArray(new SuperResolution[0]);
        }
        arrayList.add(OFF);
        return arrayList.toArray(new SuperResolution[0]);
    }

    public static boolean isSupported(CapturingMode arrsuperResolution, boolean bl) {
        arrsuperResolution = SuperResolution.getOptions((CapturingMode)arrsuperResolution, bl);
        int n = arrsuperResolution.length;
        for (int i = 0; i < n; ++i) {
            if (arrsuperResolution[i] != ON) continue;
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
        return ParameterKey.SUPER_RESOLUTION;
    }

    @Override
    public int getParameterKeyTextId() {
        return -1;
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

