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
import com.sonyericsson.android.camera.util.capability.UxOptions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import sonyericsson.camera.R;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;


@DexReplace
public enum FocusMode implements ParameterValue {
    SINGLE(-1, R.string.cam_strings_focus_mode_single_af_txt_mod, "continuous-picture", "continuous-video", "center", true),
    MULTI(-1, R.string.cam_strings_focus_mode_multi_af_txt_mod, "macro", "macro", "multi", true),
    FIXED(-1, R.string.cam_strings_focus_mode_fixed_af_txt_mod, "fixed", "fixed", "center", false),
    FACE_DETECTION(-1, R.string.cam_strings_focus_mode_face_detection_txt_mod, "continuous-picture", "continuous-video", "center", true),
    TOUCH_FOCUS(-1, R.string.cam_strings_focus_mode_touch_focus_txt_mod, "continuous-picture", "continuous-video", "center", true),
    INFINITY(-1, R.string.cam_strings_focus_mode_infinity_txt_mod, "infinity", "infinity", "center", true),
    OBJECT_TRACKING(-1, R.string.cam_strings_focus_mode_object_tracking_txt_mod, "continuous-picture", "continuous-video", "center", true),
    MACRO(-1, R.string.cam_strings_focus_mode_macro_txt_mod, "macro", "macro", "center", true);

    private static final int sParameterTextId = 2131296326;
    private final String mFocusArea;
    private final int mIconId;
    private final boolean mSuccessSound;
    private final int mTextId;
    private String mValue;
    private String mValueForVideo;

    @DexIgnore
    private FocusMode(int n2, int n3, String string2, String string3, String string4, boolean bl) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = string2;
        this.mValueForVideo = string3;
        this.mFocusArea = string4;
        this.mSuccessSound = bl;
    }

    @DexIgnore
    public static FocusMode getDefaultValue(CapturingMode capturingMode) {
        switch (capturingMode.ordinal()) {
            default: {
                return FACE_DETECTION;
            }
            case 1:
            case 2: {
                return FACE_DETECTION;
            }
            case 3: {
                return TOUCH_FOCUS;
            }
            case 4:
            case 5:
        }
        return FIXED;
    }

    @DexIgnore
    private static FocusMode[] getExpectedOptions(String[] var0) {
        ArrayList var3 = new ArrayList();
        if (var0 == null) {
            return values();
        } else {
            int var2 = var0.length;

            for (int var1 = 0; var1 < var2; ++var1) {
                var3.add(valueOf(FocusMode.class, var0[var1]));
            }

            return (FocusMode[]) var3.toArray(new FocusMode[0]);
        }
    }

    @DexIgnore
    public static FocusMode[] getOptions(CapturingMode var0) {
        ArrayList var3 = new ArrayList();
        CapabilityList var5 = HardwareCapability.getCapability(var0.getCameraId());
        List var7 = (List) var5.FOCUS_MODE.get();
        List var6 = (List) var5.FOCUS_AREA.get();
        ArrayList var4 = var3;
        if (!var7.isEmpty()) {
            FocusMode[] var11;
            if (var0 == CapturingMode.SCENE_RECOGNITION) {
                var11 = new FocusMode[]{FACE_DETECTION};
            } else {
                var11 = getExpectedOptions(((UxOptions) var5.UX_CAPABILITY.get()).getFocusModeOptions(var0));
            }

            var4 = new ArrayList();
            int var2 = var11.length;

            for (int var1 = 0; var1 < var2; ++var1) {
                FocusMode var8 = var11[var1];
                Iterator var9 = var7.iterator();

                while (var9.hasNext()) {
                    String var10 = (String) var9.next();
                    if (var8.getValue().equals(var10)) {
                        var4.add(var8);
                        break;
                    }
                }
            }

            ArrayList var12;
            if (var6.isEmpty()) {
                var12 = var4;
            } else {
                Iterator var14 = var4.iterator();

                label50:
                while (true) {
                    while (true) {
                        var12 = var3;
                        if (!var14.hasNext()) {
                            break label50;
                        }

                        FocusMode var13 = (FocusMode) var14.next();
                        Iterator var15 = var6.iterator();

                        while (var15.hasNext()) {
                            String var16 = (String) var15.next();
                            if (var13.getFocusArea().equals(var16)) {
                                var3.add(var13);
                                break;
                            }
                        }
                    }
                }
            }

            if (((Integer) var5.MAX_NUM_FACE.get()).intValue() < 1) {
                remove(FACE_DETECTION, var12);
            }

            if (((Integer) var5.MAX_NUM_FOCUS_AREA.get()).intValue() < 1) {
                remove(TOUCH_FOCUS, var12);
            }

            var4 = var12;
            if (!((Boolean) var5.OBJECT_TRACKING.get()).booleanValue()) {
                remove(OBJECT_TRACKING, var12);
                var4 = var12;
            }
        }

        return (FocusMode[]) var4.toArray(new FocusMode[0]);
    }

    @DexIgnore
    private static void remove(FocusMode focusMode, List<FocusMode> list) {
        if (list.contains(focusMode)) {
            list.remove(focusMode);
        }
    }

    @DexIgnore
    public static void updateValue(int n, List<String> list) {
        if (!(n != 0 || list.contains(SINGLE.getValue()))) {
            FocusMode.SINGLE.mValue = "auto";
        }
    }

    @DexIgnore
    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    @DexIgnore
    public String getFocusArea() {
        return this.mFocusArea;
    }

    @DexIgnore
    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @DexIgnore
    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.FOCUS_MODE;
    }

    @DexIgnore
    @Override
    public int getParameterKeyTextId() {
        return 2131296326;
    }

    @DexIgnore
    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    @DexIgnore
    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        return arrparameterValue[0];
    }

    @DexIgnore
    @Override
    public int getTextId() {
        return this.mTextId;
    }

    @DexIgnore
    @Override
    public String getValue() {
        return this.mValue;
    }

    @DexIgnore
    public String getValueForVideo() {
        return this.mValueForVideo;
    }

    @DexIgnore
    public boolean isSuccessSound() {
        return this.mSuccessSound;
    }

}

