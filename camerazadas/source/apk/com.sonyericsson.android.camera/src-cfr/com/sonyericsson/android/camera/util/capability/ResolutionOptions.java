/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.content.res.Resources;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.android.camera.util.capability.ResolutionDependence;

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

    public ResolutionOptions() {
        this.mMaxPictureSize = 0;
        this.mHighQualityVideoSize = 0;
        this.mResolutionOptions = new String[0];
        this.mSuperiorAutoResolutionOptions = new String[0];
        this.mVideoSizeOptions = new String[0];
        this.mDefaultResolution = "";
        this.mBurstResolution = "";
        this.mDefaultVideoSize = "";
        this.mHdr3ResolutionOptions = new String[0];
        this.mHdr3DefaultResolution = "";
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public ResolutionOptions(Context var1_1, int var2_2, int var3_3, boolean var4_4) {
        super();
        this.mMaxPictureSize = var2_2;
        this.mHighQualityVideoSize = var3_3;
        var11_5 = ResolutionDependence.isDependOnAspect(var1_1);
        switch (this.mMaxPictureSize) {
            default: {
                var8_6 = 2131623954;
                var7_7 = 2131623954;
                var9_8 = 2131623965;
                var10_9 = 2131623977;
                var3_3 = 2131296785;
                var6_10 = 2131296785;
                var5_11 = 2131296808;
                var2_2 = 2131296798;
                ** GOTO lbl137
            }
            case 5984: {
                var8_6 = 2131623942;
                var9_8 = 2131623955;
                var7_7 = 2131623942;
                var10_9 = 2131623966;
                if (var11_5.booleanValue()) {
                    var3_3 = 2131296786;
                    var6_10 = 2131296786;
                } else {
                    var3_3 = 2131296776;
                    var6_10 = 2131296776;
                }
                var2_2 = 2131296794;
                var5_11 = 2131296799;
                ** GOTO lbl137
            }
            case 5248: {
                var8_6 = 2131623943;
                var9_8 = 2131623956;
                var7_7 = 2131623943;
                var10_9 = 2131623967;
                if (var11_5.booleanValue()) {
                    var3_3 = 2131296787;
                    var6_10 = 2131296787;
                } else {
                    var3_3 = 2131296777;
                    var6_10 = 2131296777;
                }
                var2_2 = 2131296795;
                var5_11 = 2131296800;
                ** GOTO lbl137
            }
            case 4128: {
                var8_6 = 2131623944;
                var7_7 = 2131623944;
                var9_8 = 2131623957;
                var10_9 = 2131623968;
                if (var11_5.booleanValue()) {
                    var3_3 = 2131296788;
                    var6_10 = 2131296788;
                } else {
                    var3_3 = 2131296778;
                    var6_10 = 2131296778;
                }
                var2_2 = 2131296796;
                var5_11 = 2131296801;
                ** GOTO lbl137
            }
            case 4000: {
                var8_6 = 2131623945;
                var7_7 = 2131623945;
                var9_8 = 2131623958;
                var10_9 = 2131623969;
                var3_3 = var11_5 != false ? 2131296789 : 2131296779;
                var6_10 = 2131296789;
                var2_2 = 2131296798;
                var5_11 = 2131296802;
                ** GOTO lbl137
            }
            case 3264: {
                var8_6 = 2131623946;
                var7_7 = 2131623947;
                var9_8 = var4_4 != false ? 2131623960 : 2131623959;
                var10_9 = this.getVideoSizeOptions(this.mHighQualityVideoSize);
                if (var11_5.booleanValue()) {
                    var3_3 = 2131296790;
                    var6_10 = 2131296790;
                } else {
                    var3_3 = 2131296780;
                    var6_10 = 2131296781;
                }
                var2_2 = 2131296797;
                var5_11 = this.getDefaultVideoSize(this.mHighQualityVideoSize);
                ** GOTO lbl137
            }
            case 2592: {
                var8_6 = 2131623948;
                var7_7 = 2131623948;
                var9_8 = 2131623961;
                var10_9 = 2131623973;
                if (var11_5.booleanValue()) {
                    var3_3 = 2131296791;
                    var6_10 = 2131296791;
                } else {
                    var3_3 = 2131296782;
                    var6_10 = 2131296782;
                }
                var2_2 = 2131296798;
                var5_11 = 2131296805;
                ** GOTO lbl137
            }
            case 1920: {
                var3_3 = 0;
                var12_12 = HardwareCapability.getCapability(0);
                var2_2 = var3_3;
                if (var12_12 != null) {
                    var2_2 = var12_12.getMaxPictureSize();
                } else {
                    ** GOTO lbl120
                }
            }
            case 1280: 
        }
        var8_6 = 2131623953;
        var7_7 = 2131623953;
        var9_8 = 2131623964;
        var10_9 = 2131623976;
        if (var11_5.booleanValue()) {
            var3_3 = 2131296793;
            var6_10 = 2131296793;
        } else {
            var3_3 = 2131296784;
            var6_10 = 2131296784;
        }
        var5_11 = 2131296807;
        var2_2 = 2131296798;
        ** GOTO lbl137
        catch (IllegalArgumentException var12_13) {
            var2_2 = var3_3;
        }
lbl120: // 4 sources:
        if (var2_2 == 5248) {
            var8_6 = 2131623949;
            var7_7 = 2131623950;
            var10_9 = 2131623974;
        } else {
            var8_6 = 2131623951;
            var7_7 = 2131623952;
            var10_9 = 2131623975;
        }
        var9_8 = var4_4 != false ? 2131623962 : 2131623963;
        if (var11_5.booleanValue()) {
            var3_3 = 2131296792;
            var6_10 = 2131296792;
        } else {
            var3_3 = 2131296783;
            var6_10 = 2131296783;
        }
        var2_2 = 2131296798;
        var5_11 = 2131296806;
lbl137: // 9 sources:
        this.mResolutionOptions = var1_1.getResources().getStringArray(var8_6);
        this.mHdr3ResolutionOptions = var1_1.getResources().getStringArray(var7_7);
        this.mSuperiorAutoResolutionOptions = var1_1.getResources().getStringArray(var9_8);
        this.mVideoSizeOptions = var1_1.getResources().getStringArray(var10_9);
        this.mDefaultResolution = var1_1.getResources().getString(var3_3);
        this.mBurstResolution = var1_1.getResources().getString(var2_2);
        this.mDefaultVideoSize = var1_1.getResources().getString(var5_11);
        this.mHdr3DefaultResolution = var1_1.getResources().getString(var6_10);
    }

    private int getDefaultVideoSize(int n) {
        switch (n) {
            default: {
                return 2131296804;
            }
            case 1080: {
                return 2131296803;
            }
            case 720: 
        }
        return 2131296804;
    }

    private int getVideoSizeOptions(int n) {
        switch (n) {
            default: {
                return -1;
            }
            case 1080: {
                return 2131623971;
            }
            case 720: 
        }
        return 2131623972;
    }

    public String getBurstResolution() {
        return this.mBurstResolution;
    }

    public String getDefaultResolution() {
        return this.mDefaultResolution;
    }

    public String getDefaultVideoSize() {
        return this.mDefaultVideoSize;
    }

    public String getHdr3DefaultResolution() {
        return this.mHdr3DefaultResolution;
    }

    public String[] getHdr3ResolutionOptions() {
        return (String[])this.mHdr3ResolutionOptions.clone();
    }

    public int getPictureSize() {
        return this.mMaxPictureSize;
    }

    public String[] getResolutionOptions() {
        return (String[])this.mResolutionOptions.clone();
    }

    public String[] getSuperiorAutoResolutionOptions() {
        return (String[])this.mSuperiorAutoResolutionOptions.clone();
    }

    public String[] getVideoSizeOptions() {
        return (String[])this.mVideoSizeOptions.clone();
    }
}

