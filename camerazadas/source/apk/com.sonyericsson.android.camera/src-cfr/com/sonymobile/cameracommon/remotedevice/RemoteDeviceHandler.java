/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice;

import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import com.sonymobile.cameracommon.remotedevice.event.EventObserverCallback;
import com.sonymobile.cameracommon.remotedevice.event.EventObserverController;
import com.sonymobile.cameracommon.remotedevice.photo.TakePictureCallback;
import com.sonymobile.cameracommon.remotedevice.photo.TakePictureController;
import com.sonymobile.cameracommon.remotedevice.stream.EvfStreamCallback;
import com.sonymobile.cameracommon.remotedevice.stream.EvfStreamController;
import com.sonymobile.cameracommon.remotedevice.video.MovieRecCallback;
import com.sonymobile.cameracommon.remotedevice.video.MovieRecController;
import java.util.concurrent.ExecutorService;

public class RemoteDeviceHandler {
    private static final boolean IS_DEBUG = false;
    private static final String TAG = RemoteDeviceHandler.class.getSimpleName();
    private ExecutorService mCallbackExecutor = null;
    private EventObserverController mEventObserver = null;
    private EvfStreamController mEvfStreamSlicer = null;
    private boolean mIsOnEvfStreaming = false;
    private MovieRecController mMovieRecController = null;
    private RemoteDevice mRemoteDevice = null;
    private TakePictureController mTakePictureController = null;

    public RemoteDeviceHandler(RemoteDevice remoteDevice, ExecutorService executorService) {
        this.mRemoteDevice = remoteDevice;
        this.mCallbackExecutor = executorService;
        this.mEventObserver = new EventObserverController(this.mRemoteDevice, this.mCallbackExecutor);
        this.mTakePictureController = new TakePictureController(this.mRemoteDevice, this.mCallbackExecutor);
        this.mMovieRecController = new MovieRecController(this.mRemoteDevice, this.mCallbackExecutor);
        this.mEventObserver.addCallback(this.mRemoteDevice.getEventObserverCallback());
        this.mEventObserver.addCallback(this.mTakePictureController.getEventObserverCallback());
        this.mEventObserver.addCallback(this.mMovieRecController.getEventObserverCallback());
    }

    public void closeEvf() {
        if (this.mEvfStreamSlicer != null) {
            this.mEvfStreamSlicer.close();
            this.mEvfStreamSlicer.release();
            this.mEvfStreamSlicer = null;
        }
        this.mIsOnEvfStreaming = false;
    }

    public boolean isMovieRecSupported() {
        return this.mRemoteDevice.isMovieRecSupported();
    }

    public boolean isTakePictureSupported() {
        return this.mRemoteDevice.isStillCaptureSupported();
    }

    public void openEvf(EvfStreamCallback evfStreamCallback) {
        this.mIsOnEvfStreaming = true;
        this.mEvfStreamSlicer = new EvfStreamController(this.mRemoteDevice, evfStreamCallback, this.mCallbackExecutor);
        this.mEvfStreamSlicer.open();
    }

    public void release() {
        if (this.mIsOnEvfStreaming) {
            throw new IllegalStateException("Do closeEvf() before release().");
        }
        if (this.mEventObserver != null) {
            this.mEventObserver.clearCallbacks();
            this.mEventObserver.stop();
            this.mEventObserver.release();
            this.mEventObserver = null;
        }
        if (this.mEvfStreamSlicer != null) {
            this.mEvfStreamSlicer.release();
            this.mEvfStreamSlicer = null;
        }
        if (this.mTakePictureController != null) {
            this.mTakePictureController.release();
            this.mTakePictureController = null;
        }
        if (this.mRemoteDevice != null) {
            this.mRemoteDevice.release();
            this.mRemoteDevice = null;
        }
        this.mCallbackExecutor = null;
    }

    public void startMonitoring() {
        this.mEventObserver.start();
    }

    public void startMovieRec(MovieRecCallback movieRecCallback) {
        if (!this.mRemoteDevice.isMovieRecSupported()) {
            return;
        }
        this.mMovieRecController.startMovieRec(movieRecCallback);
    }

    public void stopMonitoring() {
        if (this.mEventObserver != null) {
            this.mEventObserver.stop();
        }
    }

    public void stopMovieRec() {
        this.mMovieRecController.stopMovieRec();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void takePicture(TakePictureCallback takePictureCallback) {
        if (!(this.mRemoteDevice.isStillCaptureSupported() && this.mRemoteDevice.changeToStillMode())) {
            return;
        }
        this.mTakePictureController.takePicture(takePictureCallback);
    }
}

