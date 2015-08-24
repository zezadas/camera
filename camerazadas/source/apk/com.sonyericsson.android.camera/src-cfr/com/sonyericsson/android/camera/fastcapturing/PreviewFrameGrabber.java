/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.graphics.YuvImage;
import android.hardware.Camera;
import android.location.Location;
import android.os.Handler;
import com.sonyericsson.android.camera.mediasaving.MediaSavingUtil;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class PreviewFrameGrabber {
    private ExecutorService mExecService = Executors.newSingleThreadExecutor();
    private int mFrameHeight = 0;
    private int mFrameWidth = 0;
    private Handler mHandler = new Handler();
    private OnPreviewFrameGrabbedListener mListener = null;
    private int mPreviewFormat = 0;
    private PhotoSavingRequest mSavingRequest;

    public PreviewFrameGrabber(PhotoSavingRequest photoSavingRequest) {
        this.mSavingRequest = photoSavingRequest;
    }

    private void callbackCaptureToUiThread(byte[] object) {
        object = new UiThreadCaptureCallbackTask((byte[])object);
        this.mHandler.post((Runnable)object);
    }

    public void release() {
        this.mListener = null;
        this.mSavingRequest = null;
    }

    public void requestFrame(Camera camera) {
        if (camera == null) {
            throw new NullPointerException("Handed camera object is null");
        }
        Camera.Parameters parameters = camera.getParameters();
        if (parameters == null) {
            throw new RuntimeException("Camera.getParameters() return NULL");
        }
        if (parameters.getPreviewSize() == null) {
            throw new RuntimeException("Camera.Parameters.getPreviewSize() return NULL");
        }
        this.mPreviewFormat = parameters.getPreviewFormat();
        this.mFrameWidth = parameters.getPreviewSize().width;
        this.mFrameHeight = parameters.getPreviewSize().height;
        camera.setOneShotPreviewCallback(new OnPreviewFrameCallback());
    }

    public void setOnPreviewFrameGrabbedListener(OnPreviewFrameGrabbedListener onPreviewFrameGrabbedListener) {
        this.mListener = onPreviewFrameGrabbedListener;
    }

    private class ConvertYuvToJpegAndCallbackTask
    implements Runnable {
        final byte[] mYuvData;

        public ConvertYuvToJpegAndCallbackTask(byte[] arrby) {
            this.mYuvData = arrby;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            MediaSavingResult mediaSavingResult;
            if (this.mYuvData == null) {
                PreviewFrameGrabber.this.callbackCaptureToUiThread(null);
                return;
            }
            Object object = MediaSavingResult.SUCCESS;
            object = new YuvImage(this.mYuvData, PreviewFrameGrabber.this.mPreviewFormat, PreviewFrameGrabber.this.mFrameWidth, PreviewFrameGrabber.this.mFrameHeight, null);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            object = mediaSavingResult = MediaSavingUtil.convertYuvToJpegOutputStream((YuvImage)object, byteArrayOutputStream, new PhotoSavingRequest(new TakenStatusCommon(PreviewFrameGrabber.this.mSavingRequest.getDateTaken(), PreviewFrameGrabber.access$600((PreviewFrameGrabber)PreviewFrameGrabber.this).common.orientation, PreviewFrameGrabber.access$600((PreviewFrameGrabber)PreviewFrameGrabber.this).common.location, PreviewFrameGrabber.this.mFrameWidth, PreviewFrameGrabber.this.mFrameHeight, PreviewFrameGrabber.access$600((PreviewFrameGrabber)PreviewFrameGrabber.this).common.mimeType, ".JPG", SavingTaskManager.SavedFileType.PHOTO_DURING_REC, null, null, false, false), new TakenStatusPhoto()));
            if (mediaSavingResult == MediaSavingResult.SUCCESS) {
                try {
                    byteArrayOutputStream.flush();
                    object = mediaSavingResult;
                }
                catch (IOException var1_3) {
                    var1_3.printStackTrace();
                    object = MediaSavingResult.FAIL;
                }
            }
            if (object == MediaSavingResult.SUCCESS) {
                PreviewFrameGrabber.this.callbackCaptureToUiThread(byteArrayOutputStream.toByteArray());
            } else {
                PreviewFrameGrabber.this.callbackCaptureToUiThread(null);
            }
            try {
                byteArrayOutputStream.close();
                return;
            }
            catch (IOException var1_2) {
                var1_2.printStackTrace();
                return;
            }
        }
    }

    class OnPreviewFrameCallback
    implements Camera.PreviewCallback {
        OnPreviewFrameCallback() {
        }

        @Override
        public void onPreviewFrame(byte[] object, Camera camera) {
            if (PreviewFrameGrabber.this.mListener != null) {
                PreviewFrameGrabber.this.mListener.onPreviewShutterDone();
            }
            object = new ConvertYuvToJpegAndCallbackTask((byte[])object);
            PreviewFrameGrabber.this.mExecService.execute((Runnable)object);
        }
    }

    public static interface OnPreviewFrameGrabbedListener {
        public void onPreviewFrameGrabbed(PreviewFrameGrabber var1, byte[] var2);

        public void onPreviewShutterDone();
    }

    private class UiThreadCaptureCallbackTask
    implements Runnable {
        private final byte[] mJpegData;

        public UiThreadCaptureCallbackTask(byte[] arrby) {
            this.mJpegData = arrby;
        }

        @Override
        public void run() {
            if (PreviewFrameGrabber.this.mListener != null) {
                PreviewFrameGrabber.this.mListener.onPreviewFrameGrabbed(PreviewFrameGrabber.this, this.mJpegData);
            }
        }
    }

}

