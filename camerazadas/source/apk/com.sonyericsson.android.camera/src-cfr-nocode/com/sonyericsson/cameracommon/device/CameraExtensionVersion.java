/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.device;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraExtensionVersion {
    private static int NOT_SUPPORTED = 0;
    private static final String TAG = "CameraExtensionVersion";
    private int mMajorVersion;
    private int mMinorVersion;

    static;

    public CameraExtensionVersion(String var1);

    public boolean isLaterThanOrEqualTo(int var1, int var2);

    public boolean isSupported();
}

