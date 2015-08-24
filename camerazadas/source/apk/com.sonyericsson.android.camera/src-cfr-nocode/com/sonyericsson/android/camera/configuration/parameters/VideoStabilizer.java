/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.graphics.Rect;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class VideoStabilizer
extends Enum<VideoStabilizer>
implements ParameterValue {
    private static final /* synthetic */ VideoStabilizer[] $VALUES;
    public static final /* enum */ VideoStabilizer INTELLIGENT_ACTIVE;
    public static final /* enum */ VideoStabilizer OFF;
    public static final /* enum */ VideoStabilizer ON;
    public static final /* enum */ VideoStabilizer STEADY_SHOT;
    private static final int TEXT_ID_SS = 2131296477;
    private static final int TEXT_ID_VS = 2131296529;
    private final int mIconId;
    private final int mTextId;
    private final String mValue;

    static;

    private VideoStabilizer(int var3, int var4, String var5);

    public static VideoStabilizer[] getOptions(int var0);

    public static int getParameterKeyTitleText(int var0);

    public static VideoStabilizer getRecommendedVideoStabilizerValue(int var0, VideoSize var1);

    public static VideoStabilizer[] getVideoStabilizerOptions(int var0);

    public static boolean isIntelligentActive(VideoStabilizer var0);

    public static boolean isIntelligentActiveSupported(int var0, VideoSize var1);

    private static boolean isMaxSizeLargerThanOrEqualToVideoSize(Rect var0, VideoSize var1);

    public static boolean isSteadyShotSupported(int var0, VideoSize var1);

    private static boolean isValidWhenVideoSizeIs(VideoSize var0);

    public static VideoStabilizer valueOf(String var0);

    public static VideoStabilizer[] values();

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

