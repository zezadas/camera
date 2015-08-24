/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.device;

import com.sonyericsson.cameracommon.utility.CameraLogger;

public class CameraExtensionVersion {
    private static int NOT_SUPPORTED = 0;
    private static final String TAG = "CameraExtensionVersion";
    private int mMajorVersion = NOT_SUPPORTED;
    private int mMinorVersion = NOT_SUPPORTED;

    static {
        NOT_SUPPORTED = -1;
    }

    public CameraExtensionVersion(String string) {
        try {
            String[] arrstring = string.split("\\.", 0);
            if (arrstring.length >= 2) {
                this.mMajorVersion = Integer.parseInt(arrstring[0]);
                this.mMinorVersion = Integer.parseInt(arrstring[1]);
                return;
            }
            if (arrstring.length == 1) {
                this.mMajorVersion = Integer.parseInt(arrstring[0]);
                this.mMinorVersion = 0;
                return;
            }
        }
        catch (NumberFormatException var2_3) {
            CameraLogger.e("CameraExtensionVersion", "version NumberFormatException:" + string, var2_3);
        }
    }

    public boolean isLaterThanOrEqualTo(int n, int n2) {
        if (!this.isSupported()) {
            return false;
        }
        if (this.mMajorVersion > n) {
            return true;
        }
        if (this.mMajorVersion == n) {
            if (this.mMinorVersion >= n2) {
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean isSupported() {
        if (this.mMajorVersion == NOT_SUPPORTED || this.mMinorVersion == NOT_SUPPORTED) {
            return false;
        }
        return true;
    }
}

