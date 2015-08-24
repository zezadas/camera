/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.selftimerfeedback;

import android.os.Handler;
import com.sonyericsson.cameracommon.selftimerfeedback.LedLight;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    static;

    public SelfTimerFeedback(int var1, LedLight var2);

    static /* synthetic */ int access$000(SelfTimerFeedback var0);

    static /* synthetic */ int[] access$100();

    static /* synthetic */ void access$200(SelfTimerFeedback var0);

    static /* synthetic */ int[] access$300();

    static /* synthetic */ LedLight access$400(SelfTimerFeedback var0);

    private void blink();

    public void start(int var1);

    public void stop();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class PeriodicEvent {
        private final TickEvent mCallback;
        private long mCounter;
        private final Handler mHandler;
        private final long mInterval;
        private long mStartTime;
        private final Runnable mTickEvent;

        public PeriodicEvent(Handler var1, TickEvent var2, long var3);

        static /* synthetic */ long access$500(PeriodicEvent var0);

        static /* synthetic */ long access$504(PeriodicEvent var0);

        static /* synthetic */ long access$600(PeriodicEvent var0);

        static /* synthetic */ TickEvent access$700(PeriodicEvent var0);

        static /* synthetic */ void access$800(PeriodicEvent var0);

        private void scheduleNextTick();

        public void start(long var1);

        public void stop();

        public static interface TickEvent {
            public void onTick(long var1);
        }

    }

}

