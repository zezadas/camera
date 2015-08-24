/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class ThumbnailFactory {
    private static final int MAX_NUM_PIXELS_MICRO_THUMBNAIL = 19200;
    private static final String TAG = "ThumbnailFactory";
    public static final int TARGET_SIZE_MICRO_THUMBNAIL = 96;
    private static final int UNCONSTRAINED = -1;

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static int computeInitialSampleSize(BitmapFactory.Options options, int n, int n2) {
        double d = options.outWidth;
        double d2 = options.outHeight;
        int n3 = n2 == -1 ? 1 : (int)Math.ceil(Math.sqrt(d * d2 / (double)n2));
        int n4 = n == -1 ? 128 : (int)Math.min(Math.floor(d / (double)n), Math.floor(d2 / (double)n));
        if (n4 < n3) {
            return n3;
        }
        if (n2 == -1 && n == -1) {
            return 1;
        }
        if (n == -1) return n3;
        return n4;
    }

    private static int computeSampleSize(BitmapFactory.Options options, int n, int n2) {
        int n3 = ThumbnailFactory.computeInitialSampleSize(options, n, n2);
        if (n3 <= 8) {
            n = 1;
            do {
                n2 = n;
                if (n < n3) {
                    --n;
                    continue;
                } else {
                    break;
                }
                break;
            } while (true);
        } else {
            n2 = (n3 + 7) / 8 * 8;
        }
        return n2;
    }

    /*
     * Exception decompiling
     */
    public static Bitmap createMicroThumbnail(Content.ContentInfo var0) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
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

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static Bitmap createVideoThumbnail(Context object, Uri uri) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource((Context)object, uri);
        object = mediaMetadataRetriever.getFrameAtTime(-1);
        try {
            mediaMetadataRetriever.release();
            return object;
        }
        catch (RuntimeException var1_7) {
            CameraLogger.e("ThumbnailFactory", "Ignore failures while cleaning up.");
            return object;
        }
        catch (IllegalArgumentException illegalArgumentException) {
            CameraLogger.e("ThumbnailFactory", "Assume this is a corrupt video file.");
            {
                catch (Throwable throwable) {
                    try {
                        mediaMetadataRetriever.release();
                    }
                    catch (RuntimeException var1_8) {
                        CameraLogger.e("ThumbnailFactory", "Ignore failures while cleaning up.");
                        throw throwable;
                    }
                    throw throwable;
                }
            }
            try {
                mediaMetadataRetriever.release();
                return null;
            }
            catch (RuntimeException var0_2) {
                CameraLogger.e("ThumbnailFactory", "Ignore failures while cleaning up.");
                return null;
            }
            catch (RuntimeException runtimeException) {
                CameraLogger.e("ThumbnailFactory", "Assume this is a corrupt video file.");
                try {
                    mediaMetadataRetriever.release();
                    return null;
                }
                catch (RuntimeException var0_4) {
                    CameraLogger.e("ThumbnailFactory", "Ignore failures while cleaning up.");
                    return null;
                }
            }
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static Bitmap createVideoThumbnail(String object) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource((String)object);
        object = mediaMetadataRetriever.getFrameAtTime(-1);
        try {
            mediaMetadataRetriever.release();
            return object;
        }
        catch (RuntimeException var1_7) {
            CameraLogger.e("ThumbnailFactory", "Ignore failures while cleaning up.");
            return object;
        }
        catch (IllegalArgumentException illegalArgumentException) {
            CameraLogger.e("ThumbnailFactory", "Assume this is a corrupt video file.");
            {
                catch (Throwable throwable) {
                    try {
                        mediaMetadataRetriever.release();
                    }
                    catch (RuntimeException var1_8) {
                        CameraLogger.e("ThumbnailFactory", "Ignore failures while cleaning up.");
                        throw throwable;
                    }
                    throw throwable;
                }
            }
            try {
                mediaMetadataRetriever.release();
                return null;
            }
            catch (RuntimeException var0_2) {
                CameraLogger.e("ThumbnailFactory", "Ignore failures while cleaning up.");
                return null;
            }
            catch (RuntimeException runtimeException) {
                CameraLogger.e("ThumbnailFactory", "Assume this is a corrupt video file.");
                try {
                    mediaMetadataRetriever.release();
                    return null;
                }
                catch (RuntimeException var0_4) {
                    CameraLogger.e("ThumbnailFactory", "Ignore failures while cleaning up.");
                    return null;
                }
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Bitmap rotateThumbnail(Bitmap bitmap, int n) {
        int n2 = bitmap.getWidth();
        int n3 = bitmap.getHeight();
        Object object = bitmap;
        if (n == 0) return object;
        try {
            object = new Matrix();
            object.setRotate(n, (float)n2 / 2.0f, (float)n3 / 2.0f);
            object = Bitmap.createBitmap(bitmap, 0, 0, n2, n3, (Matrix)object, false);
            bitmap.recycle();
        }
        catch (IllegalArgumentException illegalArgumentException) {
            CameraLogger.e("ThumbnailFactory", "IllegalArgumentException : width = " + n2 + ", height = " + n3);
            return bitmap;
        }
        catch (Exception exception) {
            CameraLogger.e("ThumbnailFactory", "Exception : width = " + n2 + ", height = " + n3);
            return bitmap;
        }
        return object;
    }
}

