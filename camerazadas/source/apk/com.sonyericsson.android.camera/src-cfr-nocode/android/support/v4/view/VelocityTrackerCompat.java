/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.VelocityTracker;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class VelocityTrackerCompat {
    static final VelocityTrackerVersionImpl IMPL;

    static;

    public VelocityTrackerCompat();

    public static float getXVelocity(VelocityTracker var0, int var1);

    public static float getYVelocity(VelocityTracker var0, int var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class BaseVelocityTrackerVersionImpl
    implements VelocityTrackerVersionImpl {
        BaseVelocityTrackerVersionImpl();

        @Override
        public float getXVelocity(VelocityTracker var1, int var2);

        @Override
        public float getYVelocity(VelocityTracker var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class HoneycombVelocityTrackerVersionImpl
    implements VelocityTrackerVersionImpl {
        HoneycombVelocityTrackerVersionImpl();

        @Override
        public float getXVelocity(VelocityTracker var1, int var2);

        @Override
        public float getYVelocity(VelocityTracker var1, int var2);
    }

    static interface VelocityTrackerVersionImpl {
        public float getXVelocity(VelocityTracker var1, int var2);

        public float getYVelocity(VelocityTracker var1, int var2);
    }

}

