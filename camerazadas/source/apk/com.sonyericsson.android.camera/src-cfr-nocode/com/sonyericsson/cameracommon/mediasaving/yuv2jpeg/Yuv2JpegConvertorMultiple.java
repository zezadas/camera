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

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Yuv2JpegConvertorMultiple
extends Yuv2ExifJpegConvertor {
    private static final String TAG;
    private JpegEncoder mEncoder;

    static;

    public Yuv2JpegConvertorMultiple();

    public byte[] convert(YuvImage var1, int var2, int var3);

    public void release();
}

