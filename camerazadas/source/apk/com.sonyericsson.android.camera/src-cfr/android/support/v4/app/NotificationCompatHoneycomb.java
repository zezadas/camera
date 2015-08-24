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

class NotificationCompatHoneycomb {
    NotificationCompatHoneycomb() {
    }

    /*
     * Enabled aggressive block sorting
     */
    static Notification add(Context object, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int n, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap) {
        object = new Notification.Builder((Context)object).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        boolean bl = (notification.flags & 2) != 0;
        object = object.setOngoing(bl);
        bl = (notification.flags & 8) != 0;
        object = object.setOnlyAlertOnce(bl);
        bl = (notification.flags & 16) != 0;
        object = object.setAutoCancel(bl).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent);
        if ((notification.flags & 128) != 0) {
            bl = true;
            return object.setFullScreenIntent(pendingIntent2, bl).setLargeIcon(bitmap).setNumber(n).getNotification();
        }
        bl = false;
        return object.setFullScreenIntent(pendingIntent2, bl).setLargeIcon(bitmap).setNumber(n).getNotification();
    }
}

