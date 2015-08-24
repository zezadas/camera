/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.support.v4.app.INotificationSideChannel;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class NotificationManagerCompat {
    public static final String ACTION_BIND_SIDE_CHANNEL = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL";
    public static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
    private static final Impl IMPL;
    private static final String SETTING_ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
    private static final int SIDE_CHANNEL_BIND_FLAGS;
    private static final int SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS = 1000;
    private static final int SIDE_CHANNEL_RETRY_MAX_COUNT = 6;
    private static final String TAG = "NotifManCompat";
    private static Set<String> sEnabledNotificationListenerPackages;
    private static String sEnabledNotificationListeners;
    private static final Object sEnabledNotificationListenersLock;
    private static final Object sLock;
    private static SideChannelManager sSideChannelManager;
    private final Context mContext;
    private final NotificationManager mNotificationManager;

    static;

    private NotificationManagerCompat(Context var1);

    static /* synthetic */ int access$000();

    public static NotificationManagerCompat from(Context var0);

    public static Set<String> getEnabledListenerPackages(Context var0);

    private void pushSideChannelQueue(Task var1);

    private static boolean useSideChannelForNotification(Notification var0);

    public void cancel(int var1);

    public void cancel(String var1, int var2);

    public void cancelAll();

    public void notify(int var1, Notification var2);

    public void notify(String var1, int var2, Notification var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class CancelTask
    implements Task {
        final boolean all;
        final int id;
        final String packageName;
        final String tag;

        public CancelTask(String var1);

        public CancelTask(String var1, int var2, String var3);

        @Override
        public void send(INotificationSideChannel var1) throws RemoteException;

        public String toString();
    }

    static interface Impl {
        public void cancelNotification(NotificationManager var1, String var2, int var3);

        public int getSideChannelBindFlags();

        public void postNotification(NotificationManager var1, String var2, int var3, Notification var4);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ImplBase
    implements Impl {
        ImplBase();

        @Override
        public void cancelNotification(NotificationManager var1, String var2, int var3);

        @Override
        public int getSideChannelBindFlags();

        @Override
        public void postNotification(NotificationManager var1, String var2, int var3, Notification var4);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ImplEclair
    extends ImplBase {
        ImplEclair();

        @Override
        public void cancelNotification(NotificationManager var1, String var2, int var3);

        @Override
        public void postNotification(NotificationManager var1, String var2, int var3, Notification var4);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ImplIceCreamSandwich
    extends ImplEclair {
        ImplIceCreamSandwich();

        @Override
        public int getSideChannelBindFlags();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class NotifyTask
    implements Task {
        final int id;
        final Notification notif;
        final String packageName;
        final String tag;

        public NotifyTask(String var1, int var2, String var3, Notification var4);

        @Override
        public void send(INotificationSideChannel var1) throws RemoteException;

        public String toString();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ServiceConnectedEvent {
        final ComponentName componentName;
        final IBinder iBinder;

        public ServiceConnectedEvent(ComponentName var1, IBinder var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class SideChannelManager
    implements Handler.Callback,
    ServiceConnection {
        private static final String KEY_BINDER = "binder";
        private static final int MSG_QUEUE_TASK = 0;
        private static final int MSG_RETRY_LISTENER_QUEUE = 3;
        private static final int MSG_SERVICE_CONNECTED = 1;
        private static final int MSG_SERVICE_DISCONNECTED = 2;
        private Set<String> mCachedEnabledPackages;
        private final Context mContext;
        private final Handler mHandler;
        private final HandlerThread mHandlerThread;
        private final Map<ComponentName, ListenerRecord> mRecordMap;

        public SideChannelManager(Context var1);

        private boolean ensureServiceBound(ListenerRecord var1);

        private void ensureServiceUnbound(ListenerRecord var1);

        private void handleQueueTask(Task var1);

        private void handleRetryListenerQueue(ComponentName var1);

        private void handleServiceConnected(ComponentName var1, IBinder var2);

        private void handleServiceDisconnected(ComponentName var1);

        private void processListenerQueue(ListenerRecord var1);

        private void scheduleListenerRetry(ListenerRecord var1);

        private void updateListenerMap();

        @Override
        public boolean handleMessage(Message var1);

        @Override
        public void onServiceConnected(ComponentName var1, IBinder var2);

        @Override
        public void onServiceDisconnected(ComponentName var1);

        public void queueTask(Task var1);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class ListenerRecord {
            public boolean bound;
            public final ComponentName componentName;
            public int retryCount;
            public INotificationSideChannel service;
            public LinkedList<Task> taskQueue;

            public ListenerRecord(ComponentName var1);
        }

    }

    private static interface Task {
        public void send(INotificationSideChannel var1) throws RemoteException;
    }

}

