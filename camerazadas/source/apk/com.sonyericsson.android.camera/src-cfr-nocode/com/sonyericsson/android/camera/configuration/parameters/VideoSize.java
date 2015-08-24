/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.graphics.Rect;
import android.media.CamcorderProfile;
import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.MmsOptions;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class VideoSize
extends Enum<VideoSize>
implements ParameterValue {
    private static final /* synthetic */ VideoSize[] $VALUES;
    public static final /* enum */ VideoSize FOUR_K_UHD;
    public static final /* enum */ VideoSize FULL_HD;
    public static final /* enum */ VideoSize FULL_HD_60FPS;
    public static final /* enum */ VideoSize FWVGA;
    public static final /* enum */ VideoSize HD;
    public static final /* enum */ VideoSize MMS;
    public static final /* enum */ VideoSize QVGA;
    private static final String TAG = "VideoSize";
    public static final /* enum */ VideoSize VGA;
    private static final int sParameterTextId = 2131296453;
    private long mAverageFileSize;
    private final int mDefaultFrameRate;
    private final int mDefaultQuality;
    private final int mIconId;
    private final boolean mIsConstraint;
    private long mMinFileSize;
    private int mTextId;
    private VideoProfile mVideoProfile;
    private Rect mVideoRect;

    static;

    private VideoSize(int var3, int var4, Rect var5, boolean var6, int var7, int var8, int var9);

    private static boolean equals(Rect var0, Rect var1);

    private static String findVideoSizeWithConfiguration(Configurations var0, CapabilityList var1, VideoSize[] var2, StorageController var3);

    private static int getAudioBitRate(CamcorderProfile var0, int var1);

    public static VideoSize getDefaultValue(ActionMode var0, Configurations var1, StorageController var2);

    private static VideoSize[] getExpectedOptions(String[] var0);

    private static VideoSize[] getOneShotOptions(String var0, List<Rect> var1, Configurations var2);

    public static VideoSize[] getOptions(ActionMode var0, Configurations var1);

    public static VideoSize getValueFromFrameSize(int var0, int var1);

    private static VideoSize getVideoSizeWithRecordTimeMoreThanGuaranteedTime(Configurations var0, VideoSize var1, VideoSize[] var2, StorageController var3);

    private static boolean isContents(VideoSize[] var0, VideoSize var1);

    private static void log(CamcorderProfile var0);

    public static boolean updateMmsProfile(MmsOptions var0, List<Rect> var1);

    public static VideoSize valueOf(String var0);

    public static VideoSize[] values();

    @Override
    public void apply(ParameterApplicable var1);

    public long getAverageFileSize();

    public int getDefaultQuality();

    @Override
    public int getIconId();

    public long getMinFileSize();

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

    public int getVideoFrameRate();

    public VideoProfile getVideoProfile();

    public Rect getVideoRect();

    public boolean isConstraint();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class VideoProfile {
        private final CamcorderProfile mCamcorderProfile;
        public final String mExt;
        public final String mMimeType;

        VideoProfile(CamcorderProfile var1, String var2, String var3);

        public CamcorderProfile getCamcorderProfile();

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        static class Builder {
            private Integer mFrameRate;
            private Integer mInOutputFormat;
            private Integer mInQuality;
            private boolean mIsProfileLoaded;
            private CamcorderProfile mPreloadProfile;
            private String mResultExt;
            private String mResultMimeType;

            Builder();

            private void setupOutputFormatWithFormat(int var1);

            private void setupOutputFormatWithQuality(int var1);

            VideoProfile build();

            Builder frameRate(int var1);

            Builder outputFormat(int var1);

            Builder preloadProfile(CamcorderProfile var1);

            Builder quality(int var1);

            Builder quality(int var1, int var2);
        }

    }

}

