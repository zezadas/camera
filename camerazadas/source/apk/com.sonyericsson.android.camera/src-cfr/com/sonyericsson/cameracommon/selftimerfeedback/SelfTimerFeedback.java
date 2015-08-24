/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.selftimerfeedback;

import android.os.Handler;
import android.os.SystemClock;
import com.sonyericsson.cameracommon.selftimerfeedback.LedLight;

public class SelfTimerFeedback {
    private static final int SELF_TIMER_BLINK_DURATION = 100;
    private static final int[] SELF_TIMER_INTERVALS;
    private static final int[] SELF_TIMER_LEVELS;
    private static final int SELF_TIMER_LIGHT_MIN_INTERVAL = 250;
    private static final String TAG;
    private final int mDuration;
    private final Handler mHandler;
    private final LedLight mLedLight;
    private final Runnable mLedOffTask;
    private final PeriodicEvent.TickEvent mOnTickEvent;
    private final PeriodicEvent mPeriodicEvent;

    static {
        TAG = SelfTimerFeedback.class.getSimpleName();
        SELF_TIMER_LEVELS = new int[]{2000, 4000, 10000};
        SELF_TIMER_INTERVALS = new int[]{250, 500, 1000};
    }

    public SelfTimerFeedback(int n, LedLight ledLight) {
        this.mOnTickEvent = new PeriodicEvent.TickEvent(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onTick(long l) {
                l = (long)SelfTimerFeedback.this.mDuration - l;
                int n = 0;
                do {
                    if (n >= SELF_TIMER_LEVELS.length || l <= (long)SELF_TIMER_LEVELS[n]) {
                        int n2 = n;
                        if (n >= SELF_TIMER_LEVELS.length) {
                            n2 = SELF_TIMER_LEVELS.length - 1;
                        }
                        if (n2 == 0) {
                            SelfTimerFeedback.this.blink();
                            return;
                        } else {
                            if ((l - (long)SELF_TIMER_LEVELS[n2 - 1]) % (long)SELF_TIMER_INTERVALS[n2] != 0) return;
                            {
                                SelfTimerFeedback.this.blink();
                                return;
                            }
                        }
                    }
                    ++n;
                } while (true);
            }
        };
        this.mLedOffTask = new Runnable(){

            @Override
            public void run() {
                SelfTimerFeedback.this.mLedLight.turnOff();
            }
        };
        this.mDuration = n;
        this.mLedLight = ledLight;
        this.mHandler = new Handler();
        this.mPeriodicEvent = new PeriodicEvent(this.mHandler, this.mOnTickEvent, 250);
    }

    private void blink() {
        this.mLedLight.turnOn();
        this.mHandler.postDelayed(this.mLedOffTask, 100);
    }

    public void start(int n) {
        this.mPeriodicEvent.start(n);
    }

    public void stop() {
        this.mPeriodicEvent.stop();
        if (this.mHandler.hasCallbacks(this.mLedOffTask)) {
            this.mHandler.removeCallbacks(this.mLedOffTask);
        }
    }

    private static class PeriodicEvent {
        private final TickEvent mCallback;
        private long mCounter;
        private final Handler mHandler;
        private final long mInterval;
        private long mStartTime;
        private final Runnable mTickEvent;

        public PeriodicEvent(Handler handler, TickEvent tickEvent, long l) {
            this.mTickEvent = new Runnable(){

                @Override
                public void run() {
                    PeriodicEvent.this.mCallback.onTick(PeriodicEvent.this.mCounter * PeriodicEvent.this.mInterval);
                    PeriodicEvent.access$504(PeriodicEvent.this);
                    PeriodicEvent.this.scheduleNextTick();
                }
            };
            this.mHandler = handler;
            this.mCallback = tickEvent;
            this.mInterval = l;
        }

        static /* synthetic */ long access$504(PeriodicEvent periodicEvent) {
            long l;
            periodicEvent.mCounter = l = periodicEvent.mCounter + 1;
            return l;
        }

        private void scheduleNextTick() {
            this.mHandler.postAtTime(this.mTickEvent, this.mStartTime + this.mCounter * this.mInterval);
        }

        public void start(long l) {
            this.mStartTime = SystemClock.uptimeMillis() + l;
            this.mCounter = 0;
            this.scheduleNextTick();
        }

        public void stop() {
            this.mHandler.removeCallbacks(this.mTickEvent);
        }

        public static interface TickEvent {
            public void onTick(long var1);
        }

    }

}

