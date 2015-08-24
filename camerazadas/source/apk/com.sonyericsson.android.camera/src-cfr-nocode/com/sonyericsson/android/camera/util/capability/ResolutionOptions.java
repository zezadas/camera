/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.Context;

/*
 * Exception performing whole class analysis.
 */
public class ResolutionOptions {
    private final String mBurstResolution;
    private final String mDefaultResolution;
    private final String mDefaultVideoSize;
    private final String mHdr3DefaultResolution;
    private final String[] mHdr3ResolutionOptions;
    private final int mHighQualityVideoSize;
    private final int mMaxPictureSize;
    private final String[] mResolutionOptions;
    private final String[] mSuperiorAutoResolutionOptions;
    private final String[] mVideoSizeOptions;

    public ResolutionOptions();

    public ResolutionOptions(Context var1, int var2, int var3, boolean var4);

    private int getDefaultVideoSize(int var1);

    private int getVideoSizeOptions(int var1);

    public String getBurstResolution();

    public String getDefaultResolution();

    public String getDefaultVideoSize();

    public String getHdr3DefaultResolution();

    public String[] getHdr3ResolutionOptions();

    public int getPictureSize();

    public String[] getResolutionOptions();

    public String[] getSuperiorAutoResolutionOptions();

    public String[] getVideoSizeOptions();
}

