/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonymobile.imageprocessor.jpegencoder.JpegEncoder
 *  com.sonymobile.imageprocessor.jpegencoder.JpegEncoder$Parameters
 *  com.sonymobile.imageprocessor.jpegencoder.JpegEncoder$Result
 */
package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.YuvImage;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifFactory;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifInfo;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifOption;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.IntegrationMakerException;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.imageprocessor.jpegencoder.JpegEncoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public class Yuv2ExifJpegConvertor {
    private static final byte[] APP0_MARKER;
    private static final byte[] APP1_MARKER;
    private static final byte[] EXIF_BYTE_ORDER_BE;
    private static final byte[] EXIF_BYTE_ORDER_LE;
    private static final int EXIF_BYTE_ORDER_OFFSET = 11;
    private static final byte[] EXIF_CODE;
    private static final int EXIF_THUMBNAIL_HEIGHT = 120;
    private static final int EXIF_THUMBNAIL_WIDTH = 160;
    public static final int HEADER_MARGIN = 1024;
    private static final int JPEG_COMPRESS_QUALITY = 93;
    private static final byte MARKER_CODE = -1;
    private static final int MARKER_SIZE = 2;
    private static final int M_DHT = 196;
    private static final int M_DQT = 219;
    private static final int M_MARKER = 255;
    private static final int M_SOI = 216;
    private static final int M_SOS = 218;
    private static final int SEGMENT_LENGTH_AREA_SIZE = 2;
    private static final int SIZE_OF_ONE_BYTE = 8;
    private static final byte[] SOI_MARKER;
    private static final String TAG = "Yuv2ExifJpegConvertor";

    static {
        SOI_MARKER = new byte[]{-1, -40};
        APP0_MARKER = new byte[]{-1, -32};
        APP1_MARKER = new byte[]{-1, -31};
        EXIF_CODE = new byte[]{69, 120, 105, 102, 0, 0};
        EXIF_BYTE_ORDER_BE = new byte[]{77, 77};
        EXIF_BYTE_ORDER_LE = new byte[]{73, 73};
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int addExifHeader(OutputStream outputStream, ExifInfo object, byte[] arrby) {
        int n;
        object = ExifOption.create((ExifInfo)object, arrby);
        arrby = new byte[ExifFactory.getLength((ExifOption)object) + (int)object.mThumbnailDataLength];
        int n2 = n = ExifFactory.generate(arrby, (ExifOption)object);
        if (n <= 0) return n2;
        try {
            outputStream.write(SOI_MARKER);
            outputStream.write(arrby, 0, n);
            outputStream.flush();
            n2 = SOI_MARKER.length;
            return n + n2;
        }
        catch (IOException iOException) {
            CameraLogger.e("Yuv2ExifJpegConvertor", "Add exif header failed.", iOException);
            return -1;
        }
    }

    public static byte[] addExifToPlainJpeg(byte[] arrby, ExifInfo exifInfo) {
        if (arrby == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] arrby2 = Yuv2ExifJpegConvertor.getExifThumbnail(arrby, exifInfo);
        if (Yuv2ExifJpegConvertor.addExifHeader(byteArrayOutputStream, exifInfo, arrby2) > 0) {
            try {
                Yuv2ExifJpegConvertor.appendOnlyImageFromJpegData(byteArrayOutputStream, arrby, arrby.length);
                return byteArrayOutputStream.toByteArray();
            }
            catch (IntegrationMakerException var0_1) {
                CameraLogger.e("Yuv2ExifJpegConvertor", "Failed to append jpeg data.", var0_1);
                return null;
            }
        }
        CameraLogger.e("Yuv2ExifJpegConvertor", "convertYuvToExifJpeg():[Add EXIF header failed.]");
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void appendImageInExifFormat(byte[] arrby, int n, OutputStream outputStream) throws IOException, IntegrationMakerException {
        int n2;
        int n3 = n;
        n = 0;
        boolean bl = false;
        for (; n3 < arrby.length - 3; n3+=n2 + 2) {
            boolean bl2;
            int n4;
            if (arrby[n3] != -1) {
                throw new IntegrationMakerException("Invalid marker identifier code: " + Integer.toHexString(arrby[n3] & 255));
            }
            n2 = Yuv2ExifJpegConvertor.getSegmentLength(arrby, n3);
            if (arrby[n3 + 1] == -38) {
                outputStream.write(arrby, n3, arrby.length - n3);
                return;
            }
            if (arrby[n3 + 1] == -37) {
                bl2 = bl;
                n4 = n;
                if (n == 0) {
                    Yuv2ExifJpegConvertor.appendInOneSegment(arrby, n3, outputStream);
                    n4 = 1;
                    bl2 = bl;
                }
            } else if (arrby[n3 + 1] == -60) {
                bl2 = bl;
                n4 = n;
                if (!bl) {
                    Yuv2ExifJpegConvertor.appendInOneSegment(arrby, n3, outputStream);
                    bl2 = true;
                    n4 = n;
                }
            } else {
                outputStream.write(arrby, n3, n2 + 2);
                bl2 = bl;
                n4 = n;
            }
            bl = bl2;
            n = n4;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void appendInOneSegment(byte[] arrby, int n, OutputStream outputStream) throws IOException, IntegrationMakerException {
        int n2;
        if (arrby == null || n + 1 > arrby.length) {
            throw new IntegrationMakerException("Invalid Segment.");
        }
        byte by = arrby[n + 1];
        ArrayList<SegmentInfo> arrayList = new ArrayList<SegmentInfo>();
        for (; n < arrby.length - 3; n+=n2 + 2) {
            if (arrby[n] != -1) {
                throw new IntegrationMakerException("Invalid marker identifier code: " + Integer.toHexString(arrby[n] & 255));
            }
            if (arrby[n + 1] == -38) break;
            n2 = Yuv2ExifJpegConvertor.getSegmentLength(arrby, n);
            if (arrby[n + 1] != by) continue;
            arrayList.add(new SegmentInfo(n, n2));
        }
        outputStream.write(new byte[]{-1, by});
        n = 2;
        Iterator iterator = arrayList.iterator();
        while (iterator.hasNext()) {
            n+=((SegmentInfo)iterator.next()).getSegmentLength() - 2;
        }
        outputStream.write(Yuv2ExifJpegConvertor.convertToSegmentLengthBytes(n));
        iterator = arrayList.iterator();
        do {
            if (!iterator.hasNext()) {
                arrayList.clear();
                return;
            }
            SegmentInfo segmentInfo = (SegmentInfo)iterator.next();
            outputStream.write(arrby, segmentInfo.getIndex() + 2 + 2, segmentInfo.getSegmentLength() - 2);
        } while (true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void appendOnlyImageFromJpegData(OutputStream outputStream, byte[] arrby, int n) throws IntegrationMakerException {
        int n2 = Yuv2ExifJpegConvertor.skipApp0OrApp1Marker(arrby);
        if (n2 <= 0) return;
        int n3 = Yuv2ExifJpegConvertor.getSegmentNum(arrby, -37);
        int n4 = Yuv2ExifJpegConvertor.getSegmentNum(arrby, -60);
        if (n3 > 1 || n4 > 1) {
            try {
                Yuv2ExifJpegConvertor.appendImageInExifFormat(arrby, n2, outputStream);
                outputStream.flush();
                return;
            }
            catch (IOException var0_1) {
                CameraLogger.e("Yuv2ExifJpegConvertor", "Failed to append image data in exif format.", var0_1);
                return;
            }
        }
        try {
            outputStream.write(arrby, n2, n - n2);
            outputStream.flush();
            return;
        }
        catch (IOException var0_2) {
            CameraLogger.e("Yuv2ExifJpegConvertor", "Append image data failed.", var0_2);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static byte[] convertBitmapToExifJpeg(Bitmap bitmap, ExifInfo exifInfo) {
        void var1_2;
        byte[] arrby;
        if (bitmap == null || (arrby = Yuv2ExifJpegConvertor.convertBitmapToPlainJpeg(bitmap)) == null) {
            return null;
        }
        return Yuv2ExifJpegConvertor.addExifToPlainJpeg(arrby, (ExifInfo)var1_2);
    }

    public static byte[] convertBitmapToPlainJpeg(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    private static byte[] convertToSegmentLengthBytes(int n) {
        byte by = (byte)(n & 255);
        return new byte[]{(byte)(n >>> 8 & 255), by};
    }

    public static byte[] convertYuvToExifJpeg(YuvImage yuvImage, ExifInfo exifInfo) {
        if ((yuvImage = (YuvImage)Yuv2ExifJpegConvertor.convertYuvToPlainJpeg(yuvImage, exifInfo)) == null) {
            return null;
        }
        return Yuv2ExifJpegConvertor.addExifToPlainJpeg((byte[])yuvImage, exifInfo);
    }

    public static byte[] convertYuvToPlainJpeg(YuvImage yuvImage, ExifInfo exifInfo) {
        try {
            Class.forName("com.sonymobile.imageprocessor.jpegencoder.JpegEncoder");
            JpegEncoder jpegEncoder = JpegEncoder.create();
            byte[] arrby = Yuv2ExifJpegConvertor.convertYuvToPlainJpegWithImageProcessor(jpegEncoder, yuvImage, exifInfo.getWidth(), exifInfo.getHeight());
            jpegEncoder.release();
            return arrby;
        }
        catch (ClassNotFoundException var2_3) {
            return Yuv2ExifJpegConvertor.convertYuvToPlainJpegWithoutImageProcessor(yuvImage, exifInfo.getWidth(), exifInfo.getHeight());
        }
    }

    protected static byte[] convertYuvToPlainJpegWithImageProcessor(JpegEncoder jpegEncoder, YuvImage yuvImage, int n, int n2) {
        JpegEncoder.Parameters parameters = new JpegEncoder.Parameters(n, n2, yuvImage.getYuvFormat(), 93);
        return jpegEncoder.process((byte[])yuvImage.getYuvData(), (JpegEncoder.Parameters)parameters).imageBuffer;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected static byte[] convertYuvToPlainJpegWithoutImageProcessor(YuvImage yuvImage, int n, int n2) {
        int n3;
        void var2_6;
        void var0_2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (!yuvImage.compressToJpeg(new Rect(0, 0, n3, (int)var2_6), 93, byteArrayOutputStream)) {
            CameraLogger.e("Yuv2ExifJpegConvertor", "convertYuvToExifJpeg():[Compress failed]");
            return null;
        }
        byte[] arrby = byteArrayOutputStream.toByteArray();
        byte[] arrby2 = new byte[arrby.length + 1024];
        try {
            n3 = Yuv2ExifJpegConvertor.integrateJfif(arrby, arrby2);
        }
        catch (IntegrationMakerException var0_3) {
            CameraLogger.w("Yuv2ExifJpegConvertor", "convertYuvToExifJpeg():[JFIF integration failed.]");
            var0_3.printStackTrace();
            byte[] arrby3 = byteArrayOutputStream.toByteArray();
            n3 = arrby3.length;
            return Arrays.copyOf((byte[])var0_2, n3);
        }
        do {
            return Arrays.copyOf((byte[])var0_2, n3);
            break;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static ExifInfo.ByteOrder getExifByteOrder(byte[] arrby) {
        if (arrby != null && arrby.length >= 2 && arrby[0] == SOI_MARKER[0] && arrby[1] == SOI_MARKER[1]) {
            int n = 0 + 2;
            while (n + 11 < arrby.length && arrby[n] == -1 && arrby[n + 1] != -38) {
                if (arrby[n + 1] == APP1_MARKER[1] && arrby[n + 4] == EXIF_CODE[0] && arrby[n + 5] == EXIF_CODE[1] && arrby[n + 6] == EXIF_CODE[2] && arrby[n + 7] == EXIF_CODE[3] && arrby[n + 8] == EXIF_CODE[4] && arrby[n + 9] == EXIF_CODE[5]) {
                    if (arrby[n + 10] == EXIF_BYTE_ORDER_BE[0] && arrby[n + 11] == EXIF_BYTE_ORDER_BE[1]) {
                        return ExifInfo.ByteOrder.BIG_ENDIAN;
                    }
                    if (arrby[n + 10] != EXIF_BYTE_ORDER_LE[0] || arrby[n + 11] != EXIF_BYTE_ORDER_LE[1]) break;
                    return ExifInfo.ByteOrder.LITTLE_ENDIAN;
                }
                n+=Yuv2ExifJpegConvertor.getSegmentLength(arrby, n) + 2;
            }
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static byte[] getExifThumbnail(byte[] object, ExifInfo object2) {
        float f;
        int n;
        int n2 = Math.max(object2.getWidth() / 160, object2.getHeight() / 120);
        object2 = new BitmapFactory.Options();
        object2.inJustDecodeBounds = false;
        object2.inDither = false;
        object2.inPreferredConfig = Bitmap.Config.RGB_565;
        object2.inSampleSize = n2;
        object = BitmapFactory.decodeByteArray((byte[])object, 0, object.length, (BitmapFactory.Options)object2);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (object == null) {
            return new byte[0];
        }
        n2 = object.getHeight();
        float f2 = (float)n2 / 120.0f;
        if (f2 > (f = (float)(n = object.getWidth()) / 160.0f)) {
            n2 = 120;
            n = (int)((float)n / f2);
        } else {
            n = 160;
            n2 = (int)((float)n2 / f);
        }
        object2 = Bitmap.createBitmap(160, 120, Bitmap.Config.RGB_565);
        object2.eraseColor(-16777216);
        Canvas canvas = new Canvas((Bitmap)object2);
        int n3 = (160 - n) / 2;
        int n4 = (120 - n2) / 2;
        Bitmap bitmap = Bitmap.createScaledBitmap((Bitmap)object, n, n2, false);
        canvas.drawBitmap(bitmap, n3, n4, new Paint());
        if (!bitmap.isRecycled()) {
            bitmap.recycle();
        }
        object2.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        if (!object2.isRecycled()) {
            object2.recycle();
        }
        if (!object.isRecycled()) {
            object.recycle();
        }
        object = byteArrayOutputStream.toByteArray();
        object2 = new byte[object.length + 1024];
        try {
            n2 = Yuv2ExifJpegConvertor.integrateJfif((byte[])object, (byte[])object2);
            object = object2;
        }
        catch (IntegrationMakerException var1_3) {
            n2 = object.length;
        }
        n = Yuv2ExifJpegConvertor.skipApp0OrApp1Marker((byte[])object);
        object2 = new byte[n2 - n + SOI_MARKER.length];
        object2[0] = SOI_MARKER[0];
        object2[1] = SOI_MARKER[1];
        System.arraycopy(object, n, object2, SOI_MARKER.length, object2.length - SOI_MARKER.length);
        try {
            byteArrayOutputStream.close();
            return object2;
        }
        catch (IOException var0_1) {
            CameraLogger.e("Yuv2ExifJpegConvertor", "Closing output stream failed.", var0_1);
            return object2;
        }
    }

    private static int getSegmentLength(byte[] arrby, int n) {
        return ((arrby[n + 2] & 255) << 8) + (arrby[n + 3] & 255);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static int getSegmentNum(byte[] arrby, byte by) {
        if (arrby == null || arrby.length < 2 || arrby[0] != -1 || arrby[1] != -40) {
            CameraLogger.e("Yuv2ExifJpegConvertor", "Invalid SOI marker.");
            return -1;
        }
        int n = 0 + 2;
        int n2 = 0;
        do {
            int n3 = n2;
            if (n >= arrby.length - 3) return n3;
            if (arrby[n] != -1) {
                CameraLogger.e("Yuv2ExifJpegConvertor", "Invalid marker identifier code: " + Integer.toHexString(arrby[n] & 255));
                return -1;
            }
            n3 = n2;
            if (arrby[n + 1] == -38) return n3;
            n3 = n2;
            if (arrby[n + 1] == by) {
                n3 = n2 + 1;
            }
            n+=Yuv2ExifJpegConvertor.getSegmentLength(arrby, n) + 2;
            n2 = n3;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int integrateJfif(byte[] arrby, byte[] arrby2) throws IntegrationMakerException {
        int n;
        int n2;
        int n3;
        int n4;
        int n5 = arrby.length;
        byte[] arrby3 = new byte[2];
        int n6 = 0;
        int n7 = 0;
        int n8 = 0;
        int n9 = 0;
        int n10 = 0;
        while (n6 + 1 < n5) {
            arrby3[0] = arrby[n6];
            arrby3[1] = arrby[n6 + 1];
            int n11 = n6 + 2;
            if (-1 != arrby3[0]) {
                throw new IntegrationMakerException("No 'FF' marker.");
            }
            if (-38 == arrby3[1]) break;
            n6 = n11;
            if (-40 == arrby3[1]) continue;
            n6 = new BigInteger(new byte[]{arrby[n11], arrby[n11 + 1]}).intValue();
            if (-60 == arrby3[1]) {
                n2 = n8 == 0 ? n6 : n6 - 2;
                n2 = n8 + n2;
                n4 = n10 + (n6 + 2);
                n = n7;
                n3 = n9;
            } else {
                n4 = n10;
                n2 = n8;
                n3 = n9;
                n = n7;
                if (-37 == arrby3[1]) {
                    n2 = n7 == 0 ? n6 : n6 - 2;
                    n = n7 + n2;
                    n3 = n9 + (n6 + 2);
                    n4 = n10;
                    n2 = n8;
                }
            }
            n6 = n11 + n6;
            n10 = n4;
            n8 = n2;
            n9 = n3;
            n7 = n;
        }
        byte[] arrby4 = new byte[n7 + 2];
        byte[] arrby5 = new byte[n8 + 2];
        arrby4[0] = -1;
        arrby4[1] = -37;
        arrby5[0] = -1;
        arrby5[1] = -60;
        byte[] arrby6 = new BigInteger(String.valueOf(n7)).toByteArray();
        arrby4[2] = arrby6[0];
        arrby4[3] = arrby6[1];
        arrby6 = new BigInteger(String.valueOf(n8)).toByteArray();
        arrby5[2] = arrby6[0];
        arrby5[3] = arrby6[1];
        n3 = 4;
        n4 = 4;
        n2 = 0;
        n6 = 0;
        while (n2 + 1 < n5) {
            arrby3[0] = arrby[n2];
            arrby3[1] = arrby[n2 + 1];
            n2+=2;
            if (-1 != arrby3[0]) {
                throw new IntegrationMakerException("No 'FF' marker.");
            }
            if (-38 == arrby3[1]) {
                System.arraycopy(arrby4, 0, arrby2, n6, n7 + 2);
                System.arraycopy(arrby5, 0, arrby2, n6+=n7 + 2, n8 + 2);
                System.arraycopy(arrby, n2 - 2, arrby2, n6 + (n8 + 2), n5 - (n2 - 2));
                return n5 - n9 - n10 + n7 + 2 + n8 + 2;
            }
            if (-40 == arrby3[1]) {
                arrby2[n2 - 2] = arrby3[0];
                arrby2[n2 - 1] = arrby3[1];
                n6+=2;
                continue;
            }
            n = new BigInteger(new byte[]{arrby[n2], arrby[n2 + 1]}).intValue();
            if (-60 == arrby3[1]) {
                System.arraycopy(arrby, n2 + 2, arrby5, n4, n - 2);
                n4+=n - 2;
            } else if (-37 == arrby3[1]) {
                System.arraycopy(arrby, n2 + 2, arrby4, n3, n - 2);
                n3+=n - 2;
            } else {
                System.arraycopy(arrby, n2 - 2, arrby2, n6, n + 2);
                n6+=n + 2;
            }
            n2+=n;
        }
        return n5 - n9 - n10 + n7 + 2 + n8 + 2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int skipApp0OrApp1Marker(byte[] arrby) {
        if (arrby.length >= 2 && arrby[0] == SOI_MARKER[0] && arrby[1] == SOI_MARKER[1]) {
            int n;
            for (int i = 0 + 2; i < arrby.length - 3 && (arrby[i] == APP0_MARKER[0] || arrby[i] == APP1_MARKER[0]); i+=n) {
                n = Yuv2ExifJpegConvertor.getSegmentLength(arrby, i);
                if (arrby[i] == APP0_MARKER[0] && arrby[i + 1] == APP0_MARKER[1]) {
                    return APP0_MARKER.length + i + n;
                }
                if (arrby[i] != APP1_MARKER[0] || arrby[i + 1] != APP1_MARKER[1]) continue;
                return APP1_MARKER.length + i + n;
            }
        }
        return -1;
    }

    private static class SegmentInfo {
        private final int mIndex;
        private final int mSegmentLength;

        SegmentInfo(int n, int n2) {
            this.mIndex = n;
            this.mSegmentLength = n2;
        }

        public int getIndex() {
            return this.mIndex;
        }

        public int getSegmentLength() {
            return this.mSegmentLength;
        }
    }

}

