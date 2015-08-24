/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.font;

import android.widget.TextView;

/*
 * Exception performing whole class analysis ignored.
 */
public class SstFontUtil {
    public SstFontUtil();

    public static boolean setSstFont(TextView var0, SstFontType var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class SstFontType
    extends Enum<SstFontType> {
        private static final /* synthetic */ SstFontType[] $VALUES;
        public static final /* enum */ SstFontType BOLD;
        public static final /* enum */ SstFontType CONDENSED;
        public static final /* enum */ SstFontType CONDENSED_BOLD;
        public static final /* enum */ SstFontType HEAVY;
        public static final /* enum */ SstFontType HEAVY_ITALIC;
        public static final /* enum */ SstFontType LIGHT;
        public static final /* enum */ SstFontType LIGHT_ITALIC;
        public static final /* enum */ SstFontType MEDIUM;
        public static final /* enum */ SstFontType MEDIUM_ITALIC;
        public static final /* enum */ SstFontType ROMAN;
        public static final /* enum */ SstFontType ULTRA_LIGHT;
        public static final /* enum */ SstFontType ULTRA_LIGHT_ITALIC;
        private final String mPath;

        static;

        private SstFontType(String var3);

        static /* synthetic */ String access$000(SstFontType var0);

        public static SstFontType valueOf(String var0);

        public static SstFontType[] values();
    }

}

