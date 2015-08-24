/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.graphics.Bitmap;

/*
 * Exception performing whole class analysis.
 */
public class FrameData {
    private Bitmap mBitmap;
    private byte[] mByteArray;
    private final ImageFormat mFormat;
    private final int mFrameHeight;
    private final int mFrameWidth;

    public FrameData(Bitmap var1);

    public FrameData(ImageFormat var1, int var2, int var3);

    public FrameData(ImageFormat var1, int var2, int var3, byte[] var4);

    public Bitmap getBitmap();

    public byte[] getByteArrayYvu();

    public int getFrameHeight();

    public int getFrameWidth();

    public ImageFormat getImageFormat();

    public byte[] getRgb888();

    public int getVuOffset();

    public int getYOffset();

    public void setByteArrayYvu(byte[] var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ImageFormat
    extends Enum<ImageFormat> {
        private static final /* synthetic */ ImageFormat[] $VALUES;
        public static final /* enum */ ImageFormat BITMAP;
        public static final /* enum */ ImageFormat RGB888;
        public static final /* enum */ ImageFormat YVU420_SEMIPLANAR;

        static;

        private ImageFormat();

        public static ImageFormat valueOf(String var0);

        public static ImageFormat[] values();
    }

}

