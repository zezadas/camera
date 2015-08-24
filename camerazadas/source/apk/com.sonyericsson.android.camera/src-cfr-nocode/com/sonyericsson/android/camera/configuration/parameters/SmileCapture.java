/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class SmileCapture
extends Enum<SmileCapture>
implements ParameterValue {
    private static final /* synthetic */ SmileCapture[] $VALUES;
    public static final /* enum */ SmileCapture HIGH;
    public static final /* enum */ SmileCapture LOW;
    public static final /* enum */ SmileCapture MIDDLE;
    public static final /* enum */ SmileCapture OFF;
    private static final int sParameterTextId = 2131296475;
    private final int mDimenId;
    private final int mIconId;
    private final boolean mIsSmileCaptureOn;
    private final int mNotificationIconId;
    private final int mScoreThreshold;
    private final int mTextId;
    private final String mValue;

    static;

    private SmileCapture(int var3, int var4, int var5, int var6, int var7, boolean var8);

    public static SmileCapture[] getOptions(CapturingMode var0);

    public static SmileCapture valueOf(String var0);

    public static SmileCapture[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public int getDimenId();

    @Override
    public int getIconId();

    public int getIntValue();

    public int getNotificationIconId();

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

    public boolean isSmileCaptureOn();
}

