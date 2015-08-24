/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Scene
extends Enum<Scene>
implements ParameterValue {
    private static final /* synthetic */ Scene[] $VALUES;
    public static final /* enum */ Scene ANTI_MOTION;
    public static final /* enum */ Scene BACKLIGHT_HDR;
    public static final /* enum */ Scene BEACH;
    public static final /* enum */ Scene BEACH_SNOW;
    public static final /* enum */ Scene DOCUMENT;
    public static final /* enum */ Scene FIRE_WORKS;
    public static final /* enum */ Scene GOURMET;
    public static final /* enum */ Scene HAND_NIGHT;
    public static final /* enum */ Scene HIGH_SENSITIVITY;
    public static final /* enum */ Scene LANDSCAPE;
    public static final /* enum */ Scene NIGHT;
    public static final /* enum */ Scene NIGHT_MODE;
    public static final /* enum */ Scene NIGHT_PORTRAIT;
    public static final /* enum */ Scene OFF;
    public static final /* enum */ Scene PARTY;
    public static final /* enum */ Scene PET;
    public static final /* enum */ Scene PORTRAIT;
    public static final /* enum */ Scene SNOW;
    public static final /* enum */ Scene SOFT_SKIN;
    public static final /* enum */ Scene SPORTS;
    private static final int sParameterTextId = 2131296306;
    private final FocusMode mFocusMode;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    static;

    private Scene(int var3, int var4, String var5, FocusMode var6);

    private static Scene[] getExpectedOptions(String[] var0);

    public static Scene[] getOptions(CapturingMode var0);

    private static boolean isSupportedBeachAndSnowIndividually();

    public static Scene valueOf(String var0);

    public static Scene[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public FocusMode getFocusMode();

    @Override
    public int getIconId();

    @Override
    public ParameterKey getParameterKey();

    @Override
    public int getParameterKeyTextId();

    @Override
    public String getParameterName();

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] var1, ParameterValue var2);

    @Override
    public int getTextId();

    @Override
    public String getValue();
}

