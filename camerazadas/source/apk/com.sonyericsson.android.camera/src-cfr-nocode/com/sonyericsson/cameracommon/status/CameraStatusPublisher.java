/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import com.sonyericsson.cameracommon.status.CameraStatusValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class CameraStatusPublisher<T extends CameraStatusValue> {
    private static final String ACTION_CAMERA_STATUS_UPDATE = "com.sonymobile.cameracommon.action.CAMERA_STATUS_UPDATE";
    private static final String EXTRA_CAMERA_STATUS = "CAMERA_STATUS";
    private static final String PACKAGE = "com.sonymobile.cameracommon";
    private static final String TAG;
    private static volatile int sCameraCommonVersion;
    private final ContentValues mContentValues;
    private final Context mContext;

    static;

    CameraStatusPublisher(Context var1);

    static /* synthetic */ ContentValues access$000(CameraStatusPublisher var0);

    static /* synthetic */ void access$100(Context var0, ContentValues var1);

    private static int getCameraCommonVersion(PackageManager var0);

    private static void publish(Context var0, ContentValues var1);

    protected int getCameraCommonVersion();

    protected String keyPrefix();

    public void publish();

    public CameraStatusPublisher<T> put(T var1);

    public abstract CameraStatusPublisher<T> putDefaultAll();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Integrator {
        private final ContentValues mContentValues;
        private final Context mContext;

        public Integrator(Context var1);

        public <U extends CameraStatusValue> Integrator integrate(CameraStatusPublisher<U> var1);

        public void publish();
    }

}

