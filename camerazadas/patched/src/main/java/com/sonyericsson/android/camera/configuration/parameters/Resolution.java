/*
 * APAGAR
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.graphics.Rect;
import android.util.Log;

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

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;

@DexEdit(defaultAction = DexAction.IGNORE)
public enum Resolution implements ParameterValue {
    TWENTY_THREE_MP(-1, 2131296768, new Rect(0, 0, 5520, 4140)),
    TWENTY_MP_WIDE(-1, 2131296766, new Rect(0, 0, 5984, 3366)),
    TWENTY_MP(-1, 2131296767, new Rect(0, 0, 5248, 3936)),
    HDR_TWENTY_MP(-1, -1, new Rect(0, 0, 4998, 3748)),
    FIFTEEN_MP_WIDE(-1, 2131296765, new Rect(0, 0, 5248, 2952)),
    THIRTEEN_MP(-1, 2131296746, new Rect(0, 0, 4128, 3096)),
    HDR_TWELVE_MP(-1, 2131296747, new Rect(0, 0, 3920, 2940)),
    TWELVE_MP(-1, -1, new Rect(0, 0, 4000, 3000)),
    TEN_MP(-1, -1, new Rect(0, 0, 4128, 2322)),
    NINE_MP(-1, -1, new Rect(0, 0, 4000, 2250)),
    HDR_NINE_MP(-1, 2131296748, new Rect(0, 0, 3920, 2204)),
    EIGHT_MP(-1, 2131296762, new Rect(0, 0, 3264, 2448)),
    EIGHT_MP_WIDE(-1, 2131296761, new Rect(0, 0, 3840, 2160)),
    HDR_SEVEN_MP(-1, 2131296760, new Rect(0, 0, 3104, 2328)),
    SIX_MP(-1, 2131296759, new Rect(0, 0, 3264, 1836)),
    HDR_SIX_MP(-1, -1, new Rect(0, 0, 3104, 1746)),
    FIVE_MP(-1, 2131296758, new Rect(0, 0, 2592, 1944)),
    FIVE_MP_WIDE(-1, 2131296757, new Rect(0, 0, 3104, 1746)),
    THREE_MP(-1, 2131296754, new Rect(0, 0, 2048, 1536)),
    THREE_MP_WIDE(-1, 2131296755, new Rect(0, 0, 2560, 1440)),
    THREE_POINT_SEVEN_MP_WIDE(-1, 2131296756, new Rect(0, 0, 2592, 1458)),
    TWO_MP(-1, 2131296753, new Rect(0, 0, 1632, 1224)),
    HDR_TWO_MP(-1, 2131296749, new Rect(0, 0, 1520, 1140)),
    TWO_MP_WIDE(-1, 2131296752, new Rect(0, 0, 1920, 1080)),
    HDR_TWO_MP_WIDE(-1, 2131296750, new Rect(0, 0, 1824, 1026)),
    ONE_MP(-1, -1, new Rect(0, 0, 1280, 960)),
    ONE_MP_NARROW(-1, -1, new Rect(0, 0, 1280, 720)),
    VGA(-1, -1, new Rect(0, 0, 640, 480)),
    UXGA(-1, 2131296751, new Rect(0, 0, 1600, 1200));

    private static final int sParameterTextId = 2131296314;
    private final int mIconId;
    private final Rect mPictureRect;
    private final int mTextId;

    @DexIgnore
    private Resolution(int n2, int n3, Rect rect) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mPictureRect = rect;
    }

    @DexIgnore
    private static Resolution[] getSuperiorAutoOptions(int n) {
        ArrayList<Resolution> arrayList = new ArrayList<Resolution>();
        CapabilityList arrresolution = HardwareCapability.getCapability(n);
        List<Rect> list = arrresolution.PICTURE_SIZE.get();
        for (Resolution resolution : Resolution.getExpectedOptions(arrresolution.RESOLUTION_CAPABILITY.get().getSuperiorAutoResolutionOptions())) {
            for (Rect rect : list) {
                arrayList.add(resolution);
            }
        }
        return arrayList.toArray(new Resolution[0]);
    }

    @DexEdit(target = "getResolutionFromFrameShape")
    public static Resolution source_getResolutionFromFrameShape(CaptureFrameShape arrresolution, int n) {
        return null;
    }

    @DexAdd
    public static Resolution getResolutionFromFrameShape(CaptureFrameShape arrresolution, int n) {
        int n2 = arrresolution.getAspectRatio_x100();
        Resolution resolution = Resolution.getSuperiorAutoOptions(n)[arrresolution.ordinal()];
        Rect rect = resolution.getPictureRect();

        if (n2 != (int) ((float) rect.width() / (float) rect.height() * 100.0f))
            throw new UnsupportedOperationException("Unsupported shape or resolution");
        else
            return resolution;

    }

    @DexIgnore
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
        return (Resolution[]) arrayList.toArray(new Resolution[0]);
    }

    @DexIgnore
    public Rect getPictureRect() {
        return this.mPictureRect;
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
    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.RESOLUTION;
    }

    @DexIgnore
    @Override
    public int getParameterKeyTextId() {
        return 2131296314;
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
        return this.toString();
    }

    @DexIgnore
    public static Resolution getDefaultValue(CapturingMode var0) {
        return null;
    }

    @DexIgnore
    public static Resolution[] getOptions(CapturingMode var8) {
        return new Resolution[0];
    }

    @DexIgnore
    public static Resolution[] getHdrDependentOptions(Resolution[] options, boolean var4, int var3) {
        return new Resolution[0];
    }

    @DexIgnore
    public static Resolution getHdrResolution(Resolution resolution, boolean var4, int var3) {
        return null;
    }
}

