/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.graphics.Matrix;
import android.graphics.Rect;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class PositionConverter {
    private static final String TAG = "PositionConverter";
    private static final Rect sDeviceRect;
    private static PositionConverter sInstance;
    private int mDisplayOrientation;
    private Matrix mMatrixFromDeviceToPreview;
    private Matrix mMatrixFromDeviceToSurface;
    private Matrix mMatrixFromPreviewToSurface;
    private Matrix mMatrixFromSurfaceToDevice;
    private Matrix mMatrixFromSurfaceToPreview;
    private boolean mMirror;
    private boolean mPrepared;
    private int mPreviewHeight;
    private int mPreviewWidth;
    private int mSurfaceHeight;
    private int mSurfaceWidth;

    static;

    private PositionConverter();

    private Rect convert(Rect var1, Matrix var2);

    public static PositionConverter getInstance();

    private Matrix getMatrix();

    public Rect convertDeviceToFace(Rect var1);

    public Rect convertFaceFromDeviceToPreview(Rect var1);

    public Rect convertFaceToDevice(Rect var1);

    public Rect convertToDevice(Rect var1);

    public Rect convertToView(Rect var1);

    public Rect getDeviceRect();

    public Rect getPreviewSize();

    public void init(boolean var1, int var2, Rect var3, Rect var4);

    public void setOrientation(int var1);

    public void setPreviewSize(int var1, int var2);

    public void setSurfaceSize(int var1, int var2);
}

