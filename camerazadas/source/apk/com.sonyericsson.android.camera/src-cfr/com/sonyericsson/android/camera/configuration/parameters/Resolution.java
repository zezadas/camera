/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.graphics.Rect;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.android.camera.util.capability.ResolutionOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public enum Resolution implements ParameterValue
{
    TWENTY_THREE_MP(-1, 2131296767, new Rect(0, 0, 5520, 4140)),
    TWENTY_MP_WIDE(-1, 2131296765, new Rect(0, 0, 5984, 3366)),
    TWENTY_MP(-1, 2131296766, new Rect(0, 0, 5248, 3936)),
    HDR_TWENTY_MP(-1, -1, new Rect(0, 0, 4998, 3748)),
    FIFTEEN_MP_WIDE(-1, 2131296764, new Rect(0, 0, 5248, 2952)),
    THIRTEEN_MP(-1, 2131296763, new Rect(0, 0, 4128, 3096)),
    HDR_TWELVE_MP(-1, 2131296762, new Rect(0, 0, 3920, 2940)),
    TWELVE_MP(-1, -1, new Rect(0, 0, 4000, 3000)),
    TEN_MP(-1, -1, new Rect(0, 0, 4128, 2322)),
    NINE_MP(-1, -1, new Rect(0, 0, 4000, 2250)),
    HDR_NINE_MP(-1, 2131296760, new Rect(0, 0, 3920, 2204)),
    EIGHT_MP(-1, 2131296759, new Rect(0, 0, 3264, 2448)),
    EIGHT_MP_WIDE(-1, 2131296758, new Rect(0, 0, 3840, 2160)),
    HDR_SEVEN_MP(-1, 2131296757, new Rect(0, 0, 3104, 2328)),
    SIX_MP(-1, 2131296756, new Rect(0, 0, 3264, 1836)),
    HDR_SIX_MP(-1, -1, new Rect(0, 0, 3104, 1746)),
    FIVE_MP(-1, 2131296755, new Rect(0, 0, 2592, 1944)),
    FIVE_MP_WIDE(-1, 2131296754, new Rect(0, 0, 3104, 1746)),
    THREE_MP(-1, 2131296751, new Rect(0, 0, 2048, 1536)),
    THREE_MP_WIDE(-1, 2131296752, new Rect(0, 0, 2560, 1440)),
    THREE_POINT_SEVEN_MP_WIDE(-1, 2131296753, new Rect(0, 0, 2592, 1458)),
    TWO_MP(-1, 2131296750, new Rect(0, 0, 1632, 1224)),
    HDR_TWO_MP(-1, 2131296746, new Rect(0, 0, 1520, 1140)),
    TWO_MP_WIDE(-1, 2131296749, new Rect(0, 0, 1920, 1080)),
    HDR_TWO_MP_WIDE(-1, 2131296747, new Rect(0, 0, 1824, 1026)),
    ONE_MP(-1, -1, new Rect(0, 0, 1280, 960)),
    ONE_MP_NARROW(-1, -1, new Rect(0, 0, 1280, 720)),
    VGA(-1, -1, new Rect(0, 0, 640, 480)),
    UXGA(-1, 2131296748, new Rect(0, 0, 1600, 1200));
    
    private static final int sParameterTextId = 2131296314;
    private final int mIconId;
    private final Rect mPictureRect;
    private final int mTextId;

    private Resolution(int n2, int n3, Rect rect) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mPictureRect = rect;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Resolution getDefaultValue(CapturingMode capturingMode) {
        ResolutionOptions resolutionOptions = HardwareCapability.getCapability((int)capturingMode.getCameraId()).RESOLUTION_CAPABILITY.get();
        Resolution resolution = HardwareCapability.getInstance().isStillHdrVer3(capturingMode.getCameraId()) ? Resolution.valueOf(resolutionOptions.getHdr3DefaultResolution()) : Resolution.valueOf(resolutionOptions.getDefaultResolution());
        Resolution[] arrresolution = Resolution.getOptions(capturingMode);
        int n = arrresolution.length;
        for (int i = 0; i < n; ++i) {
            if (!arrresolution[i].equals(resolution)) continue;
            if (HardwareCapability.getInstance().isStillHdrVer3(capturingMode.getCameraId())) {
                return Resolution.valueOf(resolutionOptions.getHdr3DefaultResolution());
            }
            return Resolution.valueOf(resolutionOptions.getDefaultResolution());
        }
        return VGA;
    }

    private static Resolution[] getExpectedOptions(String[] arrstring) {
        ArrayList arrayList = new ArrayList();
        if (arrstring != null) {
            int n = arrstring.length;
            for (int i = 0; i < n; ++i) {
                arrayList.add(Resolution.valueOf(Resolution.class, arrstring[i]));
            }
        } else {
            return Resolution.values();
        }
        return arrayList.toArray(new Resolution[0]);
    }

    public static Resolution[] getHdrDependentOptions(Resolution[] arrresolution, boolean bl, int n) {
        for (int i = 0; i < arrresolution.length; ++i) {
            arrresolution[i] = Resolution.getHdrResolution(arrresolution[i], bl, n);
        }
        return arrresolution;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static Resolution getHdrResolution(Resolution var0, boolean var1_1, int var2_2) {
        var3_3 = var0;
        if (HardwareCapability.getInstance().isStillHdrVer3(var2_2)) {
            return var0;
        }
        if (!var1_1) ** GOTO lbl20
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Resolution[var0.ordinal()]) {
            case 1: {
                var3_3 = Resolution.HDR_TWENTY_MP;
                ** break;
            }
            case 2: {
                var3_3 = Resolution.HDR_TWELVE_MP;
                ** break;
            }
            case 3: {
                var3_3 = Resolution.HDR_SEVEN_MP;
            }
lbl14: // 4 sources:
            default: {
                ** GOTO lbl19
            }
            case 4: 
        }
        if (var2_2 == 1) {
            var3_3 = Resolution.HDR_TWO_MP_WIDE;
        } else {
            ** GOTO lbl34
        }
lbl19: // 2 sources:
        ** GOTO lbl34
lbl20: // 1 sources:
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Resolution[var0.ordinal()]) {
            default: {
                break;
            }
            case 5: {
                var3_3 = Resolution.TWENTY_MP;
                break;
            }
            case 6: {
                var3_3 = Resolution.THIRTEEN_MP;
                break;
            }
            case 7: {
                var3_3 = Resolution.EIGHT_MP;
                break;
            }
            case 8: {
                var3_3 = Resolution.TWO_MP_WIDE;
            }
        }
lbl34: // 8 sources:
        var4_4 = HardwareCapability.getCapability((int)var2_2).PICTURE_SIZE.get().iterator();
        do {
            if (var4_4.hasNext() == false) return var0;
            var5_5 = var4_4.next();
        } while (var3_3.mPictureRect.width() != var5_5.width() || var3_3.mPictureRect.height() != var5_5.height());
        return var3_3;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Resolution[] getOptions(CapturingMode arrstring) {
        if (arrstring == CapturingMode.SCENE_RECOGNITION || arrstring == CapturingMode.SUPERIOR_FRONT) {
            return Resolution.getSuperiorAutoOptions(arrstring.getCameraId());
        }
        ArrayList<String> arrayList = new ArrayList<String>();
        if (arrstring.getType() == 1) {
            CapabilityList capabilityList = HardwareCapability.getCapability(arrstring.getCameraId());
            List<Rect> list = capabilityList.PICTURE_SIZE.get();
            if (!list.isEmpty()) {
                arrstring = HardwareCapability.getInstance().isStillHdrVer3(arrstring.getCameraId()) ? capabilityList.RESOLUTION_CAPABILITY.get().getHdr3ResolutionOptions() : capabilityList.RESOLUTION_CAPABILITY.get().getResolutionOptions();
                for (String string : Resolution.getExpectedOptions(arrstring)) {
                    for (Rect rect : list) {
                        if (string.mPictureRect.width() != rect.width() || string.mPictureRect.height() != rect.height()) continue;
                        arrayList.add(string);
                    }
                }
                return arrayList.toArray(new Resolution[0]);
            }
        }
        return arrayList.toArray(new Resolution[0]);
    }

    public static Resolution getResolutionFromFrameShape(CaptureFrameShape arrresolution, int n) {
        int n2 = arrresolution.getAspectRatio_x100();
        for (Resolution resolution : Resolution.getSuperiorAutoOptions(n)) {
            Rect rect = resolution.getPictureRect();
            if (n2 != (int)((float)rect.width() / (float)rect.height() * 100.0f)) continue;
            return resolution;
        }
        throw new UnsupportedOperationException("Unsupported shape or resolution");
    }

    private static Resolution[] getSuperiorAutoOptions(int n) {
        ArrayList<Resolution> arrayList = new ArrayList<Resolution>();
        Resolution[] arrresolution = HardwareCapability.getCapability(n);
        List<Rect> list = arrresolution.PICTURE_SIZE.get();
        for (Resolution resolution : Resolution.getExpectedOptions(arrresolution.RESOLUTION_CAPABILITY.get().getSuperiorAutoResolutionOptions())) {
            for (Rect rect : list) {
                if (resolution.mPictureRect.width() != rect.width() || resolution.mPictureRect.height() != rect.height()) continue;
                arrayList.add(resolution);
            }
        }
        return arrayList.toArray(new Resolution[0]);
    }

    public static Resolution getValueFromPictureSize(int n, int n2) {
        for (Resolution resolution : Resolution.values()) {
            Rect rect = resolution.getPictureRect();
            if (rect.width() != n || rect.height() != n2) continue;
            return resolution;
        }
        return null;
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
        return ParameterKey.RESOLUTION;
    }

    @Override
    public int getParameterKeyTextId() {
        return 2131296314;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    public Rect getPictureRect() {
        return this.mPictureRect;
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
        return this.toString();
    }

}

