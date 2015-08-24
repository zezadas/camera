/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.utility;

import android.os.Handler;
import android.os.SystemClock;

public class ReferenceClock {
    private static final String TAG = ReferenceClock.class.getSimpleName();
    private long mElapsedTimeOffsetMillis;
    private long mInitialUptimeMillis;
    private boolean mIsMeasuring;
    private final TickCallback mTickCallback;
    private final TickEvent mTickEvent;
    private final Handler mTickHandler;
    private final long mTickInterval;

    public ReferenceClock() {
        this.mTickEvent = new TickEvent();
        this.mElapsedTimeOffsetMillis = 0;
        this.mInitialUptimeMillis = 0;
        this.mTickHandler = null;
        this.mTickCallback = null;
        this.mTickInterval = 0;
        this.mIsMeasuring = false;
    }

    public ReferenceClock(Handler handler, TickCallback tickCallback, long l) {
        this.mTickEvent = new TickEvent();
        this.mElapsedTimeOffsetMillis = 0;
        this.mInitialUptimeMillis = 0;
        this.mTickHandler = handler;
        this.mTickCallback = tickCallback;
        this.mTickInterval = l;
        this.mIsMeasuring = false;
        if (this.mTickInterval <= 0) {
            throw new IllegalArgumentException("tickIntervalMillis must be lager that 0.");
        }
    }

    private void cancelTickEvent() {
        if (this.mTickHandler != null) {
            this.mTickHandler.removeCallbacks(this.mTickEvent);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private long computeElapsedTime(long l) {
        synchronized (this) {
            long l2 = this.mElapsedTimeOffsetMillis;
            l = this.computeElapsedTimeSinceInitialTime(l);
            return l2 + l;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private long computeElapsedTimeSinceInitialTime(long l) {
        synchronized (this) {
            if (this.mIsMeasuring) {
                long l2 = this.mInitialUptimeMillis;
                return l - l2;
            }
            return 0;
        }
    }

    private long now() {
        return SystemClock.uptimeMillis();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void scheduleNextTickEvent(long l) {
        if (this.mTickHandler == null) {
            return;
        }
        synchronized (this) {
            if (this.mIsMeasuring) {
                l = this.computeElapsedTime(l) / this.mTickInterval;
                l = this.mTickEvent.requestElapsedTime = (1 + l) * this.mTickInterval;
                long l2 = this.mElapsedTimeOffsetMillis;
                this.mTickHandler.postAtTime(this.mTickEvent, this.mInitialUptimeMillis + (l - l2));
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long elapsedTimeMillis() {
        long l = this.now();
        synchronized (this) {
            return this.computeElapsedTime(l);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean isMeasuring() {
        synchronized (this) {
            return this.mIsMeasuring;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void reset(long l) {
        long l2 = this.now();
        synchronized (this) {
            this.mElapsedTimeOffsetMillis = l;
            this.mInitialUptimeMillis = l2;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void resume() {
        long l = this.now();
        synchronized (this) {
            if (!this.mIsMeasuring) {
                this.mInitialUptimeMillis = l;
                this.mIsMeasuring = true;
                this.scheduleNextTickEvent(l);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void start() {
        long l = this.now();
        synchronized (this) {
            this.mElapsedTimeOffsetMillis = 0;
            this.mInitialUptimeMillis = l;
            this.mIsMeasuring = true;
            this.scheduleNextTickEvent(l);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void stop() {
        long l = this.now();
        synchronized (this) {
            if (this.mIsMeasuring) {
                this.mElapsedTimeOffsetMillis+=this.computeElapsedTimeSinceInitialTime(l);
                this.mInitialUptimeMillis = 0;
                this.mIsMeasuring = false;
                this.cancelTickEvent();
            }
            return;
        }
    }

    public static interface TickCallback {
        public void onTick(long var1);
    }

    private class TickEvent
    implements Runnable {
        public long requestElapsedTime;

        private TickEvent() {
            this.requestElapsedTime = 0;
        }

        @Override
        public void run() {
            ReferenceClock.this.mTickCallback.onTick(this.requestElapsedTime);
            ReferenceClock.this.scheduleNextTickEvent(ReferenceClock.this.now());
        }
    }

}

