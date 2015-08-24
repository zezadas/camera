/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class WakefulBroadcastReceiver
extends BroadcastReceiver {
    private static final String EXTRA_WAKE_LOCK_ID = "android.support.content.wakelockid";
    private static final SparseArray<PowerManager.WakeLock> mActiveWakeLocks;
    private static int mNextId;

    static;

    public WakefulBroadcastReceiver();

    public static boolean completeWakefulIntent(Intent var0);

    public static ComponentName startWakefulService(Context var0, Intent var1);
}

