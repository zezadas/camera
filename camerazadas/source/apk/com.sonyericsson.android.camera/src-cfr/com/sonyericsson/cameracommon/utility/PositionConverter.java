/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class PositionConverter {
    private static final String TAG = "PositionConverter";
    private static final Rect sDeviceRect = new Rect(-1000, -1000, 1000, 1000);
    private static PositionConverter sInstance = new PositionConverter();
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

    private PositionConverter() {
    }

    private Rect convert(Rect parcelable, Matrix matrix) {
        if (matrix == null) {
            CameraLogger.w("PositionConverter", "Matrix to convert rect is null. Surface has not been created.");
            return new Rect();
        }
        parcelable = new RectF((Rect)parcelable);
        matrix.mapRect((RectF)parcelable);
        return new Rect(Math.round(parcelable.left), Math.round(parcelable.top), Math.round(parcelable.right), Math.round(parcelable.bottom));
    }

    public static PositionConverter getInstance() {
        return sInstance;
    }

    /*
     * Enabled aggressive block sorting
     */
    private Matrix getMatrix() {
        Matrix matrix = new Matrix();
        if (this.mMirror) {
            matrix.setScale(-1.0f, 1.0f);
        } else {
            matrix.setScale(1.0f, 1.0f);
        }
        matrix.postRotate(this.mDisplayOrientation);
        return matrix;
    }

    public Rect convertDeviceToFace(Rect rect) {
        return this.convert(rect, this.mMatrixFromPreviewToSurface);
    }

    public Rect convertFaceFromDeviceToPreview(Rect rect) {
        return this.convert(rect, this.mMatrixFromDeviceToPreview);
    }

    public Rect convertFaceToDevice(Rect rect) {
        return this.convert(rect, this.mMatrixFromSurfaceToPreview);
    }

    public Rect convertToDevice(Rect rect) {
        if (!sDeviceRect.contains(rect = this.convert(rect, this.mMatrixFromSurfaceToDevice))) {
            rect.intersect(sDeviceRect);
        }
        return rect;
    }

    public Rect convertToView(Rect rect) {
        return this.convert(rect, this.mMatrixFromDeviceToSurface);
    }

    public Rect getDeviceRect() {
        return new Rect(sDeviceRect);
    }

    public Rect getPreviewSize() {
        return new Rect(0, 0, this.mPreviewWidth, this.mPreviewHeight);
    }

    public void init(boolean bl, int n, Rect rect, Rect rect2) {
        if (this.mMirror != bl || this.mDisplayOrientation != n || this.mSurfaceWidth != rect.width() || this.mSurfaceHeight != rect.height()) {
            this.mPrepared = false;
        }
        this.mMirror = bl;
        this.mDisplayOrientation = n;
        this.mPreviewWidth = rect2.width();
        this.mPreviewHeight = rect2.height();
        this.setSurfaceSize(rect.width(), rect.height());
        this.mPrepared = true;
    }

    public void setOrientation(int n) {
        if (this.mPrepared) {
            return;
        }
        this.mMatrixFromDeviceToSurface.postRotate(n);
        this.mMatrixFromDeviceToPreview.postRotate(n);
        this.mMatrixFromSurfaceToDevice.postRotate(n);
        this.mMatrixFromSurfaceToPreview.postRotate(n);
        this.mMatrixFromPreviewToSurface.postRotate(n);
    }

    public void setPreviewSize(int n, int n2) {
        if (this.mPrepared && this.mPreviewWidth == n && this.mPreviewHeight == n2) {
            return;
        }
        this.mMatrixFromSurfaceToPreview = this.getMatrix();
        this.mMatrixFromPreviewToSurface = this.getMatrix();
        this.mPreviewWidth = n;
        this.mPreviewHeight = n2;
        this.mMatrixFromSurfaceToPreview.postScale((float)this.mPreviewWidth / (float)this.mSurfaceWidth, (float)this.mPreviewHeight / (float)this.mSurfaceHeight);
        this.mMatrixFromPreviewToSurface.postScale((float)this.mSurfaceWidth / (float)this.mPreviewWidth, (float)this.mSurfaceHeight / (float)this.mPreviewHeight);
    }

    public void setSurfaceSize(int n, int n2) {
        if (this.mPrepared && this.mSurfaceWidth == n && this.mSurfaceHeight == n2) {
            return;
        }
        this.mMatrixFromDeviceToSurface = this.getMatrix();
        this.mMatrixFromDeviceToPreview = this.getMatrix();
        this.mMatrixFromSurfaceToDevice = this.getMatrix();
        this.mMatrixFromSurfaceToPreview = this.getMatrix();
        this.mMatrixFromPreviewToSurface = this.getMatrix();
        this.mSurfaceWidth = n;
        this.mSurfaceHeight = n2;
        this.mMatrixFromDeviceToSurface.postScale((float)this.mSurfaceWidth / (float)sDeviceRect.width(), (float)this.mSurfaceHeight / (float)sDeviceRect.height());
        this.mMatrixFromDeviceToSurface.postTranslate((float)this.mSurfaceWidth / 2.0f, (float)this.mSurfaceHeight / 2.0f);
        this.mMatrixFromDeviceToPreview.postScale((float)this.mPreviewWidth / (float)sDeviceRect.width(), (float)this.mPreviewHeight / (float)sDeviceRect.height());
        this.mMatrixFromDeviceToPreview.postTranslate((float)this.mPreviewWidth / 2.0f, (float)this.mPreviewHeight / 2.0f);
        this.mMatrixFromSurfaceToDevice.postScale((float)sDeviceRect.width() / (float)this.mSurfaceWidth, (float)sDeviceRect.height() / (float)this.mSurfaceHeight);
        this.mMatrixFromSurfaceToDevice.postTranslate(PositionConverter.sDeviceRect.left, PositionConverter.sDeviceRect.top);
        this.mMatrixFromSurfaceToPreview.postScale((float)this.mPreviewWidth / (float)this.mSurfaceWidth, (float)this.mPreviewHeight / (float)this.mSurfaceHeight);
        this.mMatrixFromPreviewToSurface.postScale((float)this.mSurfaceWidth / (float)this.mPreviewWidth, (float)this.mSurfaceHeight / (float)this.mPreviewHeight);
    }
}

