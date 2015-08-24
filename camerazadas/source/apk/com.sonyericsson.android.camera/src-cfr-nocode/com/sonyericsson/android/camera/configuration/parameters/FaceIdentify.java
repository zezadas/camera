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
public final class FaceIdentify
extends Enum<FaceIdentify>
implements ParameterValue {
    private static final /* synthetic */ FaceIdentify[] $VALUES;
    public static final /* enum */ FaceIdentify OFF;
    public static final /* enum */ FaceIdentify ON;
    private static final int sParameterTextId = 2131296538;
    private final int mIconId;
    private final boolean mIsFaceIdentifyOn;
    private final int mTextId;

    static;

    private FaceIdentify(int var3, int var4, boolean var5);

    public static FaceIdentify[] getOptions(ActionMode var0);

    public static FaceIdentify valueOf(String var0);

    public static FaceIdentify[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public Boolean getBooleanValue();

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

