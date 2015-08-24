/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice;

import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import com.sonymobile.cameracommon.remotedevice.event.EventObserverController;
import com.sonymobile.cameracommon.remotedevice.photo.TakePictureCallback;
import com.sonymobile.cameracommon.remotedevice.photo.TakePictureController;
import com.sonymobile.cameracommon.remotedevice.stream.EvfStreamCallback;
import com.sonymobile.cameracommon.remotedevice.stream.EvfStreamController;
import com.sonymobile.cameracommon.remotedevice.video.MovieRecCallback;
import com.sonymobile.cameracommon.remotedevice.video.MovieRecController;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class RemoteDeviceHandler {
    private static final boolean IS_DEBUG = false;
    private static final String TAG;
    private ExecutorService mCallbackExecutor;
    private EventObserverController mEventObserver;
    private EvfStreamController mEvfStreamSlicer;
    private boolean mIsOnEvfStreaming;
    private MovieRecController mMovieRecController;
    private RemoteDevice mRemoteDevice;
    private TakePictureController mTakePictureController;

    static;

    public RemoteDeviceHandler(RemoteDevice var1, ExecutorService var2);

    public void closeEvf();

    public boolean isMovieRecSupported();

    public boolean isTakePictureSupported();

    public void openEvf(EvfStreamCallback var1);

    public void release();

    public void startMonitoring();

    public void startMovieRec(MovieRecCallback var1);

    public void stopMonitoring();

    public void stopMovieRec();

    public void takePicture(TakePictureCallback var1);
}

