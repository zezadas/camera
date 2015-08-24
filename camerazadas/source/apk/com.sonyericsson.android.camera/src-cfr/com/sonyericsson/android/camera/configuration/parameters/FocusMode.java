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

public enum FocusMode implements ParameterValue
{
    SINGLE(-1, 2131296327, "continuous-picture", "continuous-video", "center", true),
    MULTI(-1, 2131296328, "macro", "macro", "multi", true),
    FIXED(-1, 2131296327, "fixed", "fixed", "center", false),
    FACE_DETECTION(-1, 2131296330, "continuous-picture", "continuous-video", "center", true),
    TOUCH_FOCUS(-1, 2131296331, "continuous-picture", "continuous-video", "center", true),
    INFINITY(-1, 2131296327, "infinity", "infinity", "center", true),
    OBJECT_TRACKING(-1, 2131296493, "continuous-picture", "continuous-video", "center", true);
    
    private static final int sParameterTextId = 2131296326;
    private final String mFocusArea;
    private final int mIconId;
    private final boolean mSuccessSound;
    private final int mTextId;
    private String mValue;
    private String mValueForVideo;

    private FocusMode(int n2, int n3, String string2, String string3, String string4, boolean bl) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = string2;
        this.mValueForVideo = string3;
        this.mFocusArea = string4;
        this.mSuccessSound = bl;
    }

    public static FocusMode getDefaultValue(CapturingMode capturingMode) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
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

    private static FocusMode[] getExpectedOptions(String[] arrstring) {
        ArrayList arrayList = new ArrayList();
        if (arrstring != null) {
            int n = arrstring.length;
            for (int i = 0; i < n; ++i) {
                arrayList.add(FocusMode.valueOf(FocusMode.class, arrstring[i]));
            }
        } else {
            return FocusMode.values();
        }
        return arrayList.toArray(new FocusMode[0]);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static FocusMode[] getOptions(CapturingMode arrfocusMode) {
        ArrayList<FocusMode> arrayList = new ArrayList<FocusMode>();
        CapabilityList capabilityList = HardwareCapability.getCapability(arrfocusMode.getCameraId());
        Object object = capabilityList.FOCUS_MODE.get();
        List<String> list = capabilityList.FOCUS_AREA.get();
        Object object2 = arrayList;
        if (!object.isEmpty()) {
            arrfocusMode = arrfocusMode == CapturingMode.SCENE_RECOGNITION ? new FocusMode[]{FACE_DETECTION} : FocusMode.getExpectedOptions(capabilityList.UX_CAPABILITY.get().getFocusModeOptions((CapturingMode)arrfocusMode));
            object2 = new ArrayList();
            for (Object object32 : arrfocusMode) {
                for (String string : object) {
                    if (!object32.getValue().equals(string)) continue;
                    object2.add(object32);
                }
            }
            if (list.isEmpty()) {
                arrfocusMode = object2;
            } else {
                object2 = object2.iterator();
                block2 : do {
                    Object object32;
                    arrfocusMode = arrayList;
                    if (!object2.hasNext()) break;
                    arrfocusMode = (FocusMode)object2.next();
                    object = list.iterator();
                    do {
                        if (!object.hasNext()) continue block2;
                        object32 = (String)object.next();
                    } while (!arrfocusMode.getFocusArea().equals(object32));
                    arrayList.add((FocusMode)arrfocusMode);
                } while (true);
            }
            if (capabilityList.MAX_NUM_FACE.get() < 1) {
                FocusMode.remove(FACE_DETECTION, arrfocusMode);
            }
            if (capabilityList.MAX_NUM_FOCUS_AREA.get() < 1) {
                FocusMode.remove(TOUCH_FOCUS, arrfocusMode);
            }
            object2 = arrfocusMode;
            if (!capabilityList.OBJECT_TRACKING.get().booleanValue()) {
                FocusMode.remove(OBJECT_TRACKING, arrfocusMode);
                object2 = arrfocusMode;
            }
        }
        return object2.toArray(new FocusMode[0]);
    }

    private static void remove(FocusMode focusMode, List<FocusMode> list) {
        if (list.contains(focusMode)) {
            list.remove(focusMode);
        }
    }

    public static void updateValue(int n, List<String> list) {
        if (!(n != 0 || list.contains(SINGLE.getValue()))) {
            FocusMode.SINGLE.mValue = "auto";
        }
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public String getFocusArea() {
        return this.mFocusArea;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.FOCUS_MODE;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296326;
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

    public String getValueForVideo() {
        return this.mValueForVideo;
    }

    public boolean isSuccessSound() {
        return this.mSuccessSound;
    }

}

