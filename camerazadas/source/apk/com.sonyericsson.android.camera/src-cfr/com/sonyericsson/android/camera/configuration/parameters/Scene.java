/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.android.camera.util.capability.UxOptions;
import com.sonyericsson.cameracommon.device.CameraExtensionVersion;
import java.util.ArrayList;
import java.util.List;

public enum Scene implements ParameterValue
{
    OFF(2130837641, 2131296304, "auto", FocusMode.SINGLE),
    PORTRAIT(2130837658, 2131296471, "portrait", FocusMode.FACE_DETECTION),
    NIGHT_PORTRAIT(2130837651, 2131296470, "night-portrait", FocusMode.FACE_DETECTION),
    LANDSCAPE(2130837650, 2131296307, "landscape", FocusMode.INFINITY),
    NIGHT(2130837652, 2131296309, "night", FocusMode.INFINITY),
    BEACH_SNOW(2130837644, 2131296312, "snow", FocusMode.FACE_DETECTION),
    SPORTS(2130837659, 2131296311, "sports", FocusMode.FACE_DETECTION),
    PARTY(2130837654, 2131296310, "party", FocusMode.FACE_DETECTION),
    DOCUMENT(2130837645, 2131296313, "document", FocusMode.SINGLE),
    NIGHT_MODE(2130837652, 2131296308, "night", FocusMode.SINGLE),
    BACKLIGHT_HDR(2130837643, 2131296472, "backlight-portrait", FocusMode.FACE_DETECTION),
    BEACH(2130837644, 2131296466, "beach", FocusMode.FACE_DETECTION),
    SNOW(2130837656, 2131296467, "snow", FocusMode.FACE_DETECTION),
    SOFT_SKIN(2130837657, 2131296484, "soft-skin", FocusMode.FACE_DETECTION),
    GOURMET(2130837647, 2131296485, "dish", FocusMode.SINGLE),
    PET(2130837655, 2131296486, "pet", FocusMode.SINGLE),
    ANTI_MOTION(2130837642, 2131296503, "anti-motion-blur", FocusMode.FACE_DETECTION),
    HAND_NIGHT(2130837648, 2131296504, "handheld-twilight", FocusMode.SINGLE),
    HIGH_SENSITIVITY(2130837649, 2131296505, "high-sensitivity", FocusMode.FACE_DETECTION),
    FIRE_WORKS(2130837646, 2131296506, "fireworks", FocusMode.INFINITY);
    
    private static final int sParameterTextId = 2131296306;
    private final FocusMode mFocusMode;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    private Scene(int n2, int n3, String string2, FocusMode focusMode) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mValue = string2;
        this.mFocusMode = focusMode;
    }

    private static Scene[] getExpectedOptions(String[] arrstring) {
        ArrayList arrayList = new ArrayList();
        if (arrstring != null) {
            int n = arrstring.length;
            for (int i = 0; i < n; ++i) {
                arrayList.add(Scene.valueOf(Scene.class, arrstring[i]));
            }
        } else {
            return Scene.values();
        }
        return arrayList.toArray(new Scene[0]);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Scene[] getOptions(CapturingMode arrscene) {
        ArrayList<Object> arrayList = new ArrayList<Object>();
        Object object = HardwareCapability.getCapability(arrscene.getCameraId());
        List<String> list = object.SCENE.get();
        if (list.isEmpty()) return arrayList.toArray(new Scene[0]);
        if (arrscene == CapturingMode.SCENE_RECOGNITION || arrscene == CapturingMode.SUPERIOR_FRONT) {
            arrayList.add(OFF);
            return arrayList.toArray(new Scene[0]);
        }
        if (HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8) && HardwareCapability.getInstance().getMaxSoftSkinLevel(arrscene.getCameraId()) > 0 && list.contains(PORTRAIT.getValue())) {
            list.add(SOFT_SKIN.getValue());
        }
        arrscene = Scene.getExpectedOptions(object.UX_CAPABILITY.get().getSceneOptions(arrscene.getType()));
        int n = arrscene.length;
        int n2 = 0;
        do {
            if (n2 >= n) {
                if (Scene.isSupportedBeachAndSnowIndividually()) return arrayList.toArray(new Scene[0]);
                n2 = arrayList.indexOf(SNOW);
                if (n2 == -1) return arrayList.toArray(new Scene[0]);
                arrayList.remove(SNOW);
                arrayList.remove(BEACH);
                arrayList.add(n2, BEACH_SNOW);
                return arrayList.toArray(new Scene[0]);
            }
            object = arrscene[n2];
            for (String string : list) {
                if (!object.getValue().equals(string)) continue;
                arrayList.add(object);
            }
            ++n2;
        } while (true);
    }

    private static boolean isSupportedBeachAndSnowIndividually() {
        boolean bl = false;
        if (HardwareCapability.getCapability((int)0).SCENE.get().contains(PET.getValue())) {
            bl = true;
        }
        return bl;
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    public FocusMode getFocusMode() {
        return this.mFocusMode;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.SCENE;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296306;
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
}

