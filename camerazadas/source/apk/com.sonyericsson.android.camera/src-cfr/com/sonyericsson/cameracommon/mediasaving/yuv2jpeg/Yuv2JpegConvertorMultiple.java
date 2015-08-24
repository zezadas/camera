/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonymobile.imageprocessor.jpegencoder.JpegEncoder
 */
package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.graphics.YuvImage;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.Yuv2ExifJpegConvertor;
import com.sonymobile.imageprocessor.jpegencoder.JpegEncoder;

public class Yuv2JpegConvertorMultiple
extends Yuv2ExifJpegConvertor {
    private static final String TAG = Yuv2JpegConvertorMultiple.class.getSimpleName();
    private JpegEncoder mEncoder;

    public Yuv2JpegConvertorMultiple() {
        try {
            Class.forName("com.sonymobile.imageprocessor.jpegencoder.JpegEncoder");
            this.mEncoder = JpegEncoder.create();
            return;
        }
        catch (ClassNotFoundException var1_1) {
            return;
        }
    }

    public byte[] convert(YuvImage yuvImage, int n, int n2) {
        if (this.mEncoder != null) {
            return Yuv2ExifJpegConvertor.convertYuvToPlainJpegWithImageProcessor(this.mEncoder, yuvImage, n, n2);
        }
        return Yuv2ExifJpegConvertor.convertYuvToPlainJpegWithoutImageProcessor(yuvImage, n, n2);
    }

    public void release() {
        if (this.mEncoder != null) {
            this.mEncoder.release();
            this.mEncoder = null;
        }
    }
}

