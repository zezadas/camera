/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class FastCapture
extends Enum<FastCapture>
implements ParameterValue {
    private static final /* synthetic */ FastCapture[] $VALUES;
    public static final /* enum */ FastCapture LAUNCH_AND_CAPTURE;
    public static final /* enum */ FastCapture LAUNCH_AND_RECORDING;
    public static final /* enum */ FastCapture LAUNCH_ONLY;
    public static final /* enum */ FastCapture OFF;
    public static final /* enum */ FastCapture VIDEO_LAUNCH_ONLY;
    private static final int sParameterTextId = 2131296363;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final String mSettingsSecureValue;
    private final int mTextId;
    private final int mType;
    private String mValue;

    static;

    private FastCapture(int var3, int var4, int var5, boolean var6, String var7);

    public static FastCapture getDefault();

    public static FastCapture[] getOptions();

    public static FastCapture valueOf(String var0);

    public static FastCapture[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public boolean getBooleanValue();

    public int getCameraType();

    @Override
    public int getIconId();

    @Override
    public ParameterKey getParameterKey();

    @Override
    public int getParameterKeyTextId();

    @Override
    public String getParameterName();

    public int getParameterkeyTitleTextId();

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] var1, ParameterValue var2);

    public String getSettingsSecureValue();

    @Override
    public int getTextId();

    @Override
    public String getValue();
}

