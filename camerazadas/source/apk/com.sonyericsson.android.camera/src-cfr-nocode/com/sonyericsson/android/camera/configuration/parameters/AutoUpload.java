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
public final class AutoUpload
extends Enum<AutoUpload>
implements ParameterValue {
    private static final /* synthetic */ AutoUpload[] $VALUES;
    public static final /* enum */ AutoUpload OFF;
    public static final /* enum */ AutoUpload ON;
    private static final int sParameterTextId = 2131296510;
    private final int mIconId;
    private final boolean mIsAutoUploadOn;
    private final int mTextId;

    static;

    private AutoUpload(int var3, int var4, boolean var5);

    public static AutoUpload getDefaultValue();

    public static AutoUpload[] getOptions();

    public static AutoUpload valueOf(String var0);

    public static AutoUpload[] values();

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

    public boolean isAutoUploadOn();
}

