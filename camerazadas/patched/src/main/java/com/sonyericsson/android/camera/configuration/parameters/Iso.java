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

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import sonyericsson.camera.R;

import static android.app.PendingIntent.getActivity;

@DexReplace
public enum Iso implements ParameterValue {
    ISO_AUTO(-1, R.string.cam_strings_settings_auto_txt, "auto", -1),
    ISO_50(-1, R.string.cam_strings_iso_50_txt_mod, "iso-prio", 50),
    ISO_64(-1, R.string.cam_strings_iso_64_txt_mod, "iso-prio", 64),
    ISO_80(-1, R.string.cam_strings_iso_80_txt_mod, "iso-prio", 80),
    ISO_100(-1, R.string.cam_strings_iso_100_txt_mod, "iso-prio", 100),
    ISO_125(-1, R.string.cam_strings_iso_125_txt_mod, "iso-prio", 125),
    ISO_160(-1, R.string.cam_strings_iso_160_txt_mod, "iso-prio", 160),
    ISO_200(-1, R.string.cam_strings_iso_200_txt_mod, "iso-prio", 200),
    ISO_250(-1, R.string.cam_strings_iso_250_txt_mod, "iso-prio", 250),
    ISO_320(-1, R.string.cam_strings_iso_320_txt_mod, "iso-prio", 320),
    ISO_400(-1, R.string.cam_strings_iso_400_txt_mod, "iso-prio", 400),
    ISO_500(-1, R.string.cam_strings_iso_500_txt_mod, "iso-prio", 500),
    ISO_640(-1, R.string.cam_strings_iso_640_txt_mod, "iso-prio", 640),
    ISO_800(-1, R.string.cam_strings_iso_800_txt_mod, "iso-prio", 800),
    ISO_1000(-1, R.string.cam_strings_iso_1000_txt_mod, "iso-prio", 1000),
    ISO_1250(-1, R.string.cam_strings_iso_1250_txt_mod, "iso-prio", 1250),
    ISO_1600(-1, R.string.cam_strings_iso_1600_txt_mod, "iso-prio", 1600),
    ISO_2000(-1, R.string.cam_strings_iso_2000_txt_mod, "iso-prio", 2000),
    ISO_2500(-1, R.string.cam_strings_iso_2500_txt_mod, "iso-prio", 2500),
    ISO_3200(-1, R.string.cam_strings_iso_3200_txt_mod, "iso-prio", 3200),
    ISO_6400(-1, R.string.cam_strings_iso_6400_txt_mod, "iso-prio", 6400),
    ISO_10000(-1, R.string.cam_strings_iso_10000_txt_mod, "iso-prio", 10000),
    ISO_12800(-1, R.string.cam_strings_iso_12800_txt_mod, "iso-prio", 12800);


    private static final int sParameterTextId = 2131296724;
    private final String mAeMode;
    private final int mIconId;
    private final int mIsoValue;
    private final int mTextId;

    @DexIgnore
    private Iso(int n2, int n3, String string2, int n4) {
        this.mIconId = n2;
        this.mTextId = n3;
        //TODO remove AE from ISO class
        this.mAeMode = string2;
        this.mIsoValue = n4;
    }

    @DexEdit(target = "getOptions")
    public static Iso[] source_getOptions(CapturingMode list, Resolution resolution) {
        return null;
    }

    @DexAdd
    public static Iso[] getOptions(CapturingMode capturingMode, Resolution resolution) {
        ArrayList arrayList = new ArrayList();
        CapabilityList capability = HardwareCapability.getCapability(capturingMode.getCameraId());
        //List list ;//= (List) capability.AE.get();

        List list = (List) capability.ISO.get();
        Iso[] values = values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            Iso iso = values[i];
            if (list.contains(Integer.toString(iso.getIsoValue()))) {
                arrayList.add(iso);
            }
        }
        return (Iso[]) arrayList.toArray(new Iso[0]);
    }

    @DexIgnore
    public static boolean isAlwaysChangeToAutoToResolveDependency() {
        return HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8);
    }

    @DexEdit(target = "isExclusiveWith")
    public static boolean source_isExclusiveWith(Resolution resolution) {
        return true;
    }

    @DexAdd
    public static boolean isExclusiveWith(Resolution resolution) {
        return true;
    }

    @DexIgnore
    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    @DexIgnore
    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @DexIgnore
    public int getIsoValue() {
        return this.mIsoValue;
    }

    @DexIgnore
    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.ISO;
    }

    @DexIgnore
    @Override
    public int getParameterKeyTextId() {
        return 2131296724;
    }

    @DexIgnore
    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @DexIgnore
    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        //TODO recommend a better ISO
        return ISO_AUTO;
    }

    @DexIgnore
    @Override
    public int getTextId() {
        return this.mTextId;
    }

    @DexIgnore
    @Override
    public String getValue() {
        return this.mAeMode;
    }
}

