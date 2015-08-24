/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.Context;
import android.util.SparseArray;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ResolutionOptions {
    private static final SparseArray<PreviewVideoResolutionDependentValues> sPreviewVideoValueArray;
    private static final SparseArray<ResolutionDependentValues> sResolutionValueArray;
    private final String mDefaultResolution;
    private final String mDefaultVideoSize;
    private final int mHighQualityVideoSize;
    private final int mMaxPictureSize;
    private final String[] mResolutionOptions;
    private final String[] mVideoSizeOptions;

    static;

    public ResolutionOptions();

    public ResolutionOptions(Context var1, int var2, int var3);

    static /* synthetic */ int access$000(int var0);

    static /* synthetic */ int access$100(int var0);

    public static String getDefaultResolution(Context var0, int var1);

    private static int getDefaultVideoSize(int var0);

    private String getDefaultVideoSize(Context var1, int var2, int var3);

    private String[] getResolutionOptions(Context var1, int var2);

    private static final PreviewVideoResolutionDependentValues getValueFromPreviewVideoMap(int var0);

    private static final ResolutionDependentValues getValueFromResolutionMap(int var0);

    private static int getVideoSizeOptions(int var0);

    private String[] getVideoSizeOptions(Context var1, int var2, int var3);

    public String getDefaultResolution();

    public String getDefaultVideoSize();

    public int getHighQualityPreviewSize();

    public int getPictureSize();

    public String[] getResolutionOptions();

    public String[] getVideoSizeOptions();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class PreviewVideoResolutionDependentValues
    extends Enum<PreviewVideoResolutionDependentValues> {
        private static final /* synthetic */ PreviewVideoResolutionDependentValues[] $VALUES;
        public static final /* enum */ PreviewVideoResolutionDependentValues FOUR_K_UHD;
        public static final /* enum */ PreviewVideoResolutionDependentValues FULL_HD;
        public static final /* enum */ PreviewVideoResolutionDependentValues FULL_HD_60FPS;
        public static final /* enum */ PreviewVideoResolutionDependentValues HD;
        private final int mDefaultVideoSizeValue;
        private final int mVideoSizeOptionsValue;

        static;

        private PreviewVideoResolutionDependentValues(int var3, int var4);

        static /* synthetic */ int access$200(PreviewVideoResolutionDependentValues var0);

        static /* synthetic */ int access$300(PreviewVideoResolutionDependentValues var0);

        public static PreviewVideoResolutionDependentValues valueOf(String var0);

        public static PreviewVideoResolutionDependentValues[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class ResolutionDependentValues
    extends Enum<ResolutionDependentValues> {
        private static final /* synthetic */ ResolutionDependentValues[] $VALUES;
        public static final /* enum */ ResolutionDependentValues EIGHT;
        public static final /* enum */ ResolutionDependentValues FIVE;
        public static final /* enum */ ResolutionDependentValues ONE;
        public static final /* enum */ ResolutionDependentValues THIRTEEN;
        public static final /* enum */ ResolutionDependentValues TWELVE;
        public static final /* enum */ ResolutionDependentValues TWENTY;
        public static final /* enum */ ResolutionDependentValues TWENTY_THREE;
        public static final /* enum */ ResolutionDependentValues TWO;
        public static final /* enum */ ResolutionDependentValues VGA;
        private final DefaltVideoSizeProvider mDefaultVideoSize;
        private final int mNormalResolutionValue;
        private final int mResolutionOptionsValue;
        private final VideoSizeOptionsProvider mVideoSizeOptions;
        private final int mWideResolutionValue;

        static;

        private ResolutionDependentValues(int var3, int var4, int var5, DefaltVideoSizeProvider var6, VideoSizeOptionsProvider var7);

        static /* synthetic */ int access$400(ResolutionDependentValues var0);

        static /* synthetic */ VideoSizeOptionsProvider access$500(ResolutionDependentValues var0);

        static /* synthetic */ int access$600(ResolutionDependentValues var0);

        static /* synthetic */ int access$700(ResolutionDependentValues var0);

        static /* synthetic */ DefaltVideoSizeProvider access$800(ResolutionDependentValues var0);

        public static ResolutionDependentValues valueOf(String var0);

        public static ResolutionDependentValues[] values();

        static interface DefaltVideoSizeProvider {
            public int get(int var1);
        }

        static interface VideoSizeOptionsProvider {
            public int get(int var1);
        }

    }

}

