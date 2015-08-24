/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.utility;

import android.os.Handler;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ReferenceClock {
    private static final String TAG;
    private long mElapsedTimeOffsetMillis;
    private long mInitialUptimeMillis;
    private boolean mIsMeasuring;
    private final TickCallback mTickCallback;
    private final TickEvent mTickEvent;
    private final Handler mTickHandler;
    private final long mTickInterval;

    static;

    public ReferenceClock();

    public ReferenceClock(Handler var1, TickCallback var2, long var3);

    static /* synthetic */ TickCallback access$100(ReferenceClock var0);

    static /* synthetic */ long access$200(ReferenceClock var0);

    static /* synthetic */ void access$300(ReferenceClock var0, long var1);

    private void cancelTickEvent();

    private long computeElapsedTime(long var1);

    private long computeElapsedTimeSinceInitialTime(long var1);

    private long now();

    private void scheduleNextTickEvent(long var1);

    public long elapsedTimeMillis();

    public boolean isMeasuring();

    public void reset(long var1);

    public void resume();

    public void start();

    public void stop();

    public static interface TickCallback {
        public void onTick(long var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class TickEvent
    implements Runnable {
        public long requestElapsedTime;
        final /* synthetic */ ReferenceClock this$0;

        private TickEvent(ReferenceClock var1);

        /* synthetic */ TickEvent(ReferenceClock var1,  var2);

        @Override
        public void run();
    }

}

