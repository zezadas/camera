/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.font;

import android.graphics.Typeface;
import android.widget.TextView;
import java.io.File;

public class SstFontUtil {
    public static boolean setSstFont(TextView textView, SstFontType sstFontType) {
        if (!(textView != null && sstFontType != null && new File(sstFontType.mPath).exists())) {
            return false;
        }
        textView.setTypeface(Typeface.createFromFile(sstFontType.mPath));
        return true;
    }

    public static enum SstFontType {
        CONDENSED("/system/fonts/.SST-Condensed.ttf"),
        CONDENSED_BOLD("/system/fonts/.SST-CondensedBd.ttf"),
        HEAVY("/system/fonts/.SST-Heavy.ttf"),
        HEAVY_ITALIC("/system/fonts/.SST-HeavyItalic.ttf"),
        LIGHT("/system/fonts/.SST-Light.ttf"),
        LIGHT_ITALIC("/system/fonts/.SST-LightItalic.ttf"),
        MEDIUM("/system/fonts/.SST-Medium.ttf"),
        MEDIUM_ITALIC("/system/fonts/.SST-MediumItalic.ttf"),
        ULTRA_LIGHT("/system/fonts/.SST-UltraLight.ttf"),
        ULTRA_LIGHT_ITALIC("/system/fonts/.SST-UltraLightItalic.ttf"),
        BOLD("/system/fonts/.SSTVietnamese-Bold.ttf"),
        ROMAN("/system/fonts/.SSTVietnamese-Roman.ttf");
        
        private final String mPath;

        private SstFontType(String string2) {
            this.mPath = string2;
        }
    }

}

