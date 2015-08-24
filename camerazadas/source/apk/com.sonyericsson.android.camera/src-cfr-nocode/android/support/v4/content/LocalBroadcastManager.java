/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class LocalBroadcastManager {
    private static final boolean DEBUG = false;
    static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    private static final String TAG = "LocalBroadcastManager";
    private static LocalBroadcastManager mInstance;
    private static final Object mLock;
    private final HashMap<String, ArrayList<ReceiverRecord>> mActions;
    private final Context mAppContext;
    private final Handler mHandler;
    private final ArrayList<BroadcastRecord> mPendingBroadcasts;
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> mReceivers;

    static;

    private LocalBroadcastManager(Context var1);

    static /* synthetic */ void access$000(LocalBroadcastManager var0);

    private void executePendingBroadcasts();

    public static LocalBroadcastManager getInstance(Context var0);

    public void registerReceiver(BroadcastReceiver var1, IntentFilter var2);

    public boolean sendBroadcast(Intent var1);

    public void sendBroadcastSync(Intent var1);

    public void unregisterReceiver(BroadcastReceiver var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class BroadcastRecord {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;

        BroadcastRecord(Intent var1, ArrayList<ReceiverRecord> var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ReceiverRecord {
        boolean broadcasting;
        final IntentFilter filter;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter var1, BroadcastReceiver var2);

        public String toString();
    }

}

