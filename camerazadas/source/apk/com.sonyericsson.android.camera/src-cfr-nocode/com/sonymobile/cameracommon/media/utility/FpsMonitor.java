/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.utility;

import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public class FpsMonitor {
    private long mHeadSampleTime;
    private final int mIntervalCount;
    private final List<Double> mResult;
    private int mSampleCount;

    public FpsMonitor(int var1);

    private void addResult(long var1);

    public void addSample(long var1);

    public String dump();

    public void reset();
}

