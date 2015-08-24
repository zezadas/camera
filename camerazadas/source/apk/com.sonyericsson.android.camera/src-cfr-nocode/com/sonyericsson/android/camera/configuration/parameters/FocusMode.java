/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class FocusMode
extends Enum<FocusMode>
implements ParameterValue {
    private static final /* synthetic */ FocusMode[] $VALUES;
    public static final /* enum */ FocusMode FACE_DETECTION;
    public static final /* enum */ FocusMode FIXED;
    public static final /* enum */ FocusMode INFINITY;
    public static final /* enum */ FocusMode MULTI;
    public static final /* enum */ FocusMode OBJECT_TRACKING;
    public static final /* enum */ FocusMode SINGLE;
    public static final /* enum */ FocusMode TOUCH_FOCUS;
    private static final int sParameterTextId = 2131296326;
    private final String mFocusArea;
    private final int mIconId;
    private final boolean mSuccessSound;
    private final int mTextId;
    private String mValue;
    private String mValueForVideo;

    static;

    private FocusMode(int var3, int var4, String var5, String var6, String var7, boolean var8);

    public static FocusMode getDefaultValue(CapturingMode var0);

    private static FocusMode[] getExpectedOptions(String[] var0);

    public static FocusMode[] getOptions(CapturingMode var0);

    private static void remove(FocusMode var0, List<FocusMode> var1);

    public static void updateValue(int var0, List<String> var1);

    public static FocusMode valueOf(String var0);

    public static FocusMode[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public String getFocusArea();

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

    public String getValueForVideo();

    public boolean isSuccessSound();

}

