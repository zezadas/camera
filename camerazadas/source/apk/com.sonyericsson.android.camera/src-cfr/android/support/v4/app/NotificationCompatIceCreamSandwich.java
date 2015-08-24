/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.RemoteViews;

class NotificationCompatIceCreamSandwich {
    NotificationCompatIceCreamSandwich() {
    }

    /*
     * Enabled aggressive block sorting
     */
    static Notification add(Context object, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int n, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int n2, int n3, boolean bl) {
        object = new Notification.Builder((Context)object).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        boolean bl2 = (notification.flags & 2) != 0;
        object = object.setOngoing(bl2);
        bl2 = (notification.flags & 8) != 0;
        object = object.setOnlyAlertOnce(bl2);
        bl2 = (notification.flags & 16) != 0;
        object = object.setAutoCancel(bl2).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent);
        if ((notification.flags & 128) != 0) {
            bl2 = true;
            return object.setFullScreenIntent(pendingIntent2, bl2).setLargeIcon(bitmap).setNumber(n).setProgress(n2, n3, bl).getNotification();
        }
        bl2 = false;
        return object.setFullScreenIntent(pendingIntent2, bl2).setLargeIcon(bitmap).setNumber(n).setProgress(n2, n3, bl).getNotification();
    }
}

