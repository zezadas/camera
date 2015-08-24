/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class VideoSmileCapture
extends Enum<VideoSmileCapture>
implements ParameterValue {
    private static final /* synthetic */ VideoSmileCapture[] $VALUES;
    public static final /* enum */ VideoSmileCapture HIGH;
    public static final /* enum */ VideoSmileCapture LOW;
    public static final /* enum */ VideoSmileCapture MIDDLE;
    public static final /* enum */ VideoSmileCapture OFF;
    private static final int sParameterTextId = 2131296530;
    private final int mNotificationIconId;
    private final SmileCapture mSmile;
    private final String mValue;

    static;

    private VideoSmileCapture(SmileCapture var3, int var4);

    public static VideoSmileCapture[] getOptions(boolean var0, CapturingMode var1);

    public static VideoSmileCapture valueOf(String var0);

    public static VideoSmileCapture[] values();

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

    public SmileCapture getSmileCapture(boolean var1);

    @Override
    public int getTextId();

    @Override
    public String getValue();

    public boolean isSmileCaptureOn();
}

