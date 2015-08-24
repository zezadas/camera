/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Scene;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class SoftSkin
extends Enum<SoftSkin>
implements ParameterValue {
    private static final /* synthetic */ SoftSkin[] $VALUES;
    public static final /* enum */ SoftSkin OFF;
    public static final /* enum */ SoftSkin ON;
    private static final int sParameterTextId = 2131296487;
    private final int mIconId;
    private final Scene mScene;
    private final int mTextId;
    private final float mValue;

    static;

    private SoftSkin(int var3, int var4, Scene var5, float var6);

    public static SoftSkin[] getOptions(CapturingMode var0);

    public static SoftSkin valueOf(String var0);

    public static SoftSkin[] values();

    @Override
    public void apply(ParameterApplicable var1);

    @Override
    public int getIconId();

    public String getLevel(int var1);

    @Override
    public ParameterKey getParameterKey();

    @Override
    public int getParameterKeyTextId();

    @Override
    public String getParameterName();

    public int getParameterkeyTitleTextId();

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] var1, ParameterValue var2);

    public Scene getScene();

    @Override
    public int getTextId();

    @Override
    public String getValue();

    public boolean isOn();
}

