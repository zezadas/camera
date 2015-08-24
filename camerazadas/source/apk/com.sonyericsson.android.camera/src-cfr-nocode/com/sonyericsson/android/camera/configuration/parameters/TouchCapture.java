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
public final class TouchCapture
extends Enum<TouchCapture>
implements ParameterValue {
    private static final /* synthetic */ TouchCapture[] $VALUES;
    public static final /* enum */ TouchCapture OFF;
    public static final /* enum */ TouchCapture VIEW_FINDER;
    private static final int sParameterTextId = 2131296502;
    private final boolean mBooleanValue;
    private final int mIconId;
    private final int mNotificationId;
    private final int mTextId;

    static;

    private TouchCapture(int var3, int var4, int var5, boolean var6);

    public static TouchCapture[] getOptions();

    public static TouchCapture valueOf(String var0);

    public static TouchCapture[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public Boolean getBooleanValue();

    @Override
    public int getIconId();

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
}

