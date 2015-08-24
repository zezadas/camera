/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;

public abstract class WakefulBroadcastReceiver
extends BroadcastReceiver {
    private static final String EXTRA_WAKE_LOCK_ID = "android.support.content.wakelockid";
    private static final SparseArray<PowerManager.WakeLock> mActiveWakeLocks = new SparseArray();
    private static int mNextId = 1;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static boolean completeWakefulIntent(Intent cloneable) {
        int n = cloneable.getIntExtra("android.support.content.wakelockid", 0);
        if (n == 0) {
            return false;
        }
        cloneable = mActiveWakeLocks;
        synchronized (cloneable) {
            PowerManager.WakeLock wakeLock = mActiveWakeLocks.get(n);
            if (wakeLock != null) {
                wakeLock.release();
                mActiveWakeLocks.remove(n);
                return true;
            }
            Log.w("WakefulBroadcastReceiver", "No active wake lock id #" + n);
            return true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static ComponentName startWakefulService(Context object, Intent parcelable) {
        SparseArray<PowerManager.WakeLock> sparseArray = mActiveWakeLocks;
        synchronized (sparseArray) {
            int n = mNextId++;
            if (mNextId <= 0) {
                mNextId = 1;
            }
            parcelable.putExtra("android.support.content.wakelockid", n);
            parcelable = object.startService((Intent)parcelable);
            if (parcelable == null) {
                return null;
            }
            object = ((PowerManager)object.getSystemService("power")).newWakeLock(1, "wake:" + parcelable.flattenToShortString());
            object.setReferenceCounted(false);
            object.acquire(60000);
            mActiveWakeLocks.put(n, (PowerManager.WakeLock)object);
            return parcelable;
        }
    }
}

