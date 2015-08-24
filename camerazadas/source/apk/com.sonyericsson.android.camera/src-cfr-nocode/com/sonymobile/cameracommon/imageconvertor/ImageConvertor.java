/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.imageconvertor;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.YuvImage;
import com.sonymobile.cameracommon.opengl.FrameData;
import java.nio.ByteBuffer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@TargetApi(value=19)
public class ImageConvertor {
    private static final String TAG;

    static;

    public ImageConvertor();

    public static final void convertArgb8888ToYvu420Sp(int var0, int var1, int[] var2, byte[] var3);

    public static YuvImage convertBitmapToYuv(Bitmap var0);

    public static Bitmap convertYuvToBitmap(YuvImage var0);

    private static Bitmap convertYuvToBitmap(YuvImage var0, BitmapFactory.Options var1);

    public static Bitmap convertYuvToBitmap(YuvImage var0, ShrinkRatio var1);

    public static YuvImage cropYuvImage(YuvImage var0, Rect var1);

    public static FrameData cropYuvImage(FrameData var0, Rect var1);

    public static final void decodeJpegToYvu420Sp(String var0, int var1, int var2, byte[] var3, boolean var4);

    public static final void decodeJpegToYvu420Sp(byte[] var0, int var1, int var2, byte[] var3, boolean var4);

    private static final native int nativeConvertArgb8888ToYvu420Sp(int var0, int var1, int[] var2, byte[] var3);

    private static final native int nativeCropYvu420Sp(ByteBuffer var0, int var1, int var2, int var3, int var4, int var5, int var6, ByteBuffer var7);

    private static final native int nativeCropYvu420Sp(byte[] var0, int var1, int var2, int var3, int var4, int var5, int var6, byte[] var7);

    private static final native int nativeDecodeJpegFileToYvu420Sp(String var0, int var1, int var2, byte[] var3, int var4, boolean var5);

    private static final native int nativeDecodeJpegToYvu420Sp(byte[] var0, int var1, int var2, int var3, byte[] var4, int var5, boolean var6);

    private static final native int nativeRotateByteArrayYuv420Left90(byte[] var0, int var1, int var2, byte[] var3);

    private static final native int nativeRotateByteArrayYuv420Right90(byte[] var0, int var1, int var2, byte[] var3);

    private static final native int nativeRotateByteBufferYuv420Left90(ByteBuffer var0, int var1, int var2, ByteBuffer var3);

    private static final native int nativeRotateByteBufferYuv420Right90(ByteBuffer var0, int var1, int var2, ByteBuffer var3);

    private static final native int nativeShrinkByteArrayYvu420Sp(byte[] var0, int var1, int var2, byte[] var3, int var4);

    private static final native int nativeShrinkByteBufferYvu420Sp(ByteBuffer var0, int var1, int var2, ByteBuffer var3, int var4);

    private static final native int nativeSplitYvu420Sp(int var0, int var1, byte[] var2, byte[] var3, byte[] var4, byte[] var5, int var6);

    public static YuvImage rotateYuv420(YuvImage var0);

    public static final void rotateYuv420Left90(ByteBuffer var0, int var1, int var2, ByteBuffer var3);

    public static final void rotateYuv420Left90(byte[] var0, int var1, int var2, byte[] var3);

    public static final byte[] rotateYuv420Left90WithReversedLR(byte[] var0, int var1, int var2);

    public static final void rotateYuv420Right90(ByteBuffer var0, int var1, int var2, ByteBuffer var3);

    public static final void rotateYuv420Right90(byte[] var0, int var1, int var2, byte[] var3);

    public static final void shrinkYvu420Sp(ByteBuffer var0, int var1, int var2, ByteBuffer var3, ShrinkRatio var4);

    public static final void shrinkYvu420Sp(byte[] var0, int var1, int var2, byte[] var3, ShrinkRatio var4);

    public static final void splitYvu420Sp(int var0, int var1, byte[] var2, byte[] var3, byte[] var4, byte[] var5, int var6);

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class ImageConvertorException
    extends RuntimeException {
        public ImageConvertorException(String var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ShrinkRatio
    extends Enum<ShrinkRatio> {
        private static final /* synthetic */ ShrinkRatio[] $VALUES;
        public static final /* enum */ ShrinkRatio HALF;
        public static final /* enum */ ShrinkRatio ONE;
        public static final /* enum */ ShrinkRatio ONE_EIGHTH;
        public static final /* enum */ ShrinkRatio QUARTER;
        public final int shrinkSize;

        static;

        private ShrinkRatio(int var3);

        public static ShrinkRatio valueOf(String var0);

        public static ShrinkRatio[] values();
    }

}

