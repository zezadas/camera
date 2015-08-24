/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.recordingindicator;

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
        if (this.hour > 9) {
            this.sec = 59;
            this.min = 59;
            this.hour = 9;
        }
    }
}

