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

@TargetApi(value=19)
public class ImageConvertor {
    private static final String TAG;

    static {
        System.loadLibrary("cameracommonimageconvertor");
        TAG = ImageConvertor.class.getSimpleName();
    }

    public static final void convertArgb8888ToYvu420Sp(int n, int n2, int[] arrn, byte[] arrby) {
        if ((n = ImageConvertor.nativeConvertArgb8888ToYvu420Sp(n, n2, arrn, arrby)) != 0) {
            throw new ImageConvertorException("Error Code Returned : " + n);
        }
    }

    public static YuvImage convertBitmapToYuv(Bitmap bitmap) {
        int n = bitmap.getWidth();
        int n2 = bitmap.getHeight();
        int[] arrn = new int[n * n2];
        byte[] arrby = new byte[n * n2 * 3 / 2];
        bitmap.getPixels(arrn, 0, n, 0, 0, n, n2);
        ImageConvertor.convertArgb8888ToYvu420Sp(n, n2, arrn, arrby);
        return new YuvImage(arrby, 17, n, n2, null);
    }

    public static Bitmap convertYuvToBitmap(YuvImage yuvImage) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        return ImageConvertor.convertYuvToBitmap(yuvImage, options);
    }

    /*
     * Exception decompiling
     */
    private static Bitmap convertYuvToBitmap(YuvImage var0, BitmapFactory.Options var1_5) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:369)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:447)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    public static Bitmap convertYuvToBitmap(YuvImage yuvImage, ShrinkRatio shrinkRatio) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.inSampleSize = shrinkRatio.shrinkSize;
        return ImageConvertor.convertYuvToBitmap(yuvImage, options);
    }

    public static YuvImage cropYuvImage(YuvImage yuvImage, Rect rect) {
        byte[] arrby;
        if (yuvImage == null || rect == null) {
            return null;
        }
        int n = rect.width();
        int n2 = rect.height();
        int n3 = rect.left;
        int n4 = rect.top;
        int n5 = n3;
        int n6 = n;
        if (n3 % 2 != 0) {
            n5 = n3 + 1;
            n6 = n - 1;
        }
        n = n6;
        if (n6 % 2 != 0) {
            n = n6 + 1;
        }
        n6 = n4;
        n3 = n2;
        if (n4 % 2 != 0) {
            n6 = n4 + 1;
            n3 = n2 - 1;
        }
        n2 = n3;
        if (n3 % 2 != 0) {
            n2 = n3 + 1;
        }
        int n7 = yuvImage.getWidth();
        int n8 = yuvImage.getHeight();
        if (n <= 0 || n5 >= n7 || n2 <= 0 || n6 >= n8) {
            return null;
        }
        n4 = n5;
        n3 = n;
        if (n5 < 0) {
            n3 = n + n5;
            n4 = 0;
        }
        n = n3;
        if (n4 + n3 > n7) {
            n = n7 - n4;
        }
        n3 = n6;
        n5 = n2;
        if (n6 < 0) {
            n5 = n2 + n6;
            n3 = 0;
        }
        n6 = n5;
        if (n3 + n5 > n8) {
            n6 = n8 - n3;
        }
        if ((n5 = ImageConvertor.nativeCropYvu420Sp((byte[])(rect = (Rect)yuvImage.getYuvData()), n7, n8, n4, n3, n, n6, arrby = new byte[n * n6 * 3 / 2])) != 0) {
            throw new ImageConvertorException("Error Code Returned : " + n5);
        }
        return new YuvImage(arrby, yuvImage.getYuvFormat(), n, n6, null);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static FrameData cropYuvImage(FrameData frameData, Rect rect) {
        FrameData frameData2;
        FrameData frameData3 = frameData2 = null;
        if (frameData == null) return frameData3;
        if (rect == null) {
            return frameData2;
        }
        int n = rect.width();
        int n2 = rect.height();
        int n3 = rect.left;
        int n4 = rect.top;
        int n5 = n3;
        int n6 = n;
        if (n3 % 2 != 0) {
            n5 = n3 + 1;
            n6 = n - 1;
        }
        n = n6;
        if (n6 % 2 != 0) {
            n = n6 + 1;
        }
        n6 = n4;
        n3 = n2;
        if (n4 % 2 != 0) {
            n6 = n4 + 1;
            n3 = n2 - 1;
        }
        n2 = n3;
        if (n3 % 2 != 0) {
            n2 = n3 + 1;
        }
        int n7 = frameData.getFrameWidth();
        int n8 = frameData.getFrameHeight();
        frameData3 = frameData2;
        if (n <= 0) return frameData3;
        frameData3 = frameData2;
        if (n5 >= n7) return frameData3;
        frameData3 = frameData2;
        if (n2 <= 0) return frameData3;
        frameData3 = frameData2;
        if (n6 >= n8) return frameData3;
        n4 = n5;
        n3 = n;
        if (n5 < 0) {
            n3 = n + n5;
            n4 = 0;
        }
        n = n3;
        if (n4 + n3 > n7) {
            n = n7 - n4;
        }
        n3 = n6;
        n5 = n2;
        if (n6 < 0) {
            n5 = n2 + n6;
            n3 = 0;
        }
        n6 = n5;
        if (n3 + n5 > n8) {
            n6 = n8 - n3;
        }
        frameData3 = new FrameData(FrameData.ImageFormat.YVU420_SEMIPLANAR, n, n6);
        n5 = ImageConvertor.nativeCropYvu420Sp(frameData.getByteArrayYvu(), n7, n8, n4, n3, n, n6, frameData3.getByteArrayYvu());
        if (n5 == 0) return frameData3;
        throw new ImageConvertorException("Error Code Returned : " + n5);
    }

    public static final void decodeJpegToYvu420Sp(String string, int n, int n2, byte[] arrby, boolean bl) {
        if ((n = ImageConvertor.nativeDecodeJpegFileToYvu420Sp(string, n, n2, arrby, arrby.length, bl)) != 0) {
            throw new ImageConvertorException("Error Code Returned : " + n);
        }
    }

    public static final void decodeJpegToYvu420Sp(byte[] arrby, int n, int n2, byte[] arrby2, boolean bl) {
        if ((n = ImageConvertor.nativeDecodeJpegToYvu420Sp(arrby, arrby.length, n, n2, arrby2, arrby2.length, bl)) != 0) {
            throw new ImageConvertorException("Error Code Returned : " + n);
        }
    }

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

    public static YuvImage rotateYuv420(YuvImage yuvImage) {
        if (yuvImage == null) {
            return null;
        }
        return new YuvImage(ImageConvertor.rotateYuv420Left90WithReversedLR(yuvImage.getYuvData(), yuvImage.getWidth(), yuvImage.getHeight()), 17, yuvImage.getHeight(), yuvImage.getWidth(), null);
    }

    public static final void rotateYuv420Left90(ByteBuffer byteBuffer, int n, int n2, ByteBuffer byteBuffer2) {
        if ((n = ImageConvertor.nativeRotateByteBufferYuv420Left90(byteBuffer, n, n2, byteBuffer2)) != 0) {
            throw new ImageConvertorException("Error Code Returned : " + n);
        }
    }

    public static final void rotateYuv420Left90(byte[] arrby, int n, int n2, byte[] arrby2) {
        if ((n = ImageConvertor.nativeRotateByteArrayYuv420Left90(arrby, n, n2, arrby2)) != 0) {
            throw new ImageConvertorException("Error Code Returned : " + n);
        }
    }

    public static final byte[] rotateYuv420Left90WithReversedLR(byte[] arrby, int n, int n2) {
        int n3;
        int n4;
        byte[] arrby2 = new byte[arrby.length];
        int n5 = 0;
        for (n3 = n; n3 > 0; --n3) {
            for (n4 = n2; n4 > 0; --n4) {
                arrby2[n5] = arrby[n4 * n - (n - n3) - 1];
                ++n5;
            }
        }
        n5 = n4 = n * n2;
        int n6 = n2 / 2;
        for (n2 = n; n2 > 0; n2-=2) {
            int n7 = n - n2;
            for (n3 = n6; n3 > 0; --n3) {
                int n8 = n4 + n3 * n;
                arrby2[n5] = arrby[n8 - n7 - 2];
                arrby2[++n5] = arrby[n8 - n7 - 1];
                ++n5;
            }
        }
        return arrby2;
    }

    public static final void rotateYuv420Right90(ByteBuffer byteBuffer, int n, int n2, ByteBuffer byteBuffer2) {
        if ((n = ImageConvertor.nativeRotateByteBufferYuv420Right90(byteBuffer, n, n2, byteBuffer2)) != 0) {
            throw new ImageConvertorException("Error Code Returned : " + n);
        }
    }

    public static final void rotateYuv420Right90(byte[] arrby, int n, int n2, byte[] arrby2) {
        if ((n = ImageConvertor.nativeRotateByteArrayYuv420Right90(arrby, n, n2, arrby2)) != 0) {
            throw new ImageConvertorException("Error Code Returned : " + n);
        }
    }

    public static final void shrinkYvu420Sp(ByteBuffer byteBuffer, int n, int n2, ByteBuffer byteBuffer2, ShrinkRatio shrinkRatio) {
        if ((n = ImageConvertor.nativeShrinkByteBufferYvu420Sp(byteBuffer, n, n2, byteBuffer2, shrinkRatio.shrinkSize)) != 0) {
            throw new ImageConvertorException("Error Code Returned : " + n);
        }
    }

    public static final void shrinkYvu420Sp(byte[] arrby, int n, int n2, byte[] arrby2, ShrinkRatio shrinkRatio) {
        if ((n = ImageConvertor.nativeShrinkByteArrayYvu420Sp(arrby, n, n2, arrby2, shrinkRatio.shrinkSize)) != 0) {
            throw new ImageConvertorException("Error Code Returned : " + n);
        }
    }

    public static final void splitYvu420Sp(int n, int n2, byte[] arrby, byte[] arrby2, byte[] arrby3, byte[] arrby4, int n3) {
        if ((n = ImageConvertor.nativeSplitYvu420Sp(n, n2, arrby, arrby2, arrby3, arrby4, n3)) != 0) {
            throw new ImageConvertorException("Error Code Returned : " + n);
        }
    }

    public static class ImageConvertorException
    extends RuntimeException {
        public ImageConvertorException(String string) {
            super(string);
        }
    }

    public static enum ShrinkRatio {
        ONE(1),
        HALF(2),
        QUARTER(4),
        ONE_EIGHTH(8);
        
        public final int shrinkSize;

        private ShrinkRatio(int n2) {
            this.shrinkSize = n2;
        }
    }

}

