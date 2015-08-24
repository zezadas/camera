/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

public class DurationParameterSet {
    private static final String TAG = "DurationParameterSet";
    public int hour = 0;
    public int min = 0;
    public int sec = 0;

    public void update(int n) {
        this.sec = (n/=1000) % 60;
        n = (n - this.sec) / 60;
        this.min = n % 60;
        this.hour = (n - this.min) / 60;
    }
}

