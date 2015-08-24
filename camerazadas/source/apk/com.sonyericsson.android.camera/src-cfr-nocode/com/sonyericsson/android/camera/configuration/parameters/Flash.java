/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Flash
extends Enum<Flash>
implements ParameterValue {
    private static final /* synthetic */ Flash[] $VALUES;
    public static final /* enum */ Flash AUTO;
    public static final /* enum */ Flash LED_OFF;
    public static final /* enum */ Flash LED_ON;
    public static final /* enum */ Flash OFF;
    public static final /* enum */ Flash ON;
    public static final /* enum */ Flash PHOTO_LIGHT_ON_AS_FLASH;
    public static final /* enum */ Flash RED_EYE;
    private final int mIconId;
    private final boolean mIsSceneDependent;
    private final int mTextId;
    private final String mValue;

    static;

    private Flash(int var3, int var4, String var5, boolean var6);

    public static Flash getDefaultValue();

    public static Flash getFlashFromParameterString(String var0);

    public static Flash[] getOptions(ActionMode var0);

    public static int getParameterKeyTitleTextId();

    public static boolean isSupported(int var0);

    public static Flash valueOf(String var0);

    public static Flash[] values();

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

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] var1, ParameterValue var2);

    @Override
    public int getTextId();

    @Override
    public String getValue();

    public boolean isSceneDependent();
}

