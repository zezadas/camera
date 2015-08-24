/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.VelocityTracker;

class VelocityTrackerCompatHoneycomb {
    VelocityTrackerCompatHoneycomb() {
    }

    public static float getXVelocity(VelocityTracker velocityTracker, int n) {
        return velocityTracker.getXVelocity(n);
    }

    public static float getYVelocity(VelocityTracker velocityTracker, int n) {
        return velocityTracker.getYVelocity(n);
    }
}

