/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.gagtmhelper;

import android.util.Log;

public class GaGtmLog {
    private static volatile boolean mEnabled = false;
    private static final Object mLock = new Object();

    private GaGtmLog() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void d(String string, String string2) {
        Object object = mLock;
        synchronized (object) {
            if (mEnabled) {
                Log.d(string, string2);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void e(String string, String string2) {
        Object object = mLock;
        synchronized (object) {
            if (mEnabled) {
                Log.e(string, string2);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void enable(boolean bl) {
        Object object = mLock;
        synchronized (object) {
            mEnabled = bl;
            return;
        }
    }
}

