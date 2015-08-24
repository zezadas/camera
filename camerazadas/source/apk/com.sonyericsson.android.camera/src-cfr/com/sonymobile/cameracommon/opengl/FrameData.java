/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import android.graphics.Bitmap;

public class FrameData {
    private Bitmap mBitmap;
    private byte[] mByteArray = null;
    private final ImageFormat mFormat;
    private final int mFrameHeight;
    private final int mFrameWidth;

    public FrameData(Bitmap bitmap) {
        this.mFormat = ImageFormat.BITMAP;
        this.mFrameWidth = bitmap.getWidth();
        this.mFrameHeight = bitmap.getHeight();
        this.mBitmap = bitmap;
    }

    public FrameData(ImageFormat imageFormat, int n, int n2) {
        this.mFormat = imageFormat;
        this.mFrameWidth = n;
        this.mFrameHeight = n2;
        switch (.$SwitchMap$com$sonymobile$cameracommon$opengl$FrameData$ImageFormat[this.mFormat.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.mByteArray = new byte[this.mFrameWidth * this.mFrameHeight * 3];
                return;
            }
            case 2: 
        }
        this.mByteArray = new byte[this.mFrameWidth * this.mFrameHeight * 3 / 2];
    }

    public FrameData(ImageFormat imageFormat, int n, int n2, byte[] arrby) {
        this.mFormat = imageFormat;
        this.mFrameWidth = n;
        this.mFrameHeight = n2;
        this.mByteArray = arrby;
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public byte[] getByteArrayYvu() {
        return this.mByteArray;
    }

    public int getFrameHeight() {
        return this.mFrameHeight;
    }

    public int getFrameWidth() {
        return this.mFrameWidth;
    }

    public ImageFormat getImageFormat() {
        return this.mFormat;
    }

    public byte[] getRgb888() {
        return this.mByteArray;
    }

    public int getVuOffset() {
        if (this.mByteArray == null) {
            return 0;
        }
        return this.mFrameWidth * this.mFrameHeight;
    }

    public int getYOffset() {
        return 0;
    }

    public void setByteArrayYvu(byte[] arrby) {
        this.mByteArray = arrby;
    }

    public static enum ImageFormat {
        YVU420_SEMIPLANAR,
        RGB888,
        BITMAP;
        

        private ImageFormat() {
        }
    }

}

