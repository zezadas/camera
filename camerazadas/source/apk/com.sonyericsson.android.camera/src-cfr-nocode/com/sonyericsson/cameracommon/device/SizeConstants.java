/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.device;

/*
 * Exception performing whole class analysis ignored.
 */
public class SizeConstants {
    public static final int HEIGHT_10MP = 2322;
    public static final int HEIGHT_12MP = 3000;
    public static final int HEIGHT_12MP_HDR = 2940;
    public static final int HEIGHT_13MP = 3096;
    public static final int HEIGHT_15MP_WIDE = 2952;
    public static final int HEIGHT_1MP = 960;
    public static final int HEIGHT_1MP_NARROW = 720;
    public static final int HEIGHT_20MP = 3936;
    public static final int HEIGHT_20MP_HDR = 3748;
    public static final int HEIGHT_20MP_WIDE = 3366;
    public static final int HEIGHT_20MP_WIDE_HDR = 2810;
    public static final int HEIGHT_23MP = 4140;
    public static final int HEIGHT_2MP = 1224;
    public static final int HEIGHT_2MP_HDR = 1140;
    public static final int HEIGHT_2MP_WIDE = 1080;
    public static final int HEIGHT_2MP_WIDE_HDR = 1026;
    public static final int HEIGHT_3MP = 1536;
    public static final int HEIGHT_3MP_WIDE = 1440;
    public static final int HEIGHT_3_7MP_WIDE = 1458;
    public static final int HEIGHT_5MP = 1944;
    public static final int HEIGHT_5MP_WIDE = 1746;
    public static final int HEIGHT_6MP = 1836;
    public static final int HEIGHT_6MP_HDR = 1746;
    public static final int HEIGHT_7MP_HDR = 2328;
    public static final int HEIGHT_8MP = 2448;
    public static final int HEIGHT_8MP_WIDE = 2160;
    public static final int HEIGHT_9MP = 2250;
    public static final int HEIGHT_9MP_HDR = 2204;
    public static final int HEIGHT_PREVIEW_4K_UHD = 2160;
    public static final int HEIGHT_PREVIEW_FULL_HD = 1080;
    public static final int HEIGHT_PREVIEW_FWVGA = 480;
    public static final int HEIGHT_PREVIEW_HD = 720;
    public static final int HEIGHT_PREVIEW_HVGA = 320;
    public static final int HEIGHT_PREVIEW_QCIF = 144;
    public static final int HEIGHT_PREVIEW_QHD = 540;
    public static final int HEIGHT_PREVIEW_QVGA = 240;
    public static final int HEIGHT_PREVIEW_UXGA = 1200;
    public static final int HEIGHT_PREVIEW_VGA = 480;
    public static final int HEIGHT_PREVIEW_WQHD = 1440;
    public static final int HEIGHT_PREVIEW_WQXGA = 1600;
    public static final int HEIGHT_UXGA = 1200;
    public static final int HEIGHT_VGA = 480;
    public static final int WIDTH_10MP = 4128;
    public static final int WIDTH_12MP = 4000;
    public static final int WIDTH_12MP_HDR = 3920;
    public static final int WIDTH_13MP = 4128;
    public static final int WIDTH_15MP_WIDE = 5248;
    public static final int WIDTH_1MP = 1280;
    public static final int WIDTH_1MP_NARROW = 1280;
    public static final int WIDTH_20MP = 5248;
    public static final int WIDTH_20MP_HDR = 4998;
    public static final int WIDTH_20MP_WIDE = 5984;
    public static final int WIDTH_20MP_WIDE_HDR = 4998;
    public static final int WIDTH_23MP = 5520;
    public static final int WIDTH_2MP = 1632;
    public static final int WIDTH_2MP_HDR = 1520;
    public static final int WIDTH_2MP_WIDE = 1920;
    public static final int WIDTH_2MP_WIDE_HDR = 1824;
    public static final int WIDTH_3MP = 2048;
    public static final int WIDTH_3MP_WIDE = 2560;
    public static final int WIDTH_3_7MP_WIDE = 2592;
    public static final int WIDTH_5MP = 2592;
    public static final int WIDTH_5MP_WIDE = 3104;
    public static final int WIDTH_6MP = 3264;
    public static final int WIDTH_6MP_HDR = 3104;
    public static final int WIDTH_7MP_HDR = 3104;
    public static final int WIDTH_8MP = 3264;
    public static final int WIDTH_8MP_WIDE = 3840;
    public static final int WIDTH_9MP = 4000;
    public static final int WIDTH_9MP_HDR = 3920;
    public static final int WIDTH_PREVIEW_4K_UHD = 3840;
    public static final int WIDTH_PREVIEW_FULL_HD = 1920;
    public static final int WIDTH_PREVIEW_FWVGA = 864;
    public static final int WIDTH_PREVIEW_HD = 1280;
    public static final int WIDTH_PREVIEW_HD_WIDE = 1440;
    public static final int WIDTH_PREVIEW_HVGA = 480;
    public static final int WIDTH_PREVIEW_QCIF = 176;
    public static final int WIDTH_PREVIEW_QHD = 960;
    public static final int WIDTH_PREVIEW_QVGA = 320;
    public static final int WIDTH_PREVIEW_UXGA = 1600;
    public static final int WIDTH_PREVIEW_VGA = 640;
    public static final int WIDTH_PREVIEW_WQHD = 2560;
    public static final int WIDTH_PREVIEW_WQXGA = 2560;
    public static final int WIDTH_UXGA = 1600;
    public static final int WIDTH_VGA = 640;

    public SizeConstants();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class PictureSize
    extends Enum<PictureSize> {
        private static final /* synthetic */ PictureSize[] $VALUES;
        public static final /* enum */ PictureSize SIZE_15MP_WIDE;
        public static final /* enum */ PictureSize SIZE_20MP;
        public static final /* enum */ PictureSize SIZE_20MP_HDR;
        public static final /* enum */ PictureSize SIZE_2MP_WIDE;
        public static final /* enum */ PictureSize SIZE_3MP;
        public static final /* enum */ PictureSize SIZE_8MP;
        public static final /* enum */ PictureSize SIZE_8MP_WIDE;
        int height;
        int width;

        static;

        private PictureSize(int var3, int var4);

        public static PictureSize valueOf(String var0);

        public static PictureSize[] values();

        public int getHeight();

        public int getWidth();
    }

}

