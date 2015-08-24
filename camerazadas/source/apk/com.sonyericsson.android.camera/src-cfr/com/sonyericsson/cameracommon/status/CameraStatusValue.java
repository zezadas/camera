/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status;

import android.content.ContentValues;

public interface CameraStatusValue {
    public String getKey();

    public String getValueForDebug();

    public int minRequiredVersion();

    public void putInto(ContentValues var1, String var2);
}

