/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import com.sonyericsson.cameracommon.utility.CommonUtility;

public class RegionConfig {
    private static final String CHINA_REGION_PACKAGE = "com.sonymobile.cta";

    public static boolean isChinaRegion(Context context) {
        return CommonUtility.isPackageExist("com.sonymobile.cta", context);
    }
}

