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
public final class VolumeKey
extends Enum<VolumeKey>
implements ParameterValue {
    private static final /* synthetic */ VolumeKey[] $VALUES;
    public static final /* enum */ VolumeKey HW_CAMERA_KEY;
    public static final /* enum */ VolumeKey VOLUME;
    public static final /* enum */ VolumeKey ZOOM;
    private static final int sParameterTextId = 2131296543;
    private final int mIconId;
    private final int mTextId;
    private String mValue;

    static;

    private VolumeKey(int var3, int var4);

    public static VolumeKey getDefault();

    public static VolumeKey[] getOptions();

    public static VolumeKey valueOf(String var0);

    public static VolumeKey[] values();

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
}

