/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class CapturingMode
extends Enum<CapturingMode>
implements ParameterValue {
    private static final /* synthetic */ CapturingMode[] $VALUES;
    public static final /* enum */ CapturingMode FRONT_PHOTO;
    public static final /* enum */ CapturingMode FRONT_VIDEO;
    public static final /* enum */ CapturingMode NORMAL;
    public static final /* enum */ CapturingMode PHOTO;
    public static final /* enum */ CapturingMode SCENE_RECOGNITION;
    public static final /* enum */ CapturingMode SUPERIOR_FRONT;
    private static final String TAG;
    public static final /* enum */ CapturingMode UNKNOWN;
    public static final /* enum */ CapturingMode VIDEO;
    private static final int sParameterTextId = 2131296294;
    private static final CapturingMode[] sPhotoOptions;
    private final int mCameraId;
    private final int mIconId;
    private final int mTextId;
    private final int mType;

    static;

    private CapturingMode(int var3, int var4, int var5, int var6);

    public static CapturingMode convertFrom(String var0, CapturingMode var1);

    public static CapturingMode[] getPhotoOptions();

    public static List<CapturingMode> getValidOptions(CameraActivity var0);

    public static CapturingMode valueOf(String var0);

    public static CapturingMode[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public int getCameraId();

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

    public int getType();

    @Override
    public String getValue();

    public boolean isFront();

    public boolean isMainPhoto();

    public boolean isManual();

    public boolean isSuperiorAuto();
}

