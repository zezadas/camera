/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.photo;

import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import com.sonymobile.cameracommon.remotedevice.event.EventObserverCallback;
import com.sonymobile.cameracommon.remotedevice.photo.TakePictureCallback;
import com.sonymobile.cameracommon.remotedevice.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class TakePictureController {
    private static final boolean IS_DEBUG = false;
    private static final String TAG = TakePictureController.class.getSimpleName();
    private static final int TIMEOUT = 3000;
    private TakePictureCallback mCallback = null;
    private ExecutorService mCallbackExecutor = null;
    private ExecutorService mInternalExecutor = Executors.newSingleThreadExecutor(new InternalExecutorThreadFactory());
    private boolean mIsAlreadyCapturing = false;
    private MonitoringCallback mMonitoringCallback;
    private RemoteDevice mTargetRemDev = null;

    public TakePictureController(RemoteDevice remoteDevice, ExecutorService executorService) {
        this.mMonitoringCallback = new MonitoringCallback();
        if (remoteDevice == null || executorService == null) {
            throw new NullPointerException("All arguments must be NOT null.");
        }
        this.mTargetRemDev = remoteDevice;
        this.mCallbackExecutor = executorService;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void doTakePicture() {
        JSONObject jSONObject = null;
        Object var5_2 = null;
        JSONObject jSONObject2 = null;
        JSONObject jSONObject3 = this.mTargetRemDev.rpcActTakePicture();
        if (jSONObject3 == null) {
            Log.logError(TAG, "TakePicture failed. NULL result.");
        } else {
            Object object = RemoteDevice.getPostImageUrlFrom(jSONObject3);
            if (object == null) {
                Log.logError(TAG, "TakePicture failed. Post image URL is null.");
            } else {
                jSONObject2 = jSONObject;
                jSONObject3 = var5_2;
                try {
                    object = new BufferedInputStream(new URL((String)object).openStream());
                    jSONObject2 = jSONObject;
                    jSONObject3 = var5_2;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    jSONObject2 = jSONObject;
                    jSONObject3 = var5_2;
                    byte[] arrby = new byte[4096];
                    do {
                        jSONObject2 = jSONObject;
                        jSONObject3 = var5_2;
                        int n = object.read(arrby);
                        if (-1 == n) break;
                        jSONObject2 = jSONObject;
                        jSONObject3 = var5_2;
                        byteArrayOutputStream.write(arrby, 0, n);
                    } while (true);
                    jSONObject2 = jSONObject;
                    jSONObject3 = var5_2;
                    byteArrayOutputStream.flush();
                    jSONObject2 = jSONObject;
                    jSONObject3 = var5_2;
                    jSONObject2 = jSONObject = (JSONObject)byteArrayOutputStream.toByteArray();
                    jSONObject3 = jSONObject;
                    byteArrayOutputStream.close();
                    jSONObject2 = jSONObject;
                    jSONObject3 = jSONObject;
                    object.close();
                    jSONObject2 = jSONObject;
                }
                catch (MalformedURLException var3_6) {
                    Log.logError(TAG, "Post image URL is malformed.");
                    var3_6.printStackTrace();
                }
                catch (IOException var2_4) {
                    Log.logError(TAG, "Failed to download post image.");
                    var2_4.printStackTrace();
                    jSONObject2 = jSONObject3;
                }
            }
        }
        this.mCallbackExecutor.execute(new NotifyOnPictureTakenTask(this.mCallback, (byte[])jSONObject2));
        this.mIsAlreadyCapturing = false;
    }

    public MonitoringCallback getEventObserverCallback() {
        return this.mMonitoringCallback;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void release() {
        this.mInternalExecutor.shutdown();
        try {
            this.mInternalExecutor.awaitTermination(3000, TimeUnit.MILLISECONDS);
        }
        catch (InterruptedException var1_1) {
            Log.logError(TAG, "Release is interrupted.");
            var1_1.printStackTrace();
        }
        this.mCallback = null;
        this.mCallbackExecutor = null;
        this.mTargetRemDev = null;
        this.mInternalExecutor = null;
    }

    public void takePicture(TakePictureCallback takePictureCallback) {
        if (this.mIsAlreadyCapturing) {
            Log.logError(TAG, "Already in another capture sequence.");
            return;
        }
        this.mCallback = takePictureCallback;
        this.mIsAlreadyCapturing = true;
        this.mInternalExecutor.execute(new Runnable(){

            @Override
            public void run() {
                TakePictureController.this.doTakePicture();
            }
        });
    }

    private static final class InternalExecutorThreadFactory
    implements ThreadFactory {
        private InternalExecutorThreadFactory() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            runnable = new Thread(runnable);
            runnable.setName("Th:" + TAG);
            return runnable;
        }
    }

    private class MonitoringCallback
    implements EventObserverCallback {
        private MonitoringCallback() {
        }

        @Override
        public void onAvailableApiSetChanged(Set<String> set) {
        }

        @Override
        public void onCameraStatusChanged(String string) {
        }

        @Override
        public void onErrorStopped() {
        }

        @Override
        public void onShootModeChanged(String string) {
        }
    }

    private static abstract class NotifyCallbackBaseTask
    implements Runnable {
        protected final TakePictureCallback mCallback;

        public NotifyCallbackBaseTask(TakePictureCallback takePictureCallback) {
            if (takePictureCallback == null) {
                throw new NullPointerException("Callback must not be null.");
            }
            this.mCallback = takePictureCallback;
        }

        @Override
        public abstract void run();
    }

    private static class NotifyOnPictureTakenTask
    extends NotifyCallbackBaseTask {
        private final byte[] mJpegBuffer;

        public NotifyOnPictureTakenTask(TakePictureCallback takePictureCallback, byte[] arrby) {
            super(takePictureCallback);
            this.mJpegBuffer = arrby;
        }

        @Override
        public void run() {
            if (this.mCallback != null) {
                this.mCallback.onPictureTaken(this.mJpegBuffer);
            }
        }
    }

}

