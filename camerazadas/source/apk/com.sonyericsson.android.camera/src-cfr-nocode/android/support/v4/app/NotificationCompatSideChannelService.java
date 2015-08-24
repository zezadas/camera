/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.app.INotificationSideChannel;

/*
 * Exception performing whole class analysis ignored.
 */
public abstract class NotificationCompatSideChannelService
extends Service {
    private static final int BUILD_VERSION_CODE_KITKAT_WATCH = 20;

    public NotificationCompatSideChannelService();

    static /* synthetic */ void access$100(NotificationCompatSideChannelService var0, int var1, String var2);

    private void checkPermission(int var1, String var2);

    public abstract void cancel(String var1, int var2, String var3);

    public abstract void cancelAll(String var1);

    public abstract void notify(String var1, int var2, String var3, Notification var4);

    @Override
    public IBinder onBind(Intent var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotificationSideChannelStub
    extends INotificationSideChannel.Stub {
        final /* synthetic */ NotificationCompatSideChannelService this$0;

        private NotificationSideChannelStub(NotificationCompatSideChannelService var1);

        /* synthetic */ NotificationSideChannelStub(NotificationCompatSideChannelService var1,  var2);

        @Override
        public void cancel(String var1, int var2, String var3) throws RemoteException;

        @Override
        public void cancelAll(String var1);

        @Override
        public void notify(String var1, int var2, String var3, Notification var4) throws RemoteException;
    }

}

