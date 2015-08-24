/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.mediasaving;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.media.CameraProfile;
import android.net.Uri;
import com.sonyericsson.android.camera.mediasaving.ExifFactory;
import com.sonyericsson.android.camera.mediasaving.ExifOption;
import com.sonyericsson.android.camera.mediasaving.IntegrationMakerException;
import com.sonyericsson.android.camera.util.ThreadSafeOutputStream;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;

public class MediaSavingUtil {
    private static final byte[] APP0_MARKER;
    private static final int EXIF_THUMBNAIL_HEIGHT = 120;
    private static final int EXIF_THUMBNAIL_WIDTH = 160;
    public static final int HEADER_MARGIN = 1024;
    private static final int M_DHT = 196;
    private static final int M_DQT = 219;
    private static final int M_MARKER = 255;
    private static final int M_SOI = 216;
    private static final int M_SOS = 218;
    private static final int SIZE_OF_ONE_BYTE = 8;
    private static final byte[] SOI_MARKER;
    static final String TAG;

    static {
        TAG = MediaSavingUtil.class.getSimpleName();
        SOI_MARKER = new byte[]{-1, -40};
        APP0_MARKER = new byte[]{-1, -32};
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int addExifHeader(OutputStream outputStream, SavingRequest object, byte[] arrby) {
        int n;
        object = ExifOption.create((SavingRequest)object, arrby);
        arrby = new byte[ExifFactory.getLength() + (int)object.mThumbnailDataLength];
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
            CameraLogger.e(TAG, "Add exif header failed.", iOException);
            return -1;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void appendOnlyImageFromJfifData(OutputStream outputStream, byte[] arrby, int n) {
        int n2 = MediaSavingUtil.skipApp0Marker(arrby);
        if (n2 <= 0) return;
        try {
            outputStream.write(arrby, n2, n - n2);
            outputStream.flush();
            return;
        }
        catch (IOException var0_1) {
            CameraLogger.e(TAG, "Append image data failed.", var0_1);
            return;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static MediaSavingResult convertYuvToJpegOutputStream(YuvImage object, OutputStream object2, SavingRequest savingRequest) {
        MediaSavingResult mediaSavingResult = MediaSavingResult.FAIL;
        int n = CameraProfile.getJpegEncodingQualityParameter(2);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] arrby = new byte[]{};
        int n2 = 0;
        if (object.compressToJpeg(new Rect(0, 0, savingRequest.common.width, savingRequest.common.height), n, byteArrayOutputStream)) {
            object = byteArrayOutputStream.toByteArray();
            arrby = new byte[object.length + 1024];
            try {
                n2 = MediaSavingUtil.integrateJfif((byte[])object, arrby);
            }
            catch (IntegrationMakerException var0_1) {
                arrby = byteArrayOutputStream.toByteArray();
                n2 = arrby.length;
            }
        }
        if (MediaSavingUtil.addExifHeader((OutputStream)object2, savingRequest, MediaSavingUtil.getExifThumbnail(arrby, savingRequest)) > 0) {
            MediaSavingUtil.appendOnlyImageFromJfifData((OutputStream)object2, arrby, n2);
            object = MediaSavingResult.SUCCESS;
        } else {
            CameraLogger.e(TAG, "addExifHeader failed.");
            object = mediaSavingResult;
        }
        object2 = object;
        if (byteArrayOutputStream == null) return object2;
        try {
            byteArrayOutputStream.close();
            return object;
        }
        catch (IOException var1_6) {
            CameraLogger.e(TAG, "Closing output stream failed.", var1_6);
            return object;
        }
        catch (Exception exception) {
            CameraLogger.e(TAG, "saveImage failed.", exception);
            object2 = mediaSavingResult;
            if (byteArrayOutputStream == null) return object2;
            try {
                byteArrayOutputStream.close();
                return mediaSavingResult;
            }
            catch (IOException var0_3) {
                CameraLogger.e(TAG, "Closing output stream failed.", var0_3);
                return mediaSavingResult;
            }
        }
        catch (Throwable throwable) {
            if (byteArrayOutputStream == null) throw throwable;
            try {
                byteArrayOutputStream.close();
            }
            catch (IOException var1_7) {
                CameraLogger.e(TAG, "Closing output stream failed.", var1_7);
                throw throwable;
            }
            throw throwable;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static byte[] getExifThumbnail(byte[] object, SavingRequest object2) {
        float f;
        int n;
        int n2 = Math.max(object2.common.width / 160, object2.common.height / 120);
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
            n2 = MediaSavingUtil.integrateJfif((byte[])object, (byte[])object2);
            object = object2;
        }
        catch (IntegrationMakerException var1_3) {
            n2 = object.length;
        }
        n = MediaSavingUtil.skipApp0Marker((byte[])object);
        object2 = new byte[n2 - n + SOI_MARKER.length];
        object2[0] = SOI_MARKER[0];
        object2[1] = SOI_MARKER[1];
        System.arraycopy(object, n, object2, SOI_MARKER.length, object2.length - SOI_MARKER.length);
        try {
            byteArrayOutputStream.close();
            return object2;
        }
        catch (IOException var0_1) {
            CameraLogger.e(TAG, "Closing output stream failed.", var0_1);
            return object2;
        }
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

    public static boolean isCoverPicture(int n) {
        if (n == 2) {
            return true;
        }
        return false;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static MediaSavingResult saveImage(byte[] object, Uri object2, Context object3) {
        if (object2 == null) {
            return MediaSavingResult.FAIL;
        }
        MediaSavingResult mediaSavingResult = MediaSavingResult.FAIL;
        Object object4 = null;
        Object object5 = null;
        Object object6 = null;
        object6 = object2 = object3.getContentResolver().openOutputStream((Uri)object2);
        object4 = object2;
        object5 = object2;
        object2.write((byte[])object);
        object6 = object2;
        object4 = object2;
        object5 = object2;
        object2.close();
        object6 = object2;
        object4 = object2;
        object5 = object2;
        object = object3 = MediaSavingResult.SUCCESS;
        if (object2 == null) return object;
        try {
            object2.flush();
            object2.close();
            return object3;
        }
        catch (IOException var0_1) {
            CameraLogger.e(TAG, "Failed to close output stream.", var0_1);
            return object3;
        }
        catch (IOException iOException) {
            object5 = object6;
            CameraLogger.e(TAG, "Failed to write image data.", iOException);
            object = mediaSavingResult;
            if (object6 == null) return object;
            {
                catch (Throwable throwable) {
                    if (object5 == null) throw throwable;
                    try {
                        object5.flush();
                        object5.close();
                    }
                    catch (IOException var1_8) {
                        CameraLogger.e(TAG, "Failed to close output stream.", var1_8);
                        throw throwable;
                    }
                    throw throwable;
                }
            }
            try {
                object6.flush();
                object6.close();
                return mediaSavingResult;
            }
            catch (IOException var0_3) {
                CameraLogger.e(TAG, "Failed to close output stream.", var0_3);
                return mediaSavingResult;
            }
            catch (SecurityException securityException) {
                object5 = object4;
                CameraLogger.e(TAG, "Failed to write image data.", securityException);
                object = mediaSavingResult;
                if (object4 == null) return object;
                try {
                    object4.flush();
                    object4.close();
                    return mediaSavingResult;
                }
                catch (IOException var0_5) {
                    CameraLogger.e(TAG, "Failed to close output stream.", var0_5);
                    return mediaSavingResult;
                }
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static MediaSavingResult saveImage(byte[] var0, String var1_7, int var2_13) {
        if (var1_7 == null) {
            return MediaSavingResult.FAIL;
        }
        var4_14 = MediaSavingResult.FAIL;
        var6_15 = null;
        var7_16 = null;
        var3_17 = null;
        var5_21 = null;
        var1_7 = new ThreadSafeOutputStream(new FileOutputStream((String)var1_7));
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STORE_DATA_INTO_SD_CARD, true, "" + var0.length + " bytes");
        var1_7.write((byte[])var0, 0, var2_13);
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STORE_DATA_INTO_SD_CARD, false);
        var0 = MediaSavingResult.SUCCESS;
        if (var1_7 == null) return var0;
        try {
            var1_7.flush();
            var1_7.close();
            return var0;
        }
        catch (IOException var1_8) {
            CameraLogger.e(MediaSavingUtil.TAG, "IOException in closing output stream.", var1_8);
            return var0;
        }
        catch (FileNotFoundException var1_9) {
            var0 = var5_21;
            ** GOTO lbl77
            catch (IOException var1_10) {
                var0 = var6_15;
                ** GOTO lbl62
                catch (Exception var1_11) {
                    var0 = var7_16;
                    ** GOTO lbl38
                    catch (Throwable var0_6) {
                        var3_17 = var1_7;
                        ** GOTO lbl-1000
                    }
                    catch (Exception var3_18) {
                        var0 = var1_7;
                        var1_7 = var3_18;
                    }
lbl38: // 2 sources:
                    var3_17 = var0;
                    try {
                        CameraLogger.e(MediaSavingUtil.TAG, "saveImage failed.", (Throwable)var1_7);
                        var1_7 = var4_14;
                        if (var0 == null) return var1_7;
                    }
                    catch (Throwable var0_4) lbl-1000: // 2 sources:
                    {
                        if (var3_17 == null) throw var0_5;
                        try {
                            var3_17.flush();
                            var3_17.close();
                        }
                        catch (IOException var1_12) {
                            CameraLogger.e(MediaSavingUtil.TAG, "IOException in closing output stream.", var1_12);
                            throw var0_5;
                        }
                        throw var0_5;
                    }
                    try {
                        var0.flush();
                        var0.close();
                        return var4_14;
                    }
                    catch (IOException var0_3) {
                        CameraLogger.e(MediaSavingUtil.TAG, "IOException in closing output stream.", var0_3);
                        return var4_14;
                    }
                    catch (IOException var3_19) {
                        var0 = var1_7;
                        var1_7 = var3_19;
                    }
lbl62: // 2 sources:
                    var3_17 = var0;
                    CameraLogger.e(MediaSavingUtil.TAG, "saveImage failed.", (Throwable)var1_7);
                    var1_7 = var4_14;
                    if (var0 == null) return var1_7;
                    try {
                        var0.flush();
                        var0.close();
                        return var4_14;
                    }
                    catch (IOException var0_2) {
                        CameraLogger.e(MediaSavingUtil.TAG, "IOException in closing output stream.", var0_2);
                        return var4_14;
                    }
                    catch (FileNotFoundException var3_20) {
                        var0 = var1_7;
                        var1_7 = var3_20;
                    }
lbl77: // 2 sources:
                    var3_17 = var0;
                    CameraLogger.e(MediaSavingUtil.TAG, "saveImage failed.", (Throwable)var1_7);
                    var1_7 = var4_14;
                    if (var0 == null) return var1_7;
                    try {
                        var0.flush();
                        var0.close();
                        return var4_14;
                    }
                    catch (IOException var0_1) {
                        CameraLogger.e(MediaSavingUtil.TAG, "IOException in closing output stream.", var0_1);
                        return var4_14;
                    }
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static MediaSavingResult saveYuvImage(YuvImage object, String object2, SavingRequest savingRequest) {
        if (object2 == null) {
            return MediaSavingResult.FAIL;
        }
        Object object3 = MediaSavingResult.SUCCESS;
        Object object4 = null;
        try {
            object4 = object2 = new ThreadSafeOutputStream(new FileOutputStream((String)object2));
            object2 = object3;
        }
        catch (FileNotFoundException var1_4) {
            CameraLogger.e(TAG, "saveImage failed.", var1_4);
            object2 = MediaSavingResult.FAIL;
        }
        catch (Exception var1_5) {
            CameraLogger.e(TAG, "saveImage failed.", var1_5);
            object2 = MediaSavingResult.FAIL;
        }
        object3 = object2;
        if (object2 == MediaSavingResult.SUCCESS) {
            object3 = MediaSavingUtil.convertYuvToJpegOutputStream((YuvImage)object, (OutputStream)object4, savingRequest);
        }
        object = object3;
        if (object3 == MediaSavingResult.SUCCESS) {
            try {
                object4.flush();
                object = object3;
            }
            catch (IOException var0_2) {
                CameraLogger.e(TAG, "Flushing output stream failed.", var0_2);
                object = MediaSavingResult.FAIL;
            }
        }
        object2 = object;
        if (object4 == null) return object2;
        try {
            object4.close();
            return object;
        }
        catch (IOException var0_1) {
            CameraLogger.e(TAG, "Closing output stream failed.", var0_1);
            return MediaSavingResult.FAIL;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int skipApp0Marker(byte[] arrby) {
        if (arrby.length >= 2 && arrby[0] == SOI_MARKER[0] && arrby[1] == SOI_MARKER[1]) {
            int n;
            for (int i = 0 + 2; i < arrby.length - 3 && arrby[i] == APP0_MARKER[0]; i+=n) {
                n = (arrby[i + 2] << 8) + (arrby[i + 3] & 255);
                if (arrby[i + 1] != APP0_MARKER[1]) continue;
                return APP0_MARKER.length + i + n;
            }
        }
        return -1;
    }
}

