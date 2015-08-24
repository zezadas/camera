/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.utility;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FpsMonitor {
    private long mHeadSampleTime;
    private final int mIntervalCount;
    private final List<Double> mResult = new ArrayList<Double>();
    private int mSampleCount;

    public FpsMonitor(int n) {
        this.mIntervalCount = n;
        this.mSampleCount = 0;
        this.mHeadSampleTime = 0;
    }

    private void addResult(long l) {
        double d = (double)(l - this.mHeadSampleTime) / 1.0E9;
        this.mResult.add((double)(this.mSampleCount - 1) / d);
    }

    public void addSample(long l) {
        ++this.mSampleCount;
        if (this.mSampleCount < this.mIntervalCount) {
            if (this.mSampleCount == 1) {
                this.mHeadSampleTime = l;
            }
            return;
        }
        this.addResult(l);
        this.mSampleCount = 0;
    }

    public String dump() {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator<Double> iterator = this.mResult.iterator();
        while (iterator.hasNext()) {
            double d = iterator.next();
            stringBuilder.append("" + d + ",");
        }
        return stringBuilder.toString();
    }

    public void reset() {
        this.mResult.clear();
        this.mSampleCount = 0;
        this.mHeadSampleTime = 0;
    }
}

