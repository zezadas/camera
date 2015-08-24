/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InvalidObjectException;

public class ImageLoader {
    private static final int FIRST_REDUCE_RATIO_FULL_IMG = 2;
    private static final int FULL_SIZE_MAX_LENGTH = 1025;
    private static final String TAG = ImageLoader.class.getSimpleName();
    private final Context mContext;
    private final byte[] mImageData;
    private final BitmapFactory.Options mOption;
    private final int mOrientation;
    private final Uri mUri;

    public ImageLoader(Context context, Uri uri, int n) {
        this.mContext = context;
        this.mUri = uri;
        this.mImageData = null;
        this.mOrientation = n;
        this.mOption = new BitmapFactory.Options();
    }

    public ImageLoader(Context context, byte[] arrby, int n) {
        this.mContext = context;
        this.mUri = null;
        this.mImageData = arrby;
        this.mOrientation = n;
        this.mOption = new BitmapFactory.Options();
    }

    private void calcBounds(InputStream object, BitmapFactory.Options options) throws InvalidObjectException, FileNotFoundException {
        options.inSampleSize = 2;
        options.inJustDecodeBounds = true;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        if (!((object = this.decodeStream((InputStream)object, options)) == null || object.isRecycled())) {
            object.recycle();
        }
        if (options.outWidth == -1 || options.outHeight == -1) {
            CameraLogger.e(TAG, "Bitmap read error");
            throw new InvalidObjectException("Failed to calculate bounds of bitmap");
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int calcRatio(BitmapFactory.Options options, int n, int n2) {
        int n3 = options.outWidth * n;
        int n4 = options.outHeight * n;
        n = (n3 + n2 - 1) / n2;
        int n5 = Math.max((n4 + n2 - 1) / n2, n);
        if (n5 == 0) {
            return 1;
        }
        n = n5;
        if (n5 <= 1) return n;
        if (n3 / n5 > n2) return n5 - 1;
        n = n5;
        if (n4 / n5 <= n2) return n;
        return n5 - 1;
    }

    private Bitmap decodeStream(InputStream inputStream, BitmapFactory.Options options) throws FileNotFoundException {
        return BitmapFactory.decodeStream(inputStream, new Rect(0, 0, 0, 0), options);
    }

    private Bitmap loadFullSize(InputStream object, BitmapFactory.Options object2) throws FileNotFoundException, InvalidObjectException {
        object2.inJustDecodeBounds = false;
        object2.inDither = false;
        object2.inPreferredConfig = Bitmap.Config.RGB_565;
        if ((object2 = this.decodeStream((InputStream)object, (BitmapFactory.Options)object2)) == null) {
            CameraLogger.e(TAG, "loadFullSize: Decode read error");
            throw new InvalidObjectException("Failed to decode full size image");
        }
        CameraLogger.showOrientation(TAG, "loadFullSize: mOrientation", this.mOrientation);
        object = object2;
        if (this.mOrientation != 0) {
            object = new Matrix();
            float f = (float)object2.getWidth() / 2.0f;
            float f2 = (float)object2.getHeight() / 2.0f;
            object.setRotate(this.mOrientation, f, f2);
            Bitmap bitmap = Bitmap.createBitmap((Bitmap)object2, 0, 0, object2.getWidth(), object2.getHeight(), (Matrix)object, false);
            object2.recycle();
            object = bitmap.copy(Bitmap.Config.RGB_565, false);
            bitmap.recycle();
        }
        return object;
    }

    /*
     * Exception decompiling
     */
    public Bitmap load() {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Started 3 blocks at once
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
}

