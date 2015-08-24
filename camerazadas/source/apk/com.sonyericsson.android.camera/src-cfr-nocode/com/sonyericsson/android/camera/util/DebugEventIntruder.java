/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import android.content.Context;
import android.hardware.Camera;
import android.location.LocationListener;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class DebugEventIntruder
extends Thread {
    private static final String EVENT_DATA_FILENAME = "DebugEvent.dat";
    private static int EVENT_MAX = 0;
    private static int LOCATION_LISTENER_GPS = 0;
    private static int LOCATION_LISTENER_NET = 0;
    private static final String TAG = "DebugEventIntruder";
    private File mDebugEventDataFile;
    private Camera.ErrorCallback mListener;
    private LocationListener[] mLocationListeners;
    private String[] mLocationProviders;

    static;

    public DebugEventIntruder(Context var1);

    private void behaviour(InputStreamReader var1) throws IOException;

    private void checkFile();

    private int getEventData(InputStreamReader var1) throws IOException;

    private Double getExtraDataDouble(InputStreamReader var1) throws IOException;

    private Long getExtraDataLong(InputStreamReader var1) throws IOException;

    private void removeEvent();

    @Override
    public void run();

    public void setListener(Camera.ErrorCallback var1);

    public void setLocationListenerGps(LocationListener var1);

    public void setLocationListenerNet(LocationListener var1);

    public void startDebug();
}

