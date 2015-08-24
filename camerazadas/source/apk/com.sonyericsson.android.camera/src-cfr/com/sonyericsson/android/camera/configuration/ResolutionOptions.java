/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.Context;
import android.content.res.Resources;
import android.util.SparseArray;
import com.sonyericsson.android.camera.util.capability.ResolutionDependence;

public class ResolutionOptions {
    private static final SparseArray<PreviewVideoResolutionDependentValues> sPreviewVideoValueArray = new SparseArray<PreviewVideoResolutionDependentValues>(){};
    private static final SparseArray<ResolutionDependentValues> sResolutionValueArray = new SparseArray<ResolutionDependentValues>(){};
    private final String mDefaultResolution;
    private final String mDefaultVideoSize;
    private final int mHighQualityVideoSize;
    private final int mMaxPictureSize;
    private final String[] mResolutionOptions;
    private final String[] mVideoSizeOptions;

    public ResolutionOptions() {
        this.mMaxPictureSize = 0;
        this.mHighQualityVideoSize = 0;
        this.mResolutionOptions = new String[0];
        this.mVideoSizeOptions = new String[0];
        this.mDefaultResolution = "";
        this.mDefaultVideoSize = "";
    }

    public ResolutionOptions(Context context, int n, int n2) {
        this.mMaxPictureSize = n;
        this.mHighQualityVideoSize = n2;
        this.mDefaultResolution = ResolutionOptions.getDefaultResolution(context, n);
        this.mResolutionOptions = this.getResolutionOptions(context, n);
        this.mDefaultVideoSize = this.getDefaultVideoSize(context, n, n2);
        this.mVideoSizeOptions = this.getVideoSizeOptions(context, n, n2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static String getDefaultResolution(Context context, int n) {
        if (ResolutionDependence.isDependOnAspect(context)) {
            n = ResolutionOptions.getValueFromResolutionMap(n).mNormalResolutionValue;
            do {
                return context.getResources().getString(n);
                break;
            } while (true);
        }
        n = ResolutionOptions.getValueFromResolutionMap(n).mWideResolutionValue;
        return context.getResources().getString(n);
    }

    private static int getDefaultVideoSize(int n) {
        return ResolutionOptions.getValueFromPreviewVideoMap(n).mDefaultVideoSizeValue;
    }

    private String getDefaultVideoSize(Context context, int n, int n2) {
        n = ResolutionOptions.getValueFromResolutionMap(n).mDefaultVideoSize.get(n2);
        return context.getResources().getString(n);
    }

    private String[] getResolutionOptions(Context context, int n) {
        n = ResolutionOptions.getValueFromResolutionMap(n).mResolutionOptionsValue;
        return context.getResources().getStringArray(n);
    }

    private static final PreviewVideoResolutionDependentValues getValueFromPreviewVideoMap(int n) {
        if (sPreviewVideoValueArray.indexOfKey(n) >= 0) {
            return sPreviewVideoValueArray.get(n);
        }
        return PreviewVideoResolutionDependentValues.HD;
    }

    private static final ResolutionDependentValues getValueFromResolutionMap(int n) {
        if (sResolutionValueArray.indexOfKey(n) >= 0) {
            return sResolutionValueArray.get(n);
        }
        return ResolutionDependentValues.VGA;
    }

    private static int getVideoSizeOptions(int n) {
        return ResolutionOptions.getValueFromPreviewVideoMap(n).mVideoSizeOptionsValue;
    }

    private String[] getVideoSizeOptions(Context context, int n, int n2) {
        n = ResolutionOptions.getValueFromResolutionMap(n).mVideoSizeOptions.get(n2);
        return context.getResources().getStringArray(n);
    }

    public String getDefaultResolution() {
        return this.mDefaultResolution;
    }

    public String getDefaultVideoSize() {
        return this.mDefaultVideoSize;
    }

    public int getHighQualityPreviewSize() {
        return this.mHighQualityVideoSize;
    }

    public int getPictureSize() {
        return this.mMaxPictureSize;
    }

    public String[] getResolutionOptions() {
        return (String[])this.mResolutionOptions.clone();
    }

    public String[] getVideoSizeOptions() {
        return (String[])this.mVideoSizeOptions.clone();
    }

    private static enum PreviewVideoResolutionDependentValues {
        FOUR_K_UHD(2131623967, 2131296800),
        FULL_HD_60FPS(2131623971, 2131296803),
        FULL_HD(2131623971, 2131296803),
        HD(2131623972, 2131296804);
        
        private final int mDefaultVideoSizeValue;
        private final int mVideoSizeOptionsValue;

        private PreviewVideoResolutionDependentValues(int n2, int n3) {
            this.mVideoSizeOptionsValue = n2;
            this.mDefaultVideoSizeValue = n3;
        }
    }

    private static enum ResolutionDependentValues {
        TWENTY_THREE(2131296786, 2131296776, 2131623942, new DefaltVideoSizeProvider(){

            @Override
            public int get(int n) {
                return 2131296799;
            }
        }, new VideoSizeOptionsProvider(){

            @Override
            public int get(int n) {
                return 2131623966;
            }
        }),
        TWENTY(2131296787, 2131296777, 2131623943, new DefaltVideoSizeProvider(){

            @Override
            public int get(int n) {
                return 2131296800;
            }
        }, new VideoSizeOptionsProvider(){

            @Override
            public int get(int n) {
                return 2131623967;
            }
        }),
        THIRTEEN(2131296788, 2131296778, 2131623944, new DefaltVideoSizeProvider(){

            @Override
            public int get(int n) {
                return 2131296801;
            }
        }, new VideoSizeOptionsProvider(){

            @Override
            public int get(int n) {
                return 2131623968;
            }
        }),
        TWELVE(2131296789, 2131296779, 2131623945, new DefaltVideoSizeProvider(){

            @Override
            public int get(int n) {
                return 2131296802;
            }
        }, new VideoSizeOptionsProvider(){

            @Override
            public int get(int n) {
                return 2131623969;
            }
        }),
        EIGHT(2131296790, 2131296780, 2131623946, new DefaltVideoSizeProvider(){

            @Override
            public int get(int n) {
                return ResolutionOptions.getDefaultVideoSize(n);
            }
        }, new VideoSizeOptionsProvider(){

            @Override
            public int get(int n) {
                return ResolutionOptions.getVideoSizeOptions(n);
            }
        }),
        FIVE(2131296791, 2131296782, 2131623948, new DefaltVideoSizeProvider(){

            @Override
            public int get(int n) {
                return 2131296805;
            }
        }, new VideoSizeOptionsProvider(){

            @Override
            public int get(int n) {
                return 2131623973;
            }
        }),
        TWO(2131296792, 2131296783, 2131623951, new DefaltVideoSizeProvider(){

            @Override
            public int get(int n) {
                return 2131296806;
            }
        }, new VideoSizeOptionsProvider(){

            @Override
            public int get(int n) {
                return 2131623976;
            }
        }),
        ONE(2131296793, 2131296784, 2131623953, new DefaltVideoSizeProvider(){

            @Override
            public int get(int n) {
                return 2131296807;
            }
        }, new VideoSizeOptionsProvider(){

            @Override
            public int get(int n) {
                return 2131623976;
            }
        }),
        VGA(2131296785, 2131296785, 2131623954, new DefaltVideoSizeProvider(){

            @Override
            public int get(int n) {
                return 2131296808;
            }
        }, new VideoSizeOptionsProvider(){

            @Override
            public int get(int n) {
                return 2131623977;
            }
        });
        
        private final DefaltVideoSizeProvider mDefaultVideoSize;
        private final int mNormalResolutionValue;
        private final int mResolutionOptionsValue;
        private final VideoSizeOptionsProvider mVideoSizeOptions;
        private final int mWideResolutionValue;

        private ResolutionDependentValues(int n2, int n3, int n4, DefaltVideoSizeProvider defaltVideoSizeProvider, VideoSizeOptionsProvider videoSizeOptionsProvider) {
            this.mNormalResolutionValue = n2;
            this.mWideResolutionValue = n3;
            this.mResolutionOptionsValue = n4;
            this.mDefaultVideoSize = defaltVideoSizeProvider;
            this.mVideoSizeOptions = videoSizeOptionsProvider;
        }

        static interface DefaltVideoSizeProvider {
            public int get(int var1);
        }

        static interface VideoSizeOptionsProvider {
            public int get(int var1);
        }

    }

}

