/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration.parameters;

public class UnsupportedSensorResolutionException
extends RuntimeException {
    private static final long serialVersionUID = -9181369815613920691L;

    public UnsupportedSensorResolutionException(int n) {
        super("Sensor which max picture width = " + n + " is not supported");
    }
}

