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
public final class VideoHdr
extends Enum<VideoHdr>
implements ParameterValue {
    private static final /* synthetic */ VideoHdr[] $VALUES;
    public static final /* enum */ VideoHdr OFF;
    public static final /* enum */ VideoHdr ON;
    private static final int sParameterTextId = 2131296507;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    static;

    private VideoHdr(int var3, int var4, String var5);

    public static VideoHdr[] getOptions(CapturingMode var0);

    public static boolean isSupported(CapturingMode var0);

    public static VideoHdr valueOf(String var0);

    public static VideoHdr[] values();

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

    public int getParameterkeyTitleTextId();

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] var1, ParameterValue var2);

    @Override
    public int getTextId();

    @Override
    public String getValue();
}

