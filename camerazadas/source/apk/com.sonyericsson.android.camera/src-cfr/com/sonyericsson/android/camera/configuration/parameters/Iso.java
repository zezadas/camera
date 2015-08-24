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
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.device.CameraExtensionVersion;
import java.util.ArrayList;
import java.util.List;

public enum Iso implements ParameterValue
{
    ISO_AUTO(-1, 2131296305, "auto", -1),
    ISO_50(-1, 2131296726, "iso-prio", 50),
    ISO_100(-1, 2131296727, "iso-prio", 100),
    ISO_200(-1, 2131296728, "iso-prio", 200),
    ISO_400(-1, 2131296729, "iso-prio", 400),
    ISO_800(-1, 2131296730, "iso-prio", 800),
    ISO_1600(-1, 2131296731, "iso-prio", 1600),
    ISO_3200(-1, 2131296732, "iso-prio", 3200),
    ISO_6400(-1, 2131296733, "iso-prio", 6400),
    ISO_10000(-1, 2131296734, "iso-prio", 10000),
    ISO_12800(-1, 2131296735, "iso-prio", 12800);
    
    private static final int sParameterTextId = 2131296724;
    private final String mAeMode;
    private final int mIconId;
    private final int mIsoValue;
    private final int mTextId;

    private Iso(int n2, int n3, String string2, int n4) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mAeMode = string2;
        this.mIsoValue = n4;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Iso[] getOptions(CapturingMode list, Resolution resolution) {
        ArrayList<Iso> arrayList = new ArrayList<Iso>();
        Iso[] arriso = HardwareCapability.getCapability(list.getCameraId());
        List<String> list2 = arriso.AE.get();
        if (list2.isEmpty()) {
            return arrayList.toArray(new Iso[0]);
        }
        if (list2.contains(ISO_AUTO.getValue())) {
            arrayList.add(ISO_AUTO);
            if (list == CapturingMode.SCENE_RECOGNITION || list == CapturingMode.SUPERIOR_FRONT || list == CapturingMode.FRONT_PHOTO || list.getType() == 2) {
                return arrayList.toArray(new Iso[0]);
            }
        }
        if (!list2.contains(ISO_100.getValue())) {
            return arrayList.toArray(new Iso[0]);
        }
        list = arriso.ISO.get();
        for (Iso iso : Iso.values()) {
            if (!list.contains(Integer.toString(iso.getIsoValue()))) continue;
            if (resolution.getPictureRect().width() >= 5248) {
                if (iso.getIsoValue() > ISO_800.getIsoValue()) continue;
                arrayList.add(iso);
                continue;
            }
            arrayList.add(iso);
        }
        return arrayList.toArray(new Iso[0]);
    }

    public static boolean isAlwaysChangeToAutoToResolveDependency() {
        return HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8);
    }

    public static boolean isExclusiveWith(Resolution resolution) {
        if (5248 <= resolution.getPictureRect().width()) {
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

    public int getIsoValue() {
        return this.mIsoValue;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.ISO;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296724;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return ISO_AUTO;
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

