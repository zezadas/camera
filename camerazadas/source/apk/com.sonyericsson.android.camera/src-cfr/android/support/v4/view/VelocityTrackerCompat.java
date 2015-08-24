/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.os.Build;
import android.support.v4.view.VelocityTrackerCompatHoneycomb;
import android.view.VelocityTracker;

public class VelocityTrackerCompat {
    static final VelocityTrackerVersionImpl IMPL;

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            IMPL = new HoneycombVelocityTrackerVersionImpl();
            return;
        }
        IMPL = new BaseVelocityTrackerVersionImpl();
    }

    public static float getXVelocity(VelocityTracker velocityTracker, int n) {
        return IMPL.getXVelocity(velocityTracker, n);
    }

    public static float getYVelocity(VelocityTracker velocityTracker, int n) {
        return IMPL.getYVelocity(velocityTracker, n);
    }

    static class BaseVelocityTrackerVersionImpl
    implements VelocityTrackerVersionImpl {
        BaseVelocityTrackerVersionImpl() {
        }

        @Override
        public float getXVelocity(VelocityTracker velocityTracker, int n) {
            return velocityTracker.getXVelocity();
        }

        @Override
        public float getYVelocity(VelocityTracker velocityTracker, int n) {
            return velocityTracker.getYVelocity();
        }
    }

    static class HoneycombVelocityTrackerVersionImpl
    implements VelocityTrackerVersionImpl {
        HoneycombVelocityTrackerVersionImpl() {
        }

        @Override
        public float getXVelocity(VelocityTracker velocityTracker, int n) {
            return VelocityTrackerCompatHoneycomb.getXVelocity(velocityTracker, n);
        }

        @Override
        public float getYVelocity(VelocityTracker velocityTracker, int n) {
            return VelocityTrackerCompatHoneycomb.getYVelocity(velocityTracker, n);
        }
    }

    static interface VelocityTrackerVersionImpl {
        public float getXVelocity(VelocityTracker var1, int var2);

        public float getYVelocity(VelocityTracker var1, int var2);
    }

}

