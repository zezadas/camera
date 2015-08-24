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

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Resolution
extends Enum<Resolution>
implements ParameterValue {
    private static final /* synthetic */ Resolution[] $VALUES;
    public static final /* enum */ Resolution EIGHT_MP;
    public static final /* enum */ Resolution EIGHT_MP_WIDE;
    public static final /* enum */ Resolution FIFTEEN_MP_WIDE;
    public static final /* enum */ Resolution FIVE_MP;
    public static final /* enum */ Resolution FIVE_MP_WIDE;
    public static final /* enum */ Resolution HDR_NINE_MP;
    public static final /* enum */ Resolution HDR_SEVEN_MP;
    public static final /* enum */ Resolution HDR_SIX_MP;
    public static final /* enum */ Resolution HDR_TWELVE_MP;
    public static final /* enum */ Resolution HDR_TWENTY_MP;
    public static final /* enum */ Resolution HDR_TWO_MP;
    public static final /* enum */ Resolution HDR_TWO_MP_WIDE;
    public static final /* enum */ Resolution NINE_MP;
    public static final /* enum */ Resolution ONE_MP;
    public static final /* enum */ Resolution ONE_MP_NARROW;
    public static final /* enum */ Resolution SIX_MP;
    public static final /* enum */ Resolution TEN_MP;
    public static final /* enum */ Resolution THIRTEEN_MP;
    public static final /* enum */ Resolution THREE_MP;
    public static final /* enum */ Resolution THREE_MP_WIDE;
    public static final /* enum */ Resolution THREE_POINT_SEVEN_MP_WIDE;
    public static final /* enum */ Resolution TWELVE_MP;
    public static final /* enum */ Resolution TWENTY_MP;
    public static final /* enum */ Resolution TWENTY_MP_WIDE;
    public static final /* enum */ Resolution TWENTY_THREE_MP;
    public static final /* enum */ Resolution TWO_MP;
    public static final /* enum */ Resolution TWO_MP_WIDE;
    public static final /* enum */ Resolution UXGA;
    public static final /* enum */ Resolution VGA;
    private static final int sParameterTextId = 2131296314;
    private final int mIconId;
    private final Rect mPictureRect;
    private final int mTextId;

    static;

    private Resolution(int var3, int var4, Rect var5);

    public static Resolution getDefaultValue(CapturingMode var0);

    private static Resolution[] getExpectedOptions(String[] var0);

    public static Resolution[] getHdrDependentOptions(Resolution[] var0, boolean var1, int var2);

    public static Resolution getHdrResolution(Resolution var0, boolean var1, int var2);

    public static Resolution[] getOptions(CapturingMode var0);

    public static Resolution getResolutionFromFrameShape(CaptureFrameShape var0, int var1);

    private static Resolution[] getSuperiorAutoOptions(int var0);

    public static Resolution getValueFromPictureSize(int var0, int var1);

    public static Resolution valueOf(String var0);

    public static Resolution[] values();

    @Override
    public void apply(ParameterApplicable var1);

    @Override
    public int getIconId();

    @Override
    public ParameterKey getParameterKey();

    @Override
    public int getParameterKeyTextId();

    @Override
    public String getParameterName();

    public Rect getPictureRect();

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] var1, ParameterValue var2);

    @Override
    public int getTextId();

    @Override
    public String getValue();

}

