/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import android.content.Context;
import android.hardware.Camera;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

public final class DebugEventIntruder
extends Thread {
    private static final String EVENT_DATA_FILENAME = "DebugEvent.dat";
    private static int EVENT_MAX = 0;
    private static int LOCATION_LISTENER_GPS = 0;
    private static int LOCATION_LISTENER_NET = 0;
    private static final String TAG = "DebugEventIntruder";
    private File mDebugEventDataFile;
    private Camera.ErrorCallback mListener;
    private LocationListener[] mLocationListeners = new LocationListener[2];
    private String[] mLocationProviders = new String[2];

    static {
        EVENT_MAX = 16;
        LOCATION_LISTENER_GPS = 0;
        LOCATION_LISTENER_NET = 1;
    }

    public DebugEventIntruder(Context context) {
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private void behaviour(InputStreamReader var1_1) throws IOException {
        block20 : {
            block19 : {
                var3_5 = this.getEventData((InputStreamReader)var1_1);
                var2_6 = var3_5 / DebugEventIntruder.EVENT_MAX;
                var3_5%=DebugEventIntruder.EVENT_MAX;
                try {
                    var4_7 = this.mLocationListeners[var2_6];
                    var5_8 = this.mLocationProviders[var2_6];
                    if (var3_5 == 1) {
                        var4_7.onStatusChanged((String)var5_8, 2, null);
                        return;
                    } else {
                        ** GOTO lbl15
                    }
                }
                catch (RuntimeException var1_4) {
                    return;
                }
                catch (IOException var1_2) {
                    throw var1_2;
                }
lbl15: // 2 sources:
                if (var3_5 != 2) ** GOTO lbl19
                var4_7.onStatusChanged((String)var5_8, 1, null);
                return;
lbl19: // 1 sources:
                if (var3_5 == 3) {
                    var4_7.onStatusChanged((String)var5_8, 0, null);
                    return;
                }
                if (var3_5 == 4) {
                    var1_1 = new Location((String)var5_8);
                    var1_1.setLatitude(122.0);
                    var1_1.setLongitude(45.0);
                    var4_7.onLocationChanged((Location)var1_1);
                    return;
                }
                if (var3_5 == 5) {
                    var1_1 = new Location((String)var5_8);
                    var1_1.setLatitude(0.0);
                    var1_1.setLongitude(0.0);
                    var4_7.onLocationChanged((Location)var1_1);
                    return;
                }
                if (var3_5 != 6) ** GOTO lbl58
                var5_8 = new Location((String)var5_8);
                var6_9 = this.getExtraDataDouble((InputStreamReader)var1_1);
                if (var6_9 == null) {
                    var5_8.setLatitude(0.0);
                } else {
                    var5_8.setLatitude(var6_9);
                }
                if ((var6_9 = this.getExtraDataDouble((InputStreamReader)var1_1)) == null) {
                    var5_8.setLongitude(0.0);
                } else {
                    var5_8.setLongitude(var6_9);
                }
                if ((var6_9 = this.getExtraDataDouble((InputStreamReader)var1_1)) != null) break block19;
                break block20;
            }
            var5_8.setAltitude(var6_9);
        }
        if ((var1_1 = this.getExtraDataLong((InputStreamReader)var1_1)) != null) {
            var5_8.setTime(var1_1.longValue());
        }
        var4_7.onLocationChanged((Location)var5_8);
        return;
lbl58: // 1 sources:
        if (var3_5 != 0) return;
        if (this.mListener == null) return;
        this.mListener.onError(100, null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private void checkFile() {
        File[] arrfile = new File(Environment.getExternalStorageDirectory().getAbsolutePath()).listFiles();
        if (arrfile == null) {
            return;
        }
        int n = 0;
        do {
            if (n >= arrfile.length) {
                if (this.mDebugEventDataFile != null) return;
                return;
            }
            if (arrfile[n].isFile()) {
                try {
                    if (arrfile[n].getCanonicalPath().contains((CharSequence)"DebugEvent.dat")) {
                        this.mDebugEventDataFile = new File(arrfile[n].getAbsolutePath());
                    }
                }
                catch (IOException var3_3) {
                    var3_3.printStackTrace();
                }
            }
            ++n;
        } while (true);
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private int getEventData(InputStreamReader object) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        do {
            int n;
            if ((n = object.read()) == -1 || (char)n == '\n') {
                object = stringBuffer.toString();
                return Integer.parseInt((String)object);
            }
            stringBuffer.append((char)n);
        } while (true);
        catch (NumberFormatException numberFormatException) {
            return 0;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private Double getExtraDataDouble(InputStreamReader object) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        do {
            int n;
            if ((n = object.read()) == -1 || (char)n == '\n') {
                object = stringBuffer.toString();
                double d = Double.parseDouble((String)object);
                return d;
            }
            stringBuffer.append((char)n);
        } while (true);
        catch (NumberFormatException numberFormatException) {
            return null;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private Long getExtraDataLong(InputStreamReader object) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        do {
            int n;
            if ((n = object.read()) == -1 || (char)n == '\n') {
                object = stringBuffer.toString();
                long l = Long.parseLong((String)object);
                return l;
            }
            stringBuffer.append((char)n);
        } while (true);
        catch (NumberFormatException numberFormatException) {
            return null;
        }
    }

    private void removeEvent() {
        boolean bl = this.mDebugEventDataFile.delete();
        this.mDebugEventDataFile = null;
        if (!bl) {
            // empty if block
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    @Override
    public void run() {
        while (this.isInterrupted() == false) {
            try {
                Thread.sleep(100);
            }
            catch (InterruptedException var1_6) {}
            if (this.mDebugEventDataFile == null) {
                this.checkFile();
                continue;
            }
            if (!this.mDebugEventDataFile.exists()) continue;
            var4_18 = null;
            var5_19 = null;
            var2_11 = null;
            var3_16 = null;
            var1_1 = new InputStreamReader((InputStream)new FileInputStream(this.mDebugEventDataFile), "UTF-8");
            this.behaviour((InputStreamReader)var1_1);
            ** if (var1_1 == null) goto lbl35
lbl-1000: // 1 sources:
            {
                var1_1.close();
            }
            ** GOTO lbl35
            catch (UnsupportedEncodingException var1_2) {
                var1_1 = var3_16;
                ** GOTO lbl67
                catch (FileNotFoundException var1_3) {
                    var1_1 = var4_18;
                    ** GOTO lbl58
                    catch (IOException var1_4) {
                        var1_1 = var5_19;
                        ** GOTO lbl49
                        catch (Throwable var1_5) {}
                        ** GOTO lbl-1000
                        catch (IOException var1_7) {}
lbl35: // 3 sources:
                        this.removeEvent();
                        continue;
                        catch (Throwable var3_17) {
                            var2_11 = var1_1;
                            var1_1 = var3_17;
                        }
lbl-1000: // 2 sources:
                        {
                            if (var2_11 != null) {
                                try {
                                    var2_11.close();
                                }
                                catch (IOException var2_12) {}
                            }
                            this.removeEvent();
                            throw var1_1;
                        }
                        catch (IOException var2_13) {}
lbl49: // 2 sources:
                        if (var1_1 != null) {
                            try {
                                var1_1.close();
                            }
                            catch (IOException var1_10) {}
                        }
                        this.removeEvent();
                        continue;
                    }
                    catch (FileNotFoundException var2_14) {}
lbl58: // 2 sources:
                    if (var1_1 != null) {
                        try {
                            var1_1.close();
                        }
                        catch (IOException var1_9) {}
                    }
                    this.removeEvent();
                    continue;
                }
                catch (UnsupportedEncodingException var2_15) {}
lbl67: // 2 sources:
                if (var1_1 != null) {
                    try {
                        var1_1.close();
                    }
                    catch (IOException var1_8) {}
                }
                this.removeEvent();
                continue;
            }
        }
    }

    public void setListener(Camera.ErrorCallback errorCallback) {
        this.mListener = errorCallback;
    }

    public void setLocationListenerGps(LocationListener locationListener) {
        this.mLocationListeners[DebugEventIntruder.LOCATION_LISTENER_GPS] = locationListener;
        this.mLocationProviders[DebugEventIntruder.LOCATION_LISTENER_GPS] = "gps";
    }

    public void setLocationListenerNet(LocationListener locationListener) {
        this.mLocationListeners[DebugEventIntruder.LOCATION_LISTENER_NET] = locationListener;
        this.mLocationProviders[DebugEventIntruder.LOCATION_LISTENER_NET] = "network";
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void startDebug() {
        if (this.mDebugEventDataFile != null) return;
        try {
            this.start();
            return;
        }
        catch (Exception var1_1) {
            return;
        }
    }
}

