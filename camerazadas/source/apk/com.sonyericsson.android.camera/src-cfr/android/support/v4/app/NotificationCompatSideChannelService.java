/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.app.INotificationSideChannel;

public abstract class NotificationCompatSideChannelService
extends Service {
    private static final int BUILD_VERSION_CODE_KITKAT_WATCH = 20;

    private void checkPermission(int n, String string) {
        String[] arrstring = this.getPackageManager().getPackagesForUid(n);
        int n2 = arrstring.length;
        for (int i = 0; i < n2; ++i) {
            if (!arrstring[i].equals(string)) continue;
            return;
        }
        throw new SecurityException("NotificationSideChannelService: Uid " + n + " is not authorized for package " + string);
    }

    public abstract void cancel(String var1, int var2, String var3);

    public abstract void cancelAll(String var1);

    public abstract void notify(String var1, int var2, String var3, Notification var4);

    @Override
    public IBinder onBind(Intent intent) {
        if (!(intent.getAction().equals("android.support.BIND_NOTIFICATION_SIDE_CHANNEL") && Build.VERSION.SDK_INT < 20)) {
            return null;
        }
        return new NotificationSideChannelStub();
    }

    private class NotificationSideChannelStub
    extends INotificationSideChannel.Stub {
        private NotificationSideChannelStub() {
        }

        @Override
        public void cancel(String string, int n, String string2) throws RemoteException {
            NotificationCompatSideChannelService.this.checkPermission(NotificationSideChannelStub.getCallingUid(), string);
            long l = NotificationSideChannelStub.clearCallingIdentity();
            try {
                NotificationCompatSideChannelService.this.cancel(string, n, string2);
                return;
            }
            finally {
                NotificationSideChannelStub.restoreCallingIdentity(l);
            }
        }

        @Override
        public void cancelAll(String string) {
            NotificationCompatSideChannelService.this.checkPermission(NotificationSideChannelStub.getCallingUid(), string);
            long l = NotificationSideChannelStub.clearCallingIdentity();
            try {
                NotificationCompatSideChannelService.this.cancelAll(string);
                return;
            }
            finally {
                NotificationSideChannelStub.restoreCallingIdentity(l);
            }
        }

        @Override
        public void notify(String string, int n, String string2, Notification notification) throws RemoteException {
            NotificationCompatSideChannelService.this.checkPermission(NotificationSideChannelStub.getCallingUid(), string);
            long l = NotificationSideChannelStub.clearCallingIdentity();
            try {
                NotificationCompatSideChannelService.this.notify(string, n, string2, notification);
                return;
            }
            finally {
                NotificationSideChannelStub.restoreCallingIdentity(l);
            }
        }
    }

}

